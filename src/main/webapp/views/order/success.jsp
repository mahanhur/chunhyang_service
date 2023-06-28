<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


    <!-- CONTENT -->
    <section class="py-12">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-12 col-md-10 col-lg-8 col-xl-6 text-center">

            <!-- Icon -->
            <div class="mb-7 fs-1">❤️</div>

            <!-- Heading -->
            <h2 class="mb-5">주문이 완료되었습니다!</h2>

            <!-- Text -->
            <p class="mb-7 text-gray-500">
              고객님의 주문 <span class="text-body text-decoration-underline">(주문번호: ${order_id})</span> 이 성공적으로 완료되었습니다.
              '마이페이지'에서 고객님의 주문을 확인 및 수정하실 수 있습니다!
            </p>

            <!-- Button -->
            <a class="btn btn-dark" href="/order/all?cust_id=${logincust.cust_id}">
              마이페이지
            </a>

          </div>
        </div>
      </div>
    </section>
