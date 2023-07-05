<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://nsp.pay.naver.com/sdk/js/naverpay.min.js"></script>
<script>
  let use_point = 0;
  let finalprice;
  let addr1;
  let addr2;
  let checkout = {
    init: function() {

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
      });

      $('#usepoint').change(function() {
        use_point = $('#usepoint').val();
        let finalPrice = ${totalprice} - use_point;
        $('#finalprice').html(finalPrice);
      });

      this.payment();
    },
    payment: function() {
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
        finalprice = $('#finalprice').html();
        IMP.request_pay({
          pg: "inicis",
          pay_method: "card",
          merchant_uid : 'merchant_'+new Date().getTime(),
          name : '춘향전 ${item.item_name}',
          amount : finalprice,
          buyer_email : '${logincust.email}',
          buyer_name : '${logincust.cust_name}',
          <c:set var="TextValue" value="${logincust.phone}"/>
          buyer_tel : '${fn:substring(TextValue,0,3)}-${fn:substring(TextValue,3,7)}-${fn:substring(TextValue,7,11)}',
          buyer_addr : '서울특별시 영등포구 여의도동',
          buyer_postcode : '03752'
        }, function (rsp) { // callback
          let addr_selected = $('.addr_selected option:selected').val();
          if (rsp.success) {
            var msg = '결제가 완료되었습니다.';
            alert(msg);
            location.href = "/order/success?item_id=${item.item_id}&order_amount=${totalprice}&user_point="+use_point+"&pay_amount="+finalprice+"&addr_id="+addr_selected+"&order_cnt=${inputcnt}"
          } else {
            let msg = rsp.error_msg;
            alert(msg);
            // location.href = "/subs/fail?msg="+msg;
            // 테스트용
            location.href = location.href = "/order/success?item_id=${item.item_id}&order_amount=${totalprice}&user_point="+use_point+"&pay_amount="+finalprice+"&addr_id="+addr_selected+"&order_cnt=${inputcnt}"
          }
        });
      });

    }
  };

  $(function() {
    $('#addr1').hide();
    $('#addr2').hide();
    checkout.init();
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

              <select class="form-select addr_selected" id="selectbox">
                <option selected>원하시는 배송지를 선택해주시기 바랍니다.</option>
                <c:forEach items="${addrlist}" var="obj" varStatus="status">
                  <option value="${obj.addr_id}">${obj.addr_name}</option>
                </c:forEach>
              </select>
              <ul class="list-group list-group-sm">
                <li class="list-group-item" id="addr1">주소1</li>
                <li class="list-group-item" id="addr2">주소2</li>
              </ul>
              <a href="#addrmodal" class="btn btn-sm w-30 btn-outline-dark" data-bs-toggle="modal">주소 추가</a>
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
                  <img src="/uimg/${item.item_img}" alt="..." class="img-fluid">
                </a>

              </div>
              <div class="col">

                <!-- Title -->
                <p class="mb-4 fs-sm fw-bold">
                  <a class="text-body" href="/item/detail?item_id=${item.item_id}">${item.item_name}</a> <br>
                  <span class="text-muted">가격: <fmt:formatNumber value="${item.item_price}" pattern="###,###원"/></span><br/>
                  <span class="text-muted">수량: ${inputcnt}</span>
                </p>

                <!-- Text -->
                <div class="fs-sm text-muted">
                  ${item.item_content}
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
              <c:set var="total" value="${total +(inputcnt * item.item_price)}"/>
              <li class="list-group-item d-flex">
                <span>주문금액</span> <span id="totalprice" class="ms-auto fs-sm">${total}</span>
              </li>
              <li class="list-group-item d-flex">
                <div>
                  <span>사용포인트</span><br/>
                  <span style="font-size: 12px;">(보유 포인트 : <span id="getpoint"><c:if test="${point == null}">0</c:if>${point}</span>)</span>
                </div>
                <input class="ms-auto fs-sm " id="usepoint" value="0"/>
              </li>
              <li class="list-group-item d-flex fs-lg fw-bold">
                <span>결제금액</span> <span class="ms-auto" id="finalprice">${total}</span>
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


<!-- addr Modal -->
<div class="modal fade" id="addrmodal" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">

      <!-- Close -->
      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
        <i class="fe fe-x" aria-hidden="true"></i>
      </button>

      <!-- Content -->
      <div class="row gx-0">
        <div class="col-12 d-flex flex-column px-md-8">

          <!-- Body -->
          <div class="modal-body my-auto py-10">

            <h6 class="mb-7">
              주소 추가하기
            </h6>

            <form id="addr_form">
              <div class="row">
                <div class="col-12">
                  <div class="form-group">
                    <label class="form-label" for="addr_name">주소지 이름 *</label>
                    <input class="form-control" id="addr_name" type="text" name="addr_name" placeholder="주소지 이름을 입력해주세요" required>
                  </div>
                </div>
                <div class="col-12">
                  <div class="form-group">
                    <input class="form-control btn-outline-secondary" type="button" onclick="sample4_execDaumPostcode()" value="주소 찾기">
                  </div>
                </div>
                <div class="col-12">
                  <div class="form-group">
                    <label class="form-label" for="addr_name">기본 주소 *</label>
                    <input class="form-control" id="sample4_roadAddress" name="def_addr1" type="text" placeholder="기본 주소를 입력해주세요">
                    <span id="guide" style="color:#999;display:none"></span>
                  </div>
                  <div class="form-group">
                    <label class="form-label" for="addr_name">상세 주소 *</label>
                    <input class="form-control" id="sample4_detailAddress" name="def_addr2" type="text" placeholder="상세 주소를 입력해주세요">
                  </div>
                </div>
              </div>


              <!-- Button -->
              <button class="btn btn-dark" type="button" id="addradd_btn">
                주소 추가
              </button>
            </form>

          </div>

        </div>
      </div>

    </div>

  </div>
</div>
<!-- addr Modal END-->