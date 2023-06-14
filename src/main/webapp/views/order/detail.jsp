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

        <!-- Order -->
        <div class="card card-lg mb-5 border">
          <div class="card-body pb-0">

            <!-- Info -->
            <div class="card card-sm">
              <div class="card-body bg-light">
                <div class="row">
                  <div class="col-6 col-lg-3">

                    <!-- Heading -->
                    <h6 class="heading-xxxs text-muted">주문번호 :</h6>

                    <!-- Text -->
                    <p class="mb-lg-0 fs-sm fw-bold">
                      ${order.order_id}
                    </p>

                  </div>
                  <div class="col-6 col-lg-3">

                    <!-- Heading -->
                    <h6 class="heading-xxxs text-muted">주문일자:</h6>

                    <!-- Text -->
                    <p class="mb-lg-0 fs-sm fw-bold">
                      <time datetime="2019-10-01">
                        ${order.order_date}
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
                      ${order.pay_amount}
                    </p>

                  </div>
                </div>
              </div>
            </div>

          </div>
          <div class="card-footer">

            <!-- Heading -->
            <h6 class="mb-7">주문상품</h6>

            <!-- Divider -->
            <hr class="my-5">

            <!-- List group -->
            <ul class="list-group list-group-lg list-group-flush-y list-group-flush-x">
              <c:forEach var="obj" items="${dlist}" varStatus="status">
              <li class="list-group-item">
                <div class="row align-items-center">
                  <div class="col-4 col-md-3 col-xl-2">

                    <!-- Image -->
                    <a href="product.html"><img src="/uimg/${obj.item_img}" alt="..." class="img-fluid"></a>

                  </div>
                  <div class="col">

                    <!-- Title -->
                    <p class="mb-4 fs-sm fw-bold">
                      <a class="text-body" href="product.html">${obj.item_name} x ${obj.order_cnt}</a> <br>
<%--                      <span class="text-muted">${obj.item_price}</span>--%>
                    </p>

                    <!-- Text -->
                    <div class="fs-sm text-muted">
                      Size: M <br>
                      Color: Red
                    </div>

                  </div>
                </div>
              </li>
              </c:forEach>
<%--              <li class="list-group-item">--%>
<%--                <div class="row align-items-center">--%>
<%--                  <div class="col-4 col-md-3 col-xl-2">--%>

<%--                    <!-- Image -->--%>
<%--                    <a href="product.html"><img src="assets/img/products/product-10.jpg" alt="..." class="img-fluid"></a>--%>

<%--                  </div>--%>
<%--                  <div class="col">--%>

<%--                    <!-- Title -->--%>
<%--                    <p class="mb-4 fs-sm fw-bold">--%>
<%--                      <a class="text-body" href="product.html">Suede cross body Bag x 1</a> <br>--%>
<%--                      <span class="text-muted">$49.00</span>--%>
<%--                    </p>--%>

<%--                    <!-- Text -->--%>
<%--                    <div class="fs-sm text-muted">--%>
<%--                      Color: Brown--%>
<%--                    </div>--%>

<%--                  </div>--%>
<%--                </div>--%>
<%--              </li>--%>

<%--              <li class="list-group-item">--%>
<%--                <div class="row align-items-center">--%>
<%--                  <div class="col-4 col-md-3 col-xl-2">--%>

<%--                    <!-- Image -->--%>
<%--                    <a href="product.html"><img src="assets/img/products/product-48.jpg" alt="..." class="img-fluid"></a>--%>

<%--                  </div>--%>
<%--                  <div class="col">--%>

<%--                    <!-- Title -->--%>
<%--                    <p class="mb-4 fs-sm fw-bold">--%>
<%--                      <a class="text-body" href="product.html">Sweatshirt with Pocket</a> <br>--%>
<%--                      <span class="text-muted">$39.00</span>--%>
<%--                    </p>--%>

<%--                    <!-- Text -->--%>
<%--                    <div class="fs-sm text-muted">--%>
<%--                      Size: L <br>--%>
<%--                      Color: Pink--%>
<%--                    </div>--%>

<%--                  </div>--%>
<%--                </div>--%>
<%--              </li>--%>
            </ul>

          </div>
        </div>

        <!-- Total -->
        <div class="card card-lg mb-5 border">
          <div class="card-body">

            <!-- Heading -->
            <h6 class="mb-7">Order Total</h6>

            <!-- List group -->
            <ul class="list-group list-group-sm list-group-flush-y list-group-flush-x">
              <li class="list-group-item d-flex">
                <span>주문금액</span>
                <span class="ms-auto">${order.order_amount}</span>
              </li>
              <li class="list-group-item d-flex">
                <span>Tax</span>
                <span class="ms-auto">$0.00</span>
              </li>
              <li class="list-group-item d-flex">
                <span>Shipping</span>
                <span class="ms-auto">$8.00</span>
              </li>
              <li class="list-group-item d-flex fs-lg fw-bold">
                <span>결제금액</span>
                <span class="ms-auto">${order.pay_amount}</span>
              </li>
            </ul>

          </div>
        </div>

        <!-- Details -->
        <div class="card card-lg border">
          <div class="card-body">

            <!-- Heading -->
            <h6 class="mb-7">Billing & Shipping Details</h6>

            <!-- Content -->
            <div class="row">
              <div class="col-12 col-md-4">

                <!-- Heading -->
                <p class="mb-4 fw-bold">
                  Billing Address:
                </p>

                <p class="mb-7 mb-md-0 text-gray-500">
                  Daniel Robinson, <br>
                  3997 Raccoon Run, <br>
                  Kingston, 45644, <br>
                  United States, <br>
                  6146389574
                </p>

              </div>
              <div class="col-12 col-md-4">

                <!-- Heading -->
                <p class="mb-4 fw-bold">
                  Shipping Address:
                </p>

                <p class="mb-7 mb-md-0 text-gray-500">
                  Daniel Robinson, <br>
                  3997 Raccoon Run, <br>
                  Kingston, 45644, <br>
                  United States, <br>
                  6146389574
                </p>

              </div>
              <div class="col-12 col-md-4">

                <!-- Heading -->
                <p class="mb-4 fw-bold">
                  Shipping Method:
                </p>

                <p class="mb-7 text-gray-500">
                  Standart Shipping <br>
                  (5 - 7 days)
                </p>

                <!-- Heading -->
                <p class="mb-4 fw-bold">
                  Payment Method:
                </p>

                <p class="mb-0 text-gray-500">
                  Debit Mastercard
                </p>

              </div>
            </div>

          </div>
        </div>

      </div>
    </div>
  </div>
</section>