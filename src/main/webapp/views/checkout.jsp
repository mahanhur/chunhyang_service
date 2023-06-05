<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://nsp.pay.naver.com/sdk/js/naverpay.min.js"></script>
<script>
  let checkout = {
    init: function() {
      // 카카오페이
      $('#kakaopay').click( function() {
        $.ajax({
          url:'/subs/kakaopay',
          dataType:'json',
          success: function(data) {
            let box = data.next_redirect_pc_url;
            window.open(box);
          },
          error: function(error) {
            alert(error);

          }
        });
      })

      // 네이버페이
      var oPay = Naver.Pay.create({
        "mode" : "development", // development or production
        "clientId": "u86j4ripEt8LRfPGzQ8", // clientId
        "chainId": "TDZSUHBoVGRFS2l" // chainId
      });
      $('#naverpay').click( function() {

          oPay.open({
            "merchantUserKey": "partner-userkey",
            "merchantPayKey": "partner-orderkey",
            "productName": "상품명",
            "totalPayAmount": "1000",
            "taxScopeAmount": "1000",
            "taxExScopeAmount": "0",
            "returnUrl": "사용자 결제 완료 후 결제 결과를 받을 URL",
            "openType":"popup"
          });
        });
      // kg이니시스
      $('#pay_btn').click( function() {
        const IMP = window.IMP; // 생략 가능
        IMP.init("imp66442787"); // 예: imp00000000a

        IMP.request_pay({
          pg: "inicis",
          pay_method: "card",
          merchant_uid : 'merchant_'+new Date().getTime(),
          name : '결제테스트',
          amount : 100,
          buyer_email : 'allowbasmh@gmail.com',
          buyer_name : '구매자',
          buyer_tel : '010-1234-5678',
          buyer_addr : '서울특별시 강남구 삼성동',
          buyer_postcode : '123-456'
        }, function (rsp) { // callback
          if (rsp.success) {
            var msg = '아임포트 결제가 완료되었습니다.';
            alert(msg);
            location.href = "/cust"
          } else {
            var msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
            alert(msg);
          }
        });
        });

      $('#selectbox').on("change", function() {
        $('#addr1').show();
        $('#addr2').show();
        let selectval = $("#selectbox").val();
        $.ajax({
          url:'/subs/checkout/addrimpl',
          method:'post',
          data: {addr_id : selectval},
          success: function(data) {
            $('#addr1').html(data.def_addr1);
            $('#addr2').html(data.def_addr2);
          },
          error: function(error) {
            alert(error);
        }
        });
      })
    }
  };

  $(function() {
    checkout.init();
    $('#addr1').hide();
    $('#addr2').hide();
  });
</script>



<section class="pt-7 pb-12">
  <div class="container">
    <div class="row">
      <div class="col-12 text-center">

        <!-- Heading -->
        <h3 class="mb-4">주문 / 결제</h3>

        <!-- Subheading -->
        <p class="mb-10">
        </p>

      </div>
    </div>
    <div class="row">
      <div class="col-12 col-md-7">

        <!-- Form -->
        <form>
<%-------------------------고객기본정보------------------------------------%>
          <!-- Heading -->
          <h6 class="mb-7">고객 기본정보</h6>

          <!-- Billing details -->
          <div class="row mb-9">
            <div class="col-12 col-md-6">

              <!-- First Name -->
              <div class="form-group">
                <label class="form-label" for="checkoutBillingFirstName">고객명</label>
                <input class="form-control form-control-sm" id="checkoutBillingFirstName" type="text" value="${logincust.cust_name}" required readonly>
              </div>

            </div>
            <div class="col-12 col-md-6">

              <!-- Last Name -->
              <div class="form-group">
                <label class="form-label" for="checkoutBillingLastName">아이디</label>
                <input class="form-control form-control-sm" id="checkoutBillingLastName" type="text" value="${logincust.cust_id}" required readonly>
              </div>

            </div>
            <div class="col-12">

              <!-- Email -->
              <div class="form-group">
                <label class="form-label" for="checkoutBillingEmail">이메일 *</label>
                <input class="form-control form-control-sm" id="checkoutBillingEmail" type="email" value="${logincust.email}" required readonly>
              </div>

            </div>
            <div class="col-12">

              <!-- Company Name -->
              <div class="form-group">
                <label class="form-label" for="checkoutBillingCompany">전화번호</label>
                <c:set var="TextValue" value="${logincust.phone}"/>
                <input class="form-control form-control-sm" id="checkoutBillingCompany" type="text" value="${fn:substring(TextValue,0,3)}-${fn:substring(TextValue,3,7)}-${fn:substring(TextValue,7,11)}" readonly>
              </div>

            </div>
            <div class="col-12">

            </div>
          </div>
<%----------------------고객기본정보 end---------------------------------------%>

<%-------------------------배송방법관련------------------------------------%>
          <!-- Heading -->
          <h6 class="mb-7">배송방법</h6>

          <!-- Billing details -->
            <!-- List group -->
            <div class="list-group list-group-sm mb-7">

              <div class="list-group-item">
                <!-- Radio -->
                <div class="form-check custom-radio">
                  <!-- Input -->
                  <input class="form-check-input" name="delmethod1" id="delmethod1" type="radio" checked>
                  <!-- Label -->
                  <label class="form-check-label fs-sm text-body text-nowrap" for="delmethod1">
                    택배배송
                  </label>
                </div>
              </div>

              <div class="list-group-item">
                <!-- Radio -->
                <div class="form-check custom-radio">
                  <!-- Input -->
                  <input class="form-check-input" name="delmethod2" id="delmethod2" type="radio" disabled>
                  <!-- Label -->
                  <label class="form-check-label fs-sm text-body text-nowrap" for="delmethod2">
                    퀵배송
                  </label>
                </div>
                  <div style="font-size: small"> (퀵배송을 원하시는 경우 결제 후 마이페이지에서 1:1문의 부탁드립니다.)</div>
              </div>

            </div>

<%----------------------배송방법관련 end---------------------------------------%>


<%-------------------------배송지 관련------------------------------------%>
          <!-- Heading -->
          <h6 class="mb-7">배송지 정보</h6>

          <!-- Billing details -->
            <!-- List group -->
            <div class="list-group list-group-sm mb-7">

              <select class="form-select" id="selectbox">
                <option selected>원하시는 배송지를 선택해주시기 바랍니다.</option>
                <c:forEach items="${addrlist}" var="obj" varStatus="status">
                  <option value="${obj.addr_id}">${obj.addr_name}</option>
                </c:forEach>
              </select>
              <ul class="list-group list-group-sm">
                <li class="list-group-item" id="addr1">주소1</li>
                <li class="list-group-item" id="addr2">주소2</li>
              </ul>
            </div>

            <p class="mb-7 fs-xs text-gray-500">
              배송지 정보는 결제 후 '마이페이지'에서 배송회차별로 변경/관리 하실 수 있습니다.
            </p>

<%----------------------배송지 관련 end---------------------------------------%>

        </form>
      </div>
<%----------------------right items---------------------------------------%>
      <div class="col-12 col-md-5 col-lg-4 offset-lg-1">

        <!-- Heading -->
        <h6 class="mb-7">주문/결제 정보</h6>

        <!-- Divider -->
        <hr class="my-7">

        <!-- List group -->
        <ul class="list-group list-group-lg list-group-flush-y list-group-flush-x mb-7">
          <li class="list-group-item">
            <div class="row align-items-center">
              <div class="col-4">

                <!-- Image -->
                <a href="product.html">
                  <img src="/uimg/${subsitem.subsitem_img}" alt="..." class="img-fluid">
                </a>

              </div>
              <div class="col">

                <!-- Title -->
                <p class="mb-4 fs-sm fw-bold">
                  <a class="text-body" href="/subs/detail?subsitem_id=${subsitem.subsitem_id}">${subsitem.subsitem_name}</a> <br>
                  <span class="text-muted">${subsitem.subsitem_price}</span>
                </p>

                <!-- Text -->
                <div class="fs-sm text-muted">
                  ${subsitem.subsitem_content}
                </div>

              </div>
            </div>
          </li>
        </ul>

<%--        gray box--%>
        <!-- Card -->
        <div class="card mb-9 bg-light">
          <div class="card-body">
            <ul class="list-group list-group-sm list-group-flush-y list-group-flush-x">
              <li class="list-group-item d-flex">
                <span>주문금액</span> <span class="ms-auto fs-sm">${subsitem.subsitem_price}</span>
              </li>
              <li class="list-group-item d-flex">
                <span>사용포인트</span> <button>포인트조회</button><span class="ms-auto fs-sm">0</span>
              </li>
              <li class="list-group-item d-flex fs-lg fw-bold">
                <span>결제금액</span> <span class="ms-auto">${subsitem.subsitem_price}</span>
              </li>
            </ul>
          </div>
        </div>

        <!-- Disclaimer -->
        <p class="mb-7 fs-xs text-gray-500">
          이용약관 및 개인정보 처리방침에 대해 확인하였으며 결제에 동의합니다.
        </p>

        <!-- Button -->
        <button class="btn w-100 btn-dark" id="pay_btn">결제</button><br/><br/>
        <ul class="list-group list-group-sm nav">
          <li class="list-group-item">간편결제</li>
          <li class="list-group-item"><button type="button" class="btn w-100 btn-outline-warning" id="kakaopay">KakaoPay</button></li>
          <li class="list-group-item"><button type="button" class="btn w-100 btn-outline-success" id="naverpay">NaverPay</button></li>
        </ul>




      </div>
    </div>
  </div>
</section>