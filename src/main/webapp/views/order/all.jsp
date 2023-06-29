<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<script>
  let subsinfo = {
    init: function() {
      this.click();
    },
    click: function() {
      $('.modala').click(function() {
        let order_id = $(this).data('orderid'); // data-subsid 속성 값 가져오기
        console.log(order_id);
        $.ajax({
          url: '/order/paymentimpl',
          method: 'post',
          data: {
            order_id: order_id
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
            My Account
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
        <h3 class="mb-10">주문 정보</h3>

      </div>
    </div>
    <div class="row">
      <div class="col-12 col-md-3">

        <!-- Nav -->
        <jsp:include page="/views/cust/leftnav.jsp"/>

      </div>
      <div class="col-12 col-md-9 col-lg-8 offset-lg-1">
        <c:if test="${empty olist}">
          <jsp:include page="/views/noinformation.jsp"/>
        </c:if>
        <c:forEach var="obj" items="${olist}" varStatus="status">
        <!-- Order -->
        <div class="card card-lg mb-5 border">
          <div class="card-body pb-0">

            <!-- Info -->
            <div class="card card-sm">
              <div class="card-body bg-light">
                <div class="row">
                  <div class="col-6 col-lg-3">

                    <!-- Heading -->
                    <h6 class="heading-xxxs text-muted">주문번호:</h6>

                    <!-- Text -->
                    <p class="mb-lg-0 fs-sm fw-bold">
                      ${obj.order_id}
                    </p>

                  </div>
                  <div class="col-6 col-lg-3">

                    <!-- Heading -->
                    <h6 class="heading-xxxs text-muted">주문일자:</h6>

                    <!-- Text -->
                    <p class="mb-lg-0 fs-sm fw-bold">
                      <time datetime="2019-10-01">
                        ${obj.order_date}
                      </time>
                    </p>

                  </div>
                  <div class="col-6 col-lg-3">

                    <!-- Heading -->
                    <h6 class="heading-xxxs text-muted">주문상태:</h6>

                    <!-- Text -->
                    <p class="mb-0 fs-sm fw-bold">
                      결제완료
                      <a href="#paymentmodal_${obj.order_id}" class="btn btn-outline-border btn-xxs modala" data-bs-toggle="modal" data-orderid=${obj.order_id}>상세</a>
                    </p>
                  </div>
                  <div class="col-6 col-lg-3">

                    <!-- Heading -->
                    <h6 class="heading-xxxs text-muted">결제금액:</h6>

                    <!-- Text -->
                    <p class="mb-0 fs-sm fw-bold">
                      <fmt:formatNumber value="${obj.pay_amount}" pattern="###,###원"/>
                     </p>

                  </div>
                </div>
              </div>
            </div>

          </div>
          <div class="card-footer">
            <div class="row align-items-center">
              <div class="col-12 col-lg-6">
                <div class="row gx-5 mb-4 mb-lg-0">
                  <c:forEach var="dobj" items="${odlist}" varStatus="status">
                    <c:if test="${obj.order_id == dobj.order_id}">
                  <div class="col-3">
<%--                  주문상품 사진--%>
                    <!-- Image -->
                    <div class="ratio ratio-1x1 bg-cover" style="background-image: url(/uimg/${dobj.item_img});"></div>
                  </div>
                    </c:if>
                  </c:forEach>
                </div>
              </div>
              <div class="col-12 col-lg-6">
                <div class="row gx-5">
                  <div class="col-6">

                    <!-- Orderdetail Button -->
                    <a class="btn btn-sm w-100 btn-outline-dark" href="/order/detail?order_id=${obj.order_id}">
                      주문상세
                    </a>

                  </div>
                  <div class="col-6">
                    <form action="http://info.sweettracker.co.kr/tracking/4" method="post">
                        <input type="hidden" class="form-control" id="t_key" name="t_key" value="dctplXlVqmOW07OrDvmRTg">
                        <input type="hidden" class="form-control" name="t_code" id="t_code" value="04"> <!--택배사 04대한통운 01우체국-->
                        <input type="hidden" class="form-control" name="t_invoice" id="t_invoice" value="655649541321"> <!--운송장번호입력-->
                      <!-- Button -->
                      <button class="btn btn-sm w-100 btn-outline-dark" type="submit">
                        배송상태
                      </button>
                    </form>
                  </div>
                </div>

              </div>
            </div>
          </div>
        </div>
          <!-- 결제정보상세 modal-->
          <div class="modal fade" id="paymentmodal_${obj.order_id}" tabindex="-1" role="dialog" aria-hidden="true">
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
                    <img class="img-fluid" src="/uimg/a" alt="...">

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
                        ${obj.order_date}
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

        </c:forEach>

        <!-- Pagination -->
        <nav class="d-flex justify-content-center justify-content-md-end mt-10">
          <ul class="pagination pagination-sm text-gray-400">
            <li class="page-item">
              <a class="page-link page-link-arrow" href="#">
                <i class="fa fa-caret-left"></i>
              </a>
            </li>
            <li class="page-item active">
              <a class="page-link" href="#">1</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">2</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">3</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">4</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">5</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">6</a>
            </li>
            <li class="page-item">
              <a class="page-link page-link-arrow" href="#">
                <i class="fa fa-caret-right"></i>
              </a>
            </li>
          </ul>
        </nav>

      </div>
    </div>
  </div>
</section>