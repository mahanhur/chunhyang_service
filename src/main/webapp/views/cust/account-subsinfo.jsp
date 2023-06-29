<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script>
  let subsinfo = {
    init: function() {
      this.click();
    },
    click: function() {
      $('.modala').click(function() {
        let subs_id = $(this).data('subsid'); // data-subsid 속성 값 가져오기
        $.ajax({
          url: '/cust/paymentimpl',
          method: 'post',
          data: {
            subs_id: subs_id
          },
          success: function(data) {
            $('.modalp1').html(data.pay_id);
            switch (data.pay_opt) {
              case 1 :
                $('.modalp2').html("신용/체크카드");
                break;
              case 2 :
                $('.modalp2').html("페이 간편결제");
                break;
              case 3 :
                $('.modalp2').html("무통장입금");
                break;
            }
            switch (data.pay_state) {
              case 1 :
                $('.modalp3').html("결제완료");
                break;
              case 2 :
                $('.modalp3').html("미결제");
                break;
              case 3 :
                $('.modalp3').html("환불");
                break;
            }
          }
        });
      })
    }
  };

  $(function() {
    subsinfo.init();
  });
</script>


<!-- BREADCRUMB -->
<nav class="py-5">
  <div class="container">
    <div class="row">
      <div class="col-12">

        <!-- Breadcrumb -->
        <ol class="breadcrumb mb-0 fs-xs text-gray-400">
          <li class="breadcrumb-item">
            <a class="text-gray-400" href="/">Home</a>
          </li>
          <li class="breadcrumb-item active">
            구독 정보
          </li>
        </ol>

      </div>
    </div>
  </div>
</nav>

<!-- CONTENT -->
<section class="pt-7 pb-12">
  <div class="container">
    <div class="row">
      <div class="col-12 text-center">

        <!-- Heading -->
        <h3 class="mb-10">구독 정보</h3>

      </div>
    </div>
    <div class="row">
      <div class="col-12 col-md-3">

        <!-- Nav -->
        <jsp:include page="/views/cust/leftnav.jsp"/>

      </div>


      <div class="col-12 col-md-9 col-lg-8 offset-lg-1">
        <c:if test="${empty slist}">
        <jsp:include page="/views/noinformation.jsp"/>
        </c:if>
      <c:forEach items="${slist}" var="obj" varStatus="status">

        <!-- Order -->
        <div class="card card-lg mb-5 border">
          <div class="card-body pb-0">

            <!-- Info -->
            <div class="card card-sm">
              <div class="card-body bg-light">
                <div class="row">
                  <div class="col-6 col-lg-3">

                    <!-- Heading -->
                    <h6 class="heading-xxxs text-muted">구독번호 :</h6>

                    <!-- Text -->
                    <p class="mb-lg-0 fs-sm fw-bold psubs_id">
                      ${obj.subs_id}
                    </p>

                  </div>
                  <div class="col-6 col-lg-3">

                    <!-- Heading -->
                    <h6 class="heading-xxxs text-muted">구독 신청일 :</h6>

                    <!-- Text -->
                    <p class="mb-lg-0 fs-sm fw-bold">
                      <time datetime="2019-10-01">
                        ${obj.subs_rdate}
                      </time>
                    </p>

                  </div>
                  <div class="col-6 col-lg-3">

                    <!-- Heading -->
                    <h6 class="heading-xxxs text-muted">사용포인트 :</h6>

                    <!-- Text -->
                    <p class="mb-0 fs-sm fw-bold">
                      <fmt:formatNumber value="${obj.minus_point}" pattern="#,### pt"/>
                    </p>

                  </div>
                  <div class="col-6 col-lg-3">

                    <!-- Heading -->
                    <h6 class="heading-xxxs text-muted">결제금액 :</h6>

                    <!-- Text -->
                    <p class="mb-0 fs-sm fw-bold">
                        <fmt:formatNumber value="${obj.subs_pay_amount}" pattern="#,###원"/>
                    </p>

                  </div>
                </div>
              </div>
            </div>

          </div>
          <div class="card-footer">

            <!-- Heading -->
            <h6 class="mb-7">구독 신청상품</h6>

            <!-- Divider -->
            <hr class="my-5">

            <c:forEach items="${ilist}" var="iobj">
              <c:if test="${iobj.subsitem_id == obj.subsitem_id}">
            <!-- List group -->
            <ul class="list-group list-group-lg list-group-flush-y list-group-flush-x">
              <li class="list-group-item">
                <div class="row align-items-center">
                  <div class="col-4 col-md-3 col-xl-2">

                    <!-- Image -->
                    <a href="/subs/detail?subsitem_id=${iobj.subsitem_id}"><img src="/uimg/${iobj.subsitem_img}" alt="..." class="img-fluid"></a>

                  </div>
                  <div class="col">

                    <!-- Title -->
                    <p class="mb-4 fs-sm fw-bold">
                      <a class="text-body" href="/subs/detail?subsitem_id=${iobj.subsitem_id}">${iobj.subsitem_name}</a> <br>
                      <span class="text-muted"><fmt:formatNumber value="${iobj.subsitem_price}" pattern="#,###원"/></span>
                    </p>

                    <!-- Text -->
                    <div class="fs-sm text-muted">
                        ${iobj.subsitem_content}
                    </div>

                  </div>
                </div>
              </li>
            </ul>
                <hr/>
          <a href="/cust/account-subsdetail?cust_id=${logincust_custid}" class="btn btn-sm w-30 btn-outline-dark">배송정보상세</a>
                <a href="#paymentmodal_${obj.subs_id}" class="btn btn-sm w-30 btn-outline-dark modala" data-bs-toggle="modal" data-subsid="${obj.subs_id}">결제정보상세</a>



                <!-- 결제정보상세 modal-->
                <div class="modal fade" id="paymentmodal_${obj.subs_id}" tabindex="-1" role="dialog" aria-hidden="true">
                  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                    <div class="modal-content">

                      <!-- Close -->
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                        <i class="fe fe-x" aria-hidden="true"></i>
                      </button>

                      <!-- Content -->
                      <div class="row gx-0">
                        <div class="col-12 col-lg-5">

                          <!-- Image -->
                          <img class="img-fluid" src="/uimg/${iobj.subsitem_img}" alt="...">

                        </div>
                        <div class="col-12 col-lg-7 d-flex flex-column px-md-8">

                          <!-- Body -->
                          <div class="modal-body my-auto py-10" style="font-size:75%;">

                            <!-- Heading -->
                            <h4>결제정보 상세</h4>

                            <!-- Text -->
                            결제번호:<p class="mb-7 fs-lg modalp1">
                            </p>
                            결제일:<p class="mb-7 fs-lg">
                              ${obj.subs_rdate}
                            </p>
                            결제수단:<p class="mb-7 fs-lg modalp2">
                            </p>
                            결제상태:<p class="mb-7 fs-lg modalp3">
                            </p>
                          </div>

                        </div>
                      </div>

                    </div>

                  </div>
                </div>
<%--                modal end--%>

              </c:if>
            </c:forEach>

          </div>

        </div>
        <br/>

      </c:forEach>
      </div>
    </div>
  </div>
</section>