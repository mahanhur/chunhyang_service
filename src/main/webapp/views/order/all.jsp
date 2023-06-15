<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

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
        <c:forEach var="obj" items="${olist}" varStatus="status" >
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
                    </p>

                  </div>
                  <div class="col-6 col-lg-3">

                    <!-- Heading -->
                    <h6 class="heading-xxxs text-muted">결제금액:</h6>

                    <!-- Text -->
                    <p class="mb-0 fs-sm fw-bold">
                      ${obj.pay_amount}
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
                  <div class="col-3">
<%--                  주문상품 사진--%>
                    <!-- Image -->
                    <div class="ratio ratio-1x1 bg-cover" style="background-image: url(/assets/img/products/product-5.jpg);"></div>

                  </div>
                  <div class="col-3">

                    <!-- Image -->
                    <div class="ratio ratio-1x1 bg-cover" style="background-image: url(/assets/img/products/product-112.jpg);"></div>

                  </div>
                  <div class="col-3">

                    <!-- Image -->
                    <div class="ratio ratio-1x1 bg-cover" style="background-image: url(/assets/img/products/product-7.jpg);"></div>

                  </div>
                  <div class="col-3">

                    <!-- Image -->
                    <div class="ratio ratio-1x1 bg-light">
                      <a class="ratio-item ratio-item-text text-reset" href="#!">
                        <div class="fs-xxs fw-bold">
                          +2 <br> more
                        </div>
                      </a>
                    </div>

                  </div>
                </div>
              </div>
              <div class="col-12 col-lg-6">
                <div class="row gx-5">
                  <div class="col-6">

                    <!-- Orderdetail Button -->
                    <a class="btn btn-sm w-100 btn-outline-dark" href="/order/detail?order_id=${obj.order_id}">
                      Order Details
                    </a>

                  </div>
                  <div class="col-6">

                    <!-- Button -->
                    <a class="btn btn-sm w-100 btn-outline-dark" href="#!">
                      Track order
                    </a>

                  </div>
                </div>

              </div>
            </div>
          </div>
        </div>
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