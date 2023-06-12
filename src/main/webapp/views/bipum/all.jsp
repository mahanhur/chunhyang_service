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

<header class="py-13 jarallax" data-jarallax data-speed=".8" style="background-image: url(/uimg/shopmainimage.jpg);">

</header>

<!-- FILTERS -->
<section class="py-7 border-bottom">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-12 col-md">

        <!-- Categories -->
        <nav class="nav nav-overflow mb-6 mb-md-0">
          <a class="nav-link active" data-bs-toggle="tab" href="#">전체</a>
          <a class="nav-link" data-bs-toggle="tab" href="#">화병</a>
          <a class="nav-link" data-bs-toggle="tab" href="#">비품</a>
        </nav>

      </div>
      <div class="col-12 col-md-auto text-center">

        <!-- Filter -->
        <a class="text-body" data-bs-toggle="collapse" href="#collapseFilter" role="button">
          <i class="fe fe-list me-2"></i> 필터
        </a>

        <!-- Sort -->
        <div class="dropdown ms-6">

          <!-- Toggle -->
          <a class="dropdown-toggle text-body" data-bs-toggle="dropdown" href="#">디폴트</a>

          <!-- Menu -->
          <form class="dropdown-menu">
            <div class="card">
              <div class="card-body">

                <!-- Form group 시작-->
                <div class="form-group-overflow">
                  <div class="form-check form-check-text mb-3">
                    <input class="form-check-input" id="sortOne" name="sort" type="radio" value="Default">
                    <label class="form-check-label" for="sortOne">뭘</label>
                  </div>
                  <div class="form-check form-check-text mb-3">
                    <input class="form-check-input" id="sortTwo" name="sort" type="radio" value="Newest">
                    <label class="form-check-label" for="sortTwo">넣을지</label>
                  </div>
                  <div class="form-check form-check-text mb-3">
                    <input class="form-check-input" id="sortThree" name="sort" type="radio" value="Most Popular">
                    <label class="form-check-label" for="sortThree">고민좀</label>
                  </div>
                  <div class="form-check form-check-text mb-3">
                    <input class="form-check-input" id="sortFour" name="sort" type="radio" value="Default Price">
                    <label class="form-check-label" for="sortFour">해보겟습니다</label>
                  </div>
                </div>
                <!-- Form group 끝-->
              </div>
            </div>
          </form>
        </div>

      </div>
    </div>
  </div>
</section>

<!-- FILTERS (collapse) -->
<section class="collapse" id="collapseFilter">
  <form class="py-7 border-bottom">
    <div class="container">
      <div class="row">
        <div class="col-12 col-md-3">

          <!-- Heading -->
          <p class="fs-lg">
            <strong>종류:</strong>
          </p>

          <!-- Form group -->
          <div class="form-group form-group-overflow mb-md-0">
            <div class="form-check mb-3">
              <input class="form-check-input" id="seasonOne" name="category" type="checkbox" value="Summer">
              <label class="form-check-label" for="seasonOne">화병</label>
            </div>
            <div class="form-check mb-3">
              <input class="form-check-input" id="seasonTwo" name="category" type="checkbox" value="Winter">
              <label class="form-check-label" for="seasonTwo">호미</label>
            </div>
            <div class="form-check mb-3">
              <input class="form-check-input" id="seasonThree" name="category" type="checkbox" value="Spring & Fall">
              <label class="form-check-label" for="seasonThree">영양제</label>
            </div>
          </div>

        </div>
        <div class="col-12 col-md-3">

          <!-- Heading -->
          <p class="fs-lg">
            <strong>Size:</strong>
          </p>

          <!-- Form group -->
          <div class="form-group form-group-overflow mb-md-0">
            <div class="form-check form-check-inline form-check-size mb-2">
              <input class="form-check-input" id="sizeOne" type="checkbox">
              <label class="form-check-label" for="sizeOne">
                3XS
              </label>
            </div>
            <div class="form-check form-check-inline form-check-size mb-2">
              <input class="form-check-input" id="sizeTwo" type="checkbox" disabled>
              <label class="form-check-label" for="sizeTwo">
                2XS
              </label>
            </div>
            <div class="form-check form-check-inline form-check-size mb-2">
              <input class="form-check-input" id="sizeThree" type="checkbox">
              <label class="form-check-label" for="sizeThree">
                XS
              </label>
            </div>
            <div class="form-check form-check-inline form-check-size mb-2">
              <input class="form-check-input" id="sizeFour" type="checkbox">
              <label class="form-check-label" for="sizeFour">
                S
              </label>
            </div>
            <div class="form-check form-check-inline form-check-size mb-2">
              <input class="form-check-input" id="sizeFive" type="checkbox">
              <label class="form-check-label" for="sizeFive">
                M
              </label>
            </div>
            <div class="form-check form-check-inline form-check-size mb-2">
              <input class="form-check-input" id="sizeSix" type="checkbox">
              <label class="form-check-label" for="sizeSix">
                L
              </label>
            </div>
            <div class="form-check form-check-inline form-check-size mb-2">
              <input class="form-check-input" id="sizeSeven" type="checkbox">
              <label class="form-check-label" for="sizeSeven">
                XL
              </label>
            </div>
            <div class="form-check form-check-inline form-check-size mb-2">
              <input class="form-check-input" id="sizeEight" type="checkbox" disabled>
              <label class="form-check-label" for="sizeEight">
                2XL
              </label>
            </div>
            <div class="form-check form-check-inline form-check-size mb-2">
              <input class="form-check-input" id="sizeNine" type="checkbox">
              <label class="form-check-label" for="sizeNine">
                3XL
              </label>
            </div>
            <div class="form-check form-check-inline form-check-size mb-2">
              <input class="form-check-input" id="sizeTen" type="checkbox">
              <label class="form-check-label" for="sizeTen">
                4XL
              </label>
            </div>
            <div class="form-check form-check-inline form-check-size mb-2">
              <input class="form-check-input" id="sizeEleven" type="checkbox">
              <label class="form-check-label" for="sizeEleven">
                One Size
              </label>
            </div>
          </div>

        </div>
        <div class="col-12 col-md-3">

          <!-- Heading -->
          <p class="fs-lg">
            <strong>Color:</strong>
          </p>

          <!-- Form group -->
          <div class="form-group form-group-overflow mb-md-0">
            <div class="form-check form-check-inline form-check-color mb-3">
              <input class="form-check-input" id="colorOne" type="checkbox" style="background-color: #1f1f1f">
            </div>
            <div class="form-check form-check-inline form-check-color mb-3">
              <input class="form-check-input" id="colorTwo" type="checkbox" style="background-color: #f9f9f9">
            </div>
            <div class="form-check form-check-inline form-check-color mb-3">
              <input class="form-check-input" id="colorThree" type="checkbox" style="background-color: #3b86ff">
            </div>
            <div class="form-check form-check-inline form-check-color mb-3">
              <input class="form-check-input" id="colorFour" type="checkbox" style="background-color: #ff6f61">
            </div> <br />
            <div class="form-check form-check-inline form-check-color mb-3">
              <input class="form-check-input" id="colorFive" type="checkbox" style="background-color: #795548">
            </div>
            <div class="form-check form-check-inline form-check-color mb-3">
              <input class="form-check-input" id="colorSix" type="checkbox" style="background-color: #bababa">
            </div>
            <div class="form-check form-check-inline form-check-color mb-3">
              <input class="form-check-input" id="colorSeven" type="checkbox" style="background-color: #17a2b8">
            </div>
            <div class="form-check form-check-inline form-check-color">
              <input class="form-check-input" id="colorEight" type="checkbox" style="background-color: #e83e8c">
            </div>
          </div>

        </div>
        <div class="col-12 col-md-3">

          <!-- Heading -->
          <p class="fs-lg">
            <strong>Price:</strong>
          </p>

          <!-- Form group-->
          <div class="form-group form-group-overflow mb-6" id="priceGroup">
            <div class="form-check mb-3">
              <input class="form-check-input" id="priceOne" type="checkbox">
              <label class="form-check-label" for="priceOne">
                $10.00 - $49.00
              </label>
            </div>
            <div class="form-check mb-3">
              <input class="form-check-input" id="priceTwo" type="checkbox">
              <label class="form-check-label" for="priceTwo">
                $50.00 - $99.00
              </label>
            </div>
            <div class="form-check mb-3">
              <input class="form-check-input" id="priceThree" type="checkbox">
              <label class="form-check-label" for="priceThree">
                $100.00 - $199.00
              </label>
            </div>
            <div class="form-check">
              <input class="form-check-input" id="priceFour" type="checkbox">
              <label class="form-check-label" for="priceFour">
                $200.00 and Up
              </label>
            </div>
          </div>

          <!-- Range -->
          <div class="d-flex align-items-center">

            <!-- Input -->
            <input type="number" class="form-control form-control-xs" placeholder="$10.00" min="10">

            <!-- Divider -->
            <div class="text-gray-350 mx-2">‒</div>

            <!-- Input -->
            <input type="number" class="form-control form-control-xs" placeholder="$350.00" max="350">

          </div>

        </div>
      </div>
    </div>
  </form>
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