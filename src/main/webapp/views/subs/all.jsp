<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<!-- HEADER -->
<header class="py-13 jarallax" data-jarallax data-speed=".8" style="background-image: url(/uimg/subs03.jpg);">
  <div class="container">
    <div class="row">
      <div class="col-12">

        <!-- Heading -->
        <h3 class="text-center text-white">일상을 행복으로, 생화 정기구독</h3>

        <!-- Breadcrumb -->
        <ol class="breadcrumb justify-content-center mb-0 text-center text-white fs-xs">
          <li class="breadcrumb-item">
            <a class="text-reset" href="/subs/subscribe">소개페이지로💐</a>
          </li>
        </ol>

      </div>
    </div>
  </div>
</header>

<!-- FILTERS -->
<section class="py-7 border-bottom">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-12 col-md">

        <!-- Categories -->
        <nav class="nav nav-overflow mb-6 mb-md-0">
          <a class="nav-link active" data-bs-toggle="tab" href="#">전체</a>
        </nav>

      </div>
    </div>
  </div>
</section>

<!-- CONTENT -->
<section class="py-12">
  <div class="container">
    <div class="row">
<%--    <div class="col-6 col-sm-6 col-md-4 col-lg-3">--%>

<c:forEach var="obj" items="${slist}" varStatus="status">
      <div class="col-6 col-md-3 col-lg">

        <!-- Card -->
        <div class="card mb-7" data-toggle="card-collapse">

          <!-- Image -->
          <a href="/subs/detail?subsitem_id=${obj.subsitem_id}">
            <img src="/uimg/${obj.subsitem_img}" alt="..." class="card-img-top">
          </a>

          <!-- Collapse -->
          <div class="card-collapse-parent">

            <!-- Body -->
            <div class="card-body px-0 bg-white text-center">

              <!-- Heading -->
              <div class="mb-1 fw-bold">
                <a class="text-body" href="#">${obj.subsitem_name}</a>
              </div>

              <!-- Price -->
              <div class="mb-1 fw-bold text-muted">
                <fmt:formatNumber value="${obj.subsitem_price}" pattern="###,###원"/>
              </div>


            </div>

            <!-- Footer -->
            <div class="card-collapse collapse">
              <div class="card-footer px-0 pt-0 bg-white text-center">
                <div style="color:gray; font-size:14px;">
                  <c:choose>
                    <c:when test="${obj.subsitem_id == 106 || obj.subsitem_id == 107}">${obj.subsitem_content}</c:when>
                    <c:otherwise><fmt:formatNumber value="${obj.subsitem_cnt / 2}" pattern="0개월"/>/ 2주마다 / 총 ${obj.subsitem_cnt}회</c:otherwise>
                  </c:choose>
                </div>
                <a href="/subs/detail?subsitem_id=${obj.subsitem_id}" class="btn btn-sm btn-outline-primary">
                  <i class="fe fe-check-square"> 신청하기</i>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
  <c:if test="${status.count % 3 == 0}">
    <div class="w-100 d-none d-lg-block"></div>
  </c:if>
</c:forEach>
    </div>
  </div>
</section>

