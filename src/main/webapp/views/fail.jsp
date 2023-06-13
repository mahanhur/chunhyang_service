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
            <div class="mb-7 fs-1">😤</div>

            <!-- Heading -->
            <h2 class="mb-5">주문에 실패했습니다.</h2>

            <!-- Text -->
            <p class="mb-7 text-gray-500">
              고객님의 주문이 (${msg})의 사유로 인해 완료되지 않았습니다.
              주문을 다시 시도해주시기 바랍니다.
            </p>

          </div>
        </div>
      </div>
    </section>
