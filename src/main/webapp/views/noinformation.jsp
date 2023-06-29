<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<script>
</script>

<section class="py-12">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-md-10 col-lg-8 col-xl-6 text-center">

                <!-- Icon -->
                <div class="mb-7 fs-1">😥️</div>

                <!-- Heading -->
                <h2 class="mb-5">정보가 없습니다.</h2>

                <!-- Text -->
                <p class="mb-7 text-gray-500">
                </p>

                <!-- Button -->
                <a class="btn btn-dark" href="/order/all?cust_id=${logincust.cust_id}">
                    마이페이지로 돌아가기
                </a>

            </div>
        </div>
    </div>
</section>