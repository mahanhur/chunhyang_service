<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.2.0/kakao.min.js"
        integrity="sha384-x+WG2i7pOR+oWb6O5GV5f1KN2Ko6N7PTGPS7UlasYWNxZMKQA63Cj/B2lbUmUfuC" crossorigin="anonymous"></script>
<script>

  let dabal_sort = {
    init: function () {
      $("input[name='dabaltype']").change(function () {
        dabal_sort.send();
        let dabaltype= $("input[name='dabaltype']:checked").val();
        console.log(dabaltype);
      });
    },
    send: function () {
      $("#dabalMenu_form").attr({
        'action': '/item/sortdabal',
        'method': 'post'
      })
      $("#dabalMenu_form").submit();
    }
  };

  let flower_sort = {
    init: function () {
      $("input[name='flowertype']").change(function () {
        flower_sort.send();
        let flowertype= $("input[name='flowertype']:checked").val();
        console.log(flowertype);
      });
    },
    send: function () {
      $("#flowerMenu_form").attr({
        'action': '/item/sortflower',
        'method': 'post'
      })
      $("#flowerMenu_form").submit();
    }
  };

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


  let lineup = {
    init: function () {
      $("input[name='sort']").change(function () {
        lineup.send();
        console.log(sortnumber);
      });
    },
    send: function () {
      let sortnumber= $("input[name='sort']:checked").val();
      if (sortnumber == 1) {
        $("#sortMenu_form").attr({
          'action': '/item/lineuptotal',
          'method': 'post'
        })
        $("#sortMenu_form").submit();
      } else if (sortnumber == 2) {
        $("#sortMenu_form").attr({
          'action': '/item/lineupreview',
          'method': 'post'
        })
        $("#sortMenu_form").submit();
      } else if (sortnumber == 3) {
        $("#sortMenu_form").attr({
          'action': '/item/lineuplow',
          'method': 'post'
        })
        $("#sortMenu_form").submit();
      } else if (sortnumber == 4) {
        $("#sortMenu_form").attr({
          'action': '/item/lineuphigh',
          'method': 'post'
        })
        $("#sortMenu_form").submit();
      }
    }
  };


  $(function () {
    dabal_sort.init();
    flower_sort.init();
    item_get.init();
    lineup.init();
  });
</script>

<!-- HEADER -->
<header class="py-13 jarallax" data-jarallax data-speed=".8" style="background-image: url(/uimg/shopmainimage.jpg);height: 400px">
  <div class="container">
    <div class="row">
      <div class="col-12">

        <!-- Heading -->
        <h1 class="text-center text-black mb-8"style="font-weight: bold">일상의 행복을 만드는 확실한 방법</h1>
        <h6 class="text-center text-black">따사로운 햇살을 닮은 꽃선물</h6>
        <h6 class="text-center text-white mb-6">
          <span style="color: yellow">#</span>사랑&nbsp;
          <span style="color: yellow">#</span>응원&nbsp;
          <span style="color: yellow">#</span>감사</h6>

        <!-- Breadcrumb -->
        <ol class="breadcrumb justify-content-center mb-0 text-center text-white fs-xs">
          <li class="breadcrumb-item">
            <a class="text-reset">Home</a>
          </li>
          <li class="breadcrumb-item active">
            Item
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
          <a class="nav-link" href="/item/all">전체</a>
          <!-- Toggle -->
          <a class="dropdown-toggle nav-link" data-bs-toggle="dropdown">꽃다발</a>
          <!-- Menu -->
          <form id="dabalMenu_form" class="dropdown-menu">
            <div class="card">
              <div class="card-body">
                <!-- Form group -->
                <div class="form-group-overflow">
                  <div class="form-check form-check-text mb-3">
                    <input class="form-check-input" id="dabal" type="radio">
<%--                    <label class="form-check-label" for="bunch">전체</label>--%>
                    <a class="form-check-label" href="/item/dabal">전체</a>
                  </div>
                  <div class="form-check form-check-text mb-3">
                    <input class="form-check-input" id="love" name="dabaltype" type="radio" value="사랑">
                    <label class="form-check-label" for="love">사랑</label>
<%--                    <a class="form-check-label" for="sortTwo" href="/item/love">사랑</a>--%>
                  </div>
                  <div class="form-check form-check-text mb-3">
                    <input class="form-check-input" id="cheer" name="dabaltype" type="radio" value="응원">
                    <label class="form-check-label" for="cheer">응원</label>
<%--                    <a class="form-check-label" for="sortThree" href="/item/cheer">응원</a>--%>
                  </div>
                  <div class="form-check form-check-text mb-3">
                    <input class="form-check-input" id="thanks" name="dabaltype" type="radio" value="감사">
                    <label class="form-check-label" for="thanks">감사</label>
<%--                    <a class="form-check-label" for="sortFour">감사</a>--%>
                  </div>
                </div>
              </div>
            </div>
          </form>

          <a class="dropdown-toggle nav-link" data-bs-toggle="dropdown" href="/item/flower">꽃</a>
          <!-- Menu -->

          <form id="flowerMenu_form" class="dropdown-menu">
            <div class="card">
              <div class="card-body">
                <!-- Form group -->
                <div class="form-group-overflow">
                  <div class="form-check form-check-text mb-3">
                    <input class="form-check-input" id="flower" value="전체">
                    <a class="form-check-label" for="flower" href="/item/flower">전체</a>
                  </div>
                  <div class="form-check form-check-text mb-3">
                    <input class="form-check-input" id="장미" name="flowertype" type="radio" value="장미">
                    <label class="form-check-label" for="장미">장미</label>
<%--                    <a class="form-check-label" for="rose" href="/item/rose">장미</a>--%>
                  </div>
                  <div class="form-check form-check-text mb-3">
                    <input class="form-check-input" id="거베라" name="flowertype" type="radio" value="거베라">
                    <label class="form-check-label" for="거베라">거베라</label>
                    <%--                    <a class="form-check-label" for="gerbera" href="/item/gerbera">거베라</a>--%>
                  </div>
                  <div class="form-check form-check-text mb-3">
                    <input class="form-check-input" id="수국" name="flowertype" type="radio" value="수국">
                    <label class="form-check-label" for="수국">수국</label>
                    <%--                    <a class="form-check-label" for="hydrangea" href="/item/hydrangea">수국</a>--%>
                  </div>
                  <div class="form-check form-check-text mb-3">
                    <input class="form-check-input" id="리시안셔스" name="flowertype" type="radio" value="리시안셔스">
                    <label class="form-check-label" for="리시안셔스">리시안셔스</label>
                    <%--                    <a class="form-check-label" for="sortFour" href="/item/lisianthus">리시안셔스</a>--%>
                  </div>
                  <div class="form-check form-check-text mb-3">
                    <input class="form-check-input" id="백합" name="flowertype" type="radio" value="백합">
                    <label class="form-check-label" for="백합">백합</label>
                    <%--                    <a class="form-check-label" for="sortTwo" href="/item/rose">백합</a>--%>
                  </div>
                  <div class="form-check form-check-text mb-3">
                    <input class="form-check-input" id="꽃기타" name="flowertype" type="radio" value="꽃기타">
                    <label class="form-check-label" for="꽃기타">기타</label>
                    <%--                    <a class="form-check-label" for="sortFour" href="/item/freesia">기타</a>--%>
                  </div>
<%--                  <div class="form-check form-check-text mb-3">--%>
<%--                    <input class="form-check-input" id="카라" name="flowertype" type="radio" value="카라">--%>
<%--                    <label class="form-check-label" for="카라">카라</label>--%>
<%--                    &lt;%&ndash;                    <a class="form-check-label" for="kara" href="/item/kara">카라</a>&ndash;%&gt;--%>
<%--                  </div>--%>
<%--                  <div class="form-check form-check-text mb-3">--%>
<%--                    <input class="form-check-input" id="프리지아" name="flowertype" type="radio" value="프리지아">--%>
<%--                    <label class="form-check-label" for="프리지아">프리지아</label>--%>
<%--&lt;%&ndash;                    <a class="form-check-label" for="freesia" href="/item/freesia">프리지아</a>&ndash;%&gt;--%>
<%--                  </div>--%>
<%--                  <div class="form-check form-check-text mb-3">--%>
<%--                    <input class="form-check-input" id="작약" name="flowertype" type="radio" value="작약">--%>
<%--                    <label class="form-check-label" for="작약">작약</label>--%>
<%--                    &lt;%&ndash;                    <a class="form-check-label" for="rose" href="/item/rose">작약</a>&ndash;%&gt;--%>
<%--                  </div>--%>

<%--                  <div class="form-check form-check-text mb-3">--%>
<%--                    <input class="form-check-input" id="해바라기" name="flowertype" type="radio" value="해바라기">--%>
<%--                    <label class="form-check-label" for="해바라기">해바라기</label>--%>
<%--&lt;%&ndash;                    <a class="form-check-label" for="sortOne" href="/item/flower">해바라기</a>&ndash;%&gt;--%>
<%--                  </div>--%>

<%--                  <div class="form-check form-check-text mb-3">--%>
<%--                    <input class="form-check-input" id="라벤더" name="flowertype" type="radio" value="라벤더">--%>
<%--                    <label class="form-check-label" for="라벤더">라벤더</label>--%>
<%--&lt;%&ndash;                    <a class="form-check-label" for="sortThree" href="/item/hydrangea">라벤더</a>&ndash;%&gt;--%>
<%--                  </div>--%>

<%--                  <div class="form-check form-check-text mb-3">--%>
<%--                    <input class="form-check-input" id="유칼립투스" name="flowertype" type="radio" value="유칼립투스">--%>
<%--                    <label class="form-check-label" for="유칼립투스">유칼립투스</label>--%>
<%--&lt;%&ndash;                    <a class="form-check-label" for="sortTwo" href="/item/rose">유칼립투스</a>&ndash;%&gt;--%>
<%--                  </div>--%>
<%--                  <div class="form-check form-check-text mb-3">--%>
<%--                    <input class="form-check-input" id="아스틸베베" name="flowertype" type="radio" value="아스틸베베">--%>
<%--                    <label class="form-check-label" for="아스틸베베">아스틸베베</label>--%>
<%--&lt;%&ndash;                    <a class="form-check-label" for="sortThree" href="/item/hydrangea">아스틸베베</a>&ndash;%&gt;--%>
<%--                  </div>--%>
<%--                  <div class="form-check form-check-text mb-3">--%>
<%--                    <input class="form-check-input" id="청공작초" name="flowertype" type="radio" value="청공작초">--%>
<%--                    <label class="form-check-label" for="청공작초">청공작초</label>--%>
<%--&lt;%&ndash;                    <a class="form-check-label" for="sortFour" href="/item/freesia">청공작초</a>&ndash;%&gt;--%>
<%--                  </div>--%>
<%--                  <div class="form-check form-check-text mb-3">--%>
<%--                    <input class="form-check-input" id="투베로사" name="flowertype" type="radio" value="투베로사">--%>
<%--                    <label class="form-check-label" for="투베로사">투베로사</label>--%>
<%--&lt;%&ndash;                    <a class="form-check-label" for="sortTwo" href="/item/rose">투베로사</a>&ndash;%&gt;--%>
<%--                  </div>--%>
<%--                  <div class="form-check form-check-text mb-3">--%>
<%--                    <input class="form-check-input" id="스톡크" name="flowertype" type="radio" value="스톡크">--%>
<%--                    <label class="form-check-label" for="스톡크">스톡크</label>--%>
<%--&lt;%&ndash;                    <a class="form-check-label" for="sortThree" href="/item/hydrangea">스톡크</a>&ndash;%&gt;--%>
<%--                  </div>--%>

                </div>
              </div>
            </div>
          </form>
        </nav>

      </div>

      <div class="col-12 col-md-auto text-center">

<%--        <!-- Filter -->--%>
<%--        <a class="text-body" data-bs-toggle="collapse" href="#collapseFilter" role="button">--%>
<%--          <i class="fe fe-list me-2"></i> Filter--%>
<%--        </a>--%>

        <!-- Sort -->
        <div class="dropdown ms-6">

          <!-- Toggle -->
          <a class="dropdown-toggle text-body" data-bs-toggle="dropdown" href="#">정렬기준</a>

          <!-- Menu -->
          <form id="sortMenu_form" class="dropdown-menu">
            <div class="card">
              <div class="card-body">

                <!-- Form group -->
                <div id="sort" class="form-group-overflow">
                  <div class="form-check form-check-text mb-3">
                    <input class="form-check-input" id="sortTotal" name="sort" type="radio" value="1">
                    <label class="form-check-label" for="sortTotal">판매금액 많은순</label>
                  </div>
                  <div class="form-check form-check-text mb-3">
                    <input class="form-check-input" id="sortReview" name="sort" type="radio" value="2">
                    <label class="form-check-label" for="sortReview">리뷰 높은순</label>
                  </div>
                  <div class="form-check form-check-text mb-3">
                    <input class="form-check-input" id="sortLow" name="sort" type="radio" value="3">
                    <label class="form-check-label" for="sortLow">판매가격 낮은순</label>
                  </div>
                  <div class="form-check form-check-text">
                    <input class="form-check-input" id="sortHigh" name="sort" type="radio" value="4">
                    <label class="form-check-label" for="sortHigh">판매가격 높은순</label>
                  </div>
                </div>

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
            <strong>사이즈:</strong>
          </p>

          <!-- Form group -->
          <div class="form-group form-group-overflow mb-md-0">
            <div class="form-check mb-3">
              <input class="form-check-input" id="seasonOne" name="category" type="checkbox" value="L">
              <label class="form-check-label" for="seasonOne">Large</label>
            </div>
            <div class="form-check mb-3">
              <input class="form-check-input" id="seasonTwo" name="category" type="checkbox" value="M">
              <label class="form-check-label" for="seasonTwo">Medium</label>
            </div>
            <div class="form-check mb-3">
              <input class="form-check-input" id="seasonThree" name="category" type="checkbox" value="S">
              <label class="form-check-label" for="seasonThree">Small</label>
            </div>
          </div>

        </div>
        <div class="col-12 col-md-3">

          <!-- Heading -->
          <p class="fs-lg">
            <strong>꽃:</strong>
          </p>

          <!-- Form group -->
          <div class="form-group form-group-overflow mb-md-0">
            <div class="form-check form-check-inline form-check-size mb-2">
              <input class="form-check-input" id="sizeOne" type="checkbox">
              <label class="form-check-label" for="sizeOne">
                장미
              </label>
            </div>
            <div class="form-check form-check-inline form-check-size mb-2">
              <input class="form-check-input" id="sizeTwo" type="checkbox" disabled>
              <label class="form-check-label" for="sizeTwo">
                작약
              </label>
            </div>
            <div class="form-check form-check-inline form-check-size mb-2">
              <input class="form-check-input" id="sizeThree" type="checkbox">
              <label class="form-check-label" for="sizeThree">
                카라
              </label>
            </div>
            <div class="form-check form-check-inline form-check-size mb-2">
              <input class="form-check-input" id="sizeFour" type="checkbox">
              <label class="form-check-label" for="sizeFour">
                프리지아
              </label>
            </div>
            <div class="form-check form-check-inline form-check-size mb-2">
              <input class="form-check-input" id="sizeFive" type="checkbox">
              <label class="form-check-label" for="sizeFive">
                거베라
              </label>
            </div>
            <div class="form-check form-check-inline form-check-size mb-2">
              <input class="form-check-input" id="sizeSix" type="checkbox">
              <label class="form-check-label" for="sizeSix">
                수국
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

<!-- 상품리스트 -->
<section class="py-12">
  <div class="container">
    <div id="itemcontainer" class="row">
      <c:forEach var="obj" items="${ilist}" varStatus="status">
        <div class="col-6 col-md-3 col-lg" id="itemElement${status.count}">

            <!-- Card -->
            <div class="card mb-7" data-toggle="card-collapse">

              <!-- Image -->
              <a href="/item/detail?item_id=${obj.item_id}">
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
    </div>

<%--    <div class="row">--%>
<%--      <div class="col-12">--%>

<%--        <!-- Progress -->--%>
<%--        <div class="row justify-content-center mt-7">--%>
<%--          <div class="col-12 text-center">--%>

<%--            <!-- Caption -->--%>
<%--            <p class="fs-sm text-muted">--%>
<%--              Showing 16 of 24 products--%>
<%--            </p>--%>

<%--            <!-- Progress -->--%>
<%--            <div class="progress mx-auto mb-7" style="max-width: 250px;">--%>
<%--              <div class="progress-bar bg-dark" role="progressbar" style="width: 66%" aria-valuenow="66" aria-valuemin="0" aria-valuemax="100"></div>--%>
<%--            </div>--%>

<%--            <!-- Button -->--%>
<%--            <button id="morebtn" type="button" class="btn btn-sm btn-outline-dark">--%>
<%--              Load more--%>
<%--            </button>--%>

<%--          </div>--%>
<%--        </div>--%>

<%--      </div>--%>
<%--    </div>--%>
  </div>
</section>

<!-- JAVASCRIPT -->
<!-- Map (replace the API key to enable) -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCnKt8_N4-FKOnhI_pSaDL7g_g-XI1-R9E"></script>

<!-- Vendor JS -->
<script src="./assets/js/vendor.bundle.js"></script>

<!-- Theme JS -->
<script src="./assets/js/theme.bundle.js"></script>

</body>
</html>
