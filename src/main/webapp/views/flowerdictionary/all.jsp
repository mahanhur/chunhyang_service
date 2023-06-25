<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCnKt8_N4-FKOnhI_pSaDL7g_g-XI1-R9E"></script>
<script src="./assets/js/vendor.bundle.js"></script>
<script src="./assets/js/theme.bundle.js"></script>

<body>
<header class="py-13 jarallax" data-jarallax data-speed=".8" style="background-image: url(/assets/img/flowerdictionary.gif);">
</header>

<!-- CONTENT -->

<section >
  <div class="card mb-4">
    <div class="card-header">
      <p class="alert alert-Danger dismissible">
        ㅇ 출저 및 제공기관 : 공공데이터 포털<sub>[농촌진흥청, 오늘의 꽃 오픈API]</sub>
        <button type="button" class="btn-close " data-bs-dismiss="alert"></button>
      </p>
    </div>
  </div>
  <div class="container">
    <div class="row">
      <c:forEach var="obj" items="${flowerlist}" varStatus="status">
        <div class="col-6 col-md-3 col-lg">

          <!-- Card -->
          <div class="card mb-7" data-toggle="card-collapse">

            <!-- Image -->
            <a href="/flowerdictionary/detail?dataNo=${obj.dataNo}">
              <img src="${obj.imgUrl1}" alt="꽃이미지 출력에러" class="card-img-top" <%--style="width: 100px; height:300px;"--%>>
            </a>
            <!-- Collapse -->
            <div class="card-collapse-parent">

              <!-- Body -->
              <div class="card-body px-0 bg-white text-center">

                <!-- Heading -->
                <div class="mb-1 fw-bold">
                  <a class="text-body" href="#">${obj.flowerName}</a>
                </div>

                <!-- Price -->
                <div class="mb-1 fw-bold text-muted">
                  <div>꽃말: ${obj.flowerMeaning}</div>
                </div>

              </div>

              <!-- Footer -->
              <div class="card-collapse collapse">
                <div class="card-footer px-0 pt-0 bg-white text-center">
                  <a href="/flowerdictionary/detail?dataNo=${obj.dataNo}">
                    <i class="fe fe-eye"></i>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <c:if test="${status.count % 4 == 0}">
          <div class="w-100 d-none d-lg-block"></div>
        </c:if>
      </c:forEach>
      <div class="row">
        <div class="col-12">

          <!-- Progress -->
          <div class="row justify-content-center mt-7">
            <div class="col-12 text-center">

              <!-- Caption -->
              <p class="fs-sm text-muted">
              </p>

<%--              <!-- Progress -->--%>
<%--              <div class="progress mx-auto mb-7" style="max-width: 250px;">--%>
<%--                <div class="progress-bar bg-dark" role="progressbar" style="width: 66%" aria-valuenow="66" aria-valuemin="0" aria-valuemax="100"></div>--%>
<%--              </div>--%>

<%--              <!-- Button -->--%>
<%--              <a class="btn btn-sm btn-outline-dark" href="#!">--%>
<%--                더보기--%>
<%--              </a>--%>

            </div>
          </div>

        </div>
      </div>
    </div>
  </div>
</div>
</section>
</body>

<%--&lt;%&ndash;===============================================모달창 시작==========================================&ndash;%&gt;--%>
<%--<div class="modal fade" id="todayflower" tabindex="-1" role="dialog" aria-hidden="true">--%>
<%--  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">--%>
<%--    <div class="modal-content">--%>

<%--      <!-- Close -->--%>
<%--      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">--%>
<%--        <i class="fe fe-x" aria-hidden="true"></i>--%>
<%--      </button>--%>

<%--      <!-- Content -->--%>
<%--      <div class="row gx-0">--%>
<%--        <div class="col-12 col-lg-5">--%>
<%--          <!-- Image -->--%>
<%--          <img class="img-fluid" src="${todayFlower.imgUrl1}" alt="오늘의 꽃 이미지 출력 에러">--%>
<%--          <img class="img-fluid" src="${todayFlower.imgUrl2}" alt="오늘의 꽃 이미지 출력 에러">--%>
<%--        </div>--%>
<%--        <div class="col-12 col-lg-7 d-flex flex-column px-md-8">--%>

<%--          <!-- Body -->--%>
<%--          <div class="modal-body my-auto py-10">--%>
<%--            <!-- Heading -->--%>
<%--            <h4>오늘의 꽃: ${todayFlower.flowerName}</h4>--%>
<%--            <!-- Text -->--%>
<%--            <p class="mb-7 fs-lg">--%>
<%--              꽃   말: ${todayFlower.flowerMeaning}--%>
<%--            </p>--%>
<%--            <hr>--%>
<%--            <H8>${todayFlower.fContent}</H8>--%>
<%--            <hr>--%>
<%--            <H8>${todayFlower.fMonthDay}</H8>--%>
<%--            <br>--%>
<%--          </div>--%>
<%--          <!-- Footer -->--%>
<%--          <div class="modal-footer pt-0">--%>
<%--            <!-- 더이상보지 않기 체크박스!!기능구현은 안했음.. -->--%>
<%--            <div class="form-check">--%>
<%--              <input class="form-check-input" id="modalCheckbox" type="checkbox">--%>
<%--              <label class="form-check-label fs-xs" for="modalCheckbox">--%>
<%--                더이상 보지않기--%>
<%--              </label>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</div>--%>
<%--&lt;%&ndash;===============================================모달창 끝==========================================&ndash;%&gt;--%>
