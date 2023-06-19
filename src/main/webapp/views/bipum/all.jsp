<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- 템플릿에서 들어있던 JAVASCRIPT -->
<!-- Map (replace the API key to enable) -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCnKt8_N4-FKOnhI_pSaDL7g_g-XI1-R9E"></script>
<!-- Vendor JS -->
<script src="./assets/js/vendor.bundle.js"></script>
<!-- Theme JS -->
<script src="./assets/js/theme.bundle.js"></script>
<script>
  let item_get = {
    init: function () {
      $('.cart_btn').click(function () {
        let cust_id = "${logincust.cust_id}";
        let item_id = $(this).data('itemid');
        let cnt = null;
        $.ajax({
          url: '/cart/addcart',
          type: 'post',
          data: {cust_id: cust_id, item_id: item_id, cnt: 1},
          success: function () {
            if(cust_id != '') {
              location.href="/cart/all?cust_id="+cust_id;
            } else {
              location.href="/cust/login"
            }
          },
          error:()=>{
            alert("ajax에러")
          }
        });
      });
    }
  };
  $(function () {
    item_get.init();
  });
</script>

<body>

<header class="py-13 jarallax" data-jarallax data-speed=".8" style="background-image: url(/uimg/shopmainimage2.jpg);height: 400px">
  <div class="container">
    <div class="row">
      <div class="col-12">

        <!-- Heading -->
        <h3 class="text-center text-white mb-8"style="font-weight: bold">꽃이 있어도, 꽃이 없어도 공간에 아름다울 화병</h3>
        <h6 class="text-center text-white mb-6">
          <span style="color: yellow">#</span>화병&nbsp;
          <span style="color: yellow">#</span>특가제안&nbsp;
          <span style="color: yellow">#</span>품절주의
        </h6>

        <!-- Breadcrumb -->
        <ol class="breadcrumb justify-content-center mb-0 text-center text-white fs-xs">
          <li class="breadcrumb-item">
            <a class="text-reset">Home</a>
          </li>
          <li class="breadcrumb-item active">
            Bipum
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
          <a class="nav-link" href="/bipum/all">전체</a>
          <a class="nav-link" href="/bipum/hwabyung">화병</a>
          <a class="nav-link" href="/bipum/bipum">비품</a>
        </nav>

      </div>

    </div>
  </div>
</section>

<!-- CONTENT -->
<section class="py-12">
  <div class="container">
    <div class="row">

<c:forEach var="obj" items="${ilist}" varStatus="status">
      <div class="col-6 col-md-3 col-lg">

        <!-- Card -->
        <div class="card mb-7" data-toggle="card-collapse">

          <!-- Image -->
          <a href="/bipum/detail?item_id=${obj.item_id}">
            <img src="/uimg/${obj.item_img}" alt="..." class="card-img-top">
          </a>

          <!-- Collapse -->
          <div class="card-collapse-parent">

            <!-- Body -->
            <div class="card-body px-0 bg-white text-center">

              <!-- Heading -->
              <div class="mb-1 fw-bold">
                <a class="text-body" href="#">${obj.item_name}</a>
              </div>

              <!-- Price -->
              <div class="mb-1 fw-bold text-muted">
                <fmt:formatNumber value="${obj.item_price}" pattern="###,###원"/>
</div>

              <!-- Rating -->
              <div class="rating fs-xxs text-dark justify-content-center" data-value="${obj.avgscore}">
                <div class="rating-item">
                  <i class="fas fa-star"></i>
                </div>
                <div class="rating-item">
                  <i class="fas fa-star"></i>
                </div>
                <div class="rating-item">
                  <i class="fas fa-star"></i>
                </div>
                <div class="rating-item">
                  <i class="fas fa-star"></i>
                </div>
                <div class="rating-item">
                  <i class="fas fa-star"></i>
                </div>
              </div>(${obj.cnt})

            </div>

            <!-- Footer -->
            <div class="card-collapse collapse">
              <div class="card-footer px-0 pt-0 bg-white text-center">
                <button class="btn btn-xs btn-link btn-circle" data-bs-toggle="modal" data-bs-target="#modalProduct">
                  <i class="fe fe-eye"></i>
                </button>
                <button type="button" class="btn btn-xs btn-link btn-circle cart_btn" data-itemid="${obj.item_id}" data-toggle="button">
                  <i class="fe fe-shopping-cart"></i>
                </button>
                <button class="btn btn-xs btn-link btn-circle" data-toggle="button">
                  <i class="fe fe-heart"></i>
                </button>
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
              Showing 16 of 24 products
            </p>

            <!-- Progress -->
            <div class="progress mx-auto mb-7" style="max-width: 250px;">
              <div class="progress-bar bg-dark" role="progressbar" style="width: 66%" aria-valuenow="66" aria-valuemin="0" aria-valuemax="100"></div>
            </div>

            <!-- Button -->
            <a class="btn btn-sm btn-outline-dark" href="#!">
              상품 더보기
            </a>

          </div>
        </div>

      </div>
    </div>
  </div>
</div>
</section>

</body>