<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://nsp.pay.naver.com/sdk/js/naverpay.min.js"></script>
<script>
  let checkout = {
    init: function() {
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
      var oPay = Naver.Pay.create({
        "mode" : "production", // development or production
        "clientId": "u86j4ripEt8LRfPGzQ8", // clientId
        "chainId": "TDZSUHBoVGRFS2l" // chainId
      });
      $('#naverpay').click( function() {

          oPay.open({
            "merchantUserKey": "가맹점 사용자 식별키",
            "merchantPayKey": "가맹점 주문 번호",
            "productName": "상품명",
            "totalPayAmount": "1000",
            "taxScopeAmount": "1000",
            "taxExScopeAmount": "0",
            "returnUrl": "사용자 결제 완료 후 결제 결과를 받을 URL"
          });
        });
    }
  };

  $(function() {
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

          <!-- Heading -->
          <h6 class="mb-7">결제수단</h6>

          <!-- List group -->
          <div class="list-group list-group-sm mb-7">
            <div class="list-group-item">

              <!-- Radio -->
              <div class="form-check custom-radio">

                <!-- Input -->
                <input class="form-check-input" id="checkoutPaymentCard" name="payment" type="radio" data-collapse="show" data-target="#checkoutPaymentCardCollapse">

                <!-- Label -->
                <label class="form-check-label fs-sm text-body text-nowrap" for="checkoutPaymentCard">
                  간편결제
                </label>

              </div>

            </div>
            <div class="list-group-item collapse py-0" id="checkoutPaymentCardCollapse">

              <!-- Form -->
              <div class="row gx-5 py-5">
                <div class="col-3">
                  <div class="form-group mb-4">
                    <button type="button" class="btn btn-outline-warning" id="kakaopay">KakaoPay</button>
                  </div>
                </div>
                <div class="col-3">
                  <div class="form-group mb-4">
                    <button type="button" class="btn btn-outline-success" id="naverpay">NaverPay</button>
                  </div>
                </div>
              </div>

            </div>
            <div class="list-group-item">

              <!-- Radio -->
              <div class="form-check custom-radio">

                <!-- Input -->
                <input class="form-check-input" id="checkoutPaymentPaypal" name="payment" type="radio" data-collapse="hide" data-target="#checkoutPaymentCardCollapse">

                <!-- Label -->
                <label class="form-check-label fs-sm text-body text-nowrap" for="checkoutPaymentPaypal">
                  카드결제
                </label>

              </div>

            </div>
          </div>

          <!-- Notes -->
          <textarea class="form-control form-control-sm mb-9 mb-md-0 fs-xs" rows="5" placeholder="Order Notes (optional)"></textarea>

        </form>

      </div>
      <div class="col-12 col-md-5 col-lg-4 offset-lg-1">

        <!-- Heading -->
        <h6 class="mb-7">Order Items (3)</h6>

        <!-- Divider -->
        <hr class="my-7">

        <!-- List group -->
        <ul class="list-group list-group-lg list-group-flush-y list-group-flush-x mb-7">
          <li class="list-group-item">
            <div class="row align-items-center">
              <div class="col-4">

                <!-- Image -->
                <a href="product.html">
                  <img src="assets/img/products/product-6.jpg" alt="..." class="img-fluid">
                </a>

              </div>
              <div class="col">

                <!-- Title -->
                <p class="mb-4 fs-sm fw-bold">
                  <a class="text-body" href="product.html">Cotton floral print Dress</a> <br>
                  <span class="text-muted">$40.00</span>
                </p>

                <!-- Text -->
                <div class="fs-sm text-muted">
                  Size: M <br>
                  Color: Red
                </div>

              </div>
            </div>
          </li>
          <li class="list-group-item">
            <div class="row align-items-center">
              <div class="col-4">

                <!-- Image -->
                <a href="product.html">
                  <img src="assets/img/products/product-10.jpg" alt="..." class="img-fluid">
                </a>

              </div>
              <div class="col">

                <!-- Title -->
                <p class="mb-4 fs-sm fw-bold">
                  <a class="text-body" href="product.html">Suede cross body Bag</a> <br>
                  <span class="text-muted">$49.00</span>
                </p>

                <!-- Text -->
                <div class="fs-sm text-muted">
                  Color: Brown
                </div>

              </div>
            </div>
          </li>
        </ul>

        <!-- Card -->
        <div class="card mb-9 bg-light">
          <div class="card-body">
            <ul class="list-group list-group-sm list-group-flush-y list-group-flush-x">
              <li class="list-group-item d-flex">
                <span>Subtotal</span> <span class="ms-auto fs-sm">$89.00</span>
              </li>
              <li class="list-group-item d-flex">
                <span>Tax</span> <span class="ms-auto fs-sm">$00.00</span>
              </li>
              <li class="list-group-item d-flex">
                <span>Shipping</span> <span class="ms-auto fs-sm">$8.00</span>
              </li>
              <li class="list-group-item d-flex fs-lg fw-bold">
                <span>Total</span> <span class="ms-auto">$97.00</span>
              </li>
            </ul>
          </div>
        </div>

        <!-- Disclaimer -->
        <p class="mb-7 fs-xs text-gray-500">
          Your personal data will be used to process your order, support
          your experience throughout this website, and for other purposes
          described in our privacy policy.
        </p>

        <!-- Button -->
        <button class="btn w-100 btn-dark">
          Place Order
        </button>

      </div>
    </div>
  </div>
</section>