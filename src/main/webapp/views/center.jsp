<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script>
  let today_form = {
    init:function(){

      setInterval(function(){
        $.ajax({
          url:'/getservertime',
          success:function(data){
            today_form.display(data);
          },
          error:function(){
          }
        });
      },1000);

    },
    display:function(data){
      $('#server_time').text(data);
    }
  };

  $(function(){
    today_form.init();
  })
</script>

<style>
  @media (max-width: 1030px) {
    .mainpage-recommend {
      width: 50%;
      height: 50%;
    }
  }
  @media (max-width: 575.98px) {
    .mainpage-recommend {
      width: 50%;
      height: 50%;
    }
  }
</style>

<%-- --------------------스크롤 이동-------------------- --%>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<style>
  html {
    /*overflow: hidden;*/
  }

  html, body {
    display: block;
    width: 100%;
    margin: 0;
  }


  #section3,
  #section5 {
    background-color: black;
  }

</style>
<script>
  var mHtml = $("html");
  var page = 1;
  mHtml.animate({scrollTop : 0},10);
</script>
<script>
  $(window).on("wheel", function(e) {
    if(mHtml.is(":animated")) return;
    if(e.originalEvent.deltaY > 0) {
      if(page == 4) return;
      page++;
    } else if(e.originalEvent.deltaY < 0) {
      if(page == 1) return;
      page--;
    }
    var posTop =(page-1) * $(window).height();
    mHtml.animate({scrollTop : posTop});
  })
</script>
<%-- -------------------------------------------------- --%>

<!-- center  -->

<%--section1---------------------------------------------- --%>
<div class="section" id="section1">
  <div id = "section1_detail">

    <!-- PROMO ( 검은배너 ) -->
    <div class="py-3 bg-dark bg-pattern" style="position:sticky;z-index: 1;">
      <div class="container">
        <div class="row">
          <div class="col-12">

            <!-- Text -->
            <div class="text-center text-white">
              <span class="heading-xxs letter-spacing-xl">
                🌸🌸[<span id="server_time"></span>] 오늘의 꽃은 <span style="text-decoration: underline white; cursor: pointer">
                  <a data-bs-toggle="modal" data-bs-target="#todayflower">${todayFlower.flowerName}</a>
                  </span> 입니다 🌸🌸
              </span>
            </div>

          </div>
        </div>
      </div>
    </div>

    <!-- SLIDER -->
    <section>
      <div data-flickity='{"prevNextButtons": true, "fade": true, "autoPlay": 2000}'>
        <!-- slide1 -->
        <div class="w-100 bg-cover" style="background-image: url(/uimg/maintop1.jpg);">
          <div class="container d-flex flex-column">
            <div class="row justify-content-center align-items-center pt-15 pb-12" style="min-height:90vh!important">
              <div class="col-12 col-md-7 col-lg-5 text-center text-black">

                <!-- Heading -->
                <h1 class="display-4 mb-10">
                  Better Things In a Better Way
                </h1>
                <!-- Links -->
                <a type="button" class="btn btn-outline-dark" href="/subs/subscribe" style="opacity: 70%;margin:10px">정기구독</a>
                <a type="button" class="btn btn-outline-dark" href="/item/all" style="opacity: 70%;margin:10px">꽃선물</a>

              </div>
            </div>
          </div>
        </div>
        <!-- slide2 -->
        <div class="w-100 bg-cover" style="background-image: url(/uimg/maintop2.jpg);">
          <div class="container d-flex flex-column">
            <div class="row justify-content-center align-items-center pt-15 pb-12" style="min-height:90vh!important">
              <div class="col-12 col-md-7 col-lg-7 text-center text-black">

                <!-- Heading -->
                <h6>
                  VASE EDITION
                </h6>
                <h1 class="display-4">
                  PLEATS EDITION
                </h1>
                <h1 class="display-6 mb-5">
                  화병&라그라스 패키지 오픈
                </h1>
                <h9 class="mb-13">
                  꽃이 있어도 꽃이 없어도 공간에 무드를 더할거에요
                </h9> <br/>

                <!-- Button -->
                <a class="btn btn-dark mt-10" href="/subscribe">
                  Shop Now <i class="fe fe-arrow-right ms-2"></i>
                </a>

              </div>
            </div>
          </div>
        </div>
        <!-- slide3 -->
        <div class="w-100 bg-cover" style="background-image: url(/uimg/maintop3.jpg);">
          <div class="container d-flex flex-column">
            <div class="row justify-content-center align-items-center pt-15 pb-12" style="min-height:90vh!important">
              <div class="col-12 col-md-7 col-lg-7 text-center text-black">

                <!-- Heading -->
                <h1 class="display-4">
                  생기발랄한 마가렛
                </h1>
                <h9 class="mb-13">
                  빈티지한 포인트를 주고싶다면 <br/>
                  데이지의 한 종류, 마가렛을 만나보세요
                </h9> <br/>

                <!-- Button -->
                <a class="btn btn-dark mt-10" href="/subscribe">
                  Shop Now <i class="fe fe-arrow-right ms-2"></i>
                </a>

              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

  </div>
</div>
<%--section1 end------------------------------------------ --%>

<%--section2---------------------------------------------- --%>
<div class="section" id="section2">
  <div id = "section2_detail">

    <!-- Start 정기구독 -->
    <div class="product-section" style="height:calc(100vh - 70px);padding:50px;margin-top: 20px">
      <div>
        <div class="row">

          <div class="mainpage-recommend" style="width:220px;margin-right:20px">
            <h2 style="width: 200px;margin-top: 50px">정기구독</h2>
            <p style="width: 200px;">100만명이 선택한 꽃 구독.<br/>이제 시작하세요</p>
            <a type="button" class="btn btn-outline-dark" href="/subs/all" style="width: 190px;padding:10px">구독상품 전체보기</a>
          </div>

          <!-- 추천 구독상품 -->
          <c:forEach var="recommandlist" items="${recommandlist}">
            <div class="col-lg-3 mainpage-recommend">

              <!-- Card -->
              <div class="card mb-7">
                <!-- Badge -->
                <div class="badge bg-white text-body card-badge card-badge-start text-uppercase">Sale</div>
                <!-- Image -->
                <div class="card-img">
                  <!-- img태그-->
                  <a  href="/subs/detail?subs_id=${recommandlist.item_id}">
                    <img class="card-img-top card-img-back" src="/uimg/${recommandlist.item_img}" alt="...">
                  </a>
                  <!-- Actions -->
                  <div class="card-actions">
                    <span class="card-action">
                      <button class="btn btn-xs btn-circle btn-white-primary" data-bs-toggle="modal" data-bs-target="#modalProduct">
                        <i class="fe fe-eye"></i>
                      </button>
                    </span>
                    <span class="card-action">
                      <button class="btn btn-xs btn-circle btn-white-primary" data-toggle="button">
                        <i class="fe fe-shopping-cart"></i>
                      </button>
                    </span>
                    <span class="card-action">
                      <button class="btn btn-xs btn-circle btn-white-primary" data-toggle="button">
                        <i class="fe fe-heart"></i>
                      </button>
                    </span>
                  </div><!-- Actions end -->
                </div> <!-- Image end -->
                <!-- Body -->
                <div class="card-body px-0">
                  <!-- Category -->
                  <div class="fs-bold">
                    <h6>${recommandlist.item_name}</h6>
                  </div>
                  <!-- Title -->
                  <div class="fw-xs">
                      ${recommandlist.item_content}
                  </div>
                  <!-- Price -->
                  <div class="fw-bold text-muted">
                      ${recommandlist.item_price}
                  </div>
                </div> <!-- Body end-->
              </div> <!-- Card end-->

            </div>
          </c:forEach> <!-- 추천 구독상품 End -->

        </div>
      </div>
    </div> <!-- 꽃선물 End -->

  </div>
</div>
<%--section2 end------------------------------------------ --%>

<%--&lt;%&ndash;section3---------------------------------------------- &ndash;%&gt;--%>
<%--<div class="section" id="section3">--%>
<%--  <div id = "section3_detail">--%>

<%--    <!-- Start 꽃선물 -->--%>
<%--    <div class="product-section" style="height:calc(100vh - 70px)">--%>
<%--      <div>--%>
<%--        <div class="row">--%>

<%--          <div class="mainpage-recommend" style="width:220px;margin-right:20px">--%>
<%--            <h2 style="width: 200px;margin-top: 50px">꽃선물</h2>--%>
<%--            <p style="width: 200px;">꽃 선물은 춘향의 전문 플로리스트에게 맡기세요</p>--%>
<%--            <a type="button" class="btn btn-outline-dark" href="/item/all" style="width: 190px;padding:10px">꽃선물 전체보기</a>--%>
<%--          </div>--%>

<%--          <!-- 추천 꽃선물 -->--%>
<%--          <c:forEach var="recommandlist" items="${recommandlist}">--%>
<%--            <div class="col-lg-3 mainpage-recommend">--%>

<%--              <!-- Card -->--%>
<%--              <div class="card mb-7">--%>
<%--                <!-- Badge -->--%>
<%--                <div class="badge bg-white text-body card-badge card-badge-start text-uppercase">Sale</div>--%>
<%--                <!-- Image -->--%>
<%--                <div class="card-img">--%>
<%--                  <!-- img태그-->--%>
<%--                  <a  href="/subs/detail?item_id=${recommandlist.item_id}">--%>
<%--                    <img class="card-img-top card-img-back" src="/uimg/${recommandlist.item_img}" alt="...">--%>
<%--                  </a>--%>
<%--                  <!-- Actions -->--%>
<%--                  <div class="card-actions">--%>
<%--                    <span class="card-action">--%>
<%--                      <button class="btn btn-xs btn-circle btn-white-primary" data-bs-toggle="modal" data-bs-target="#modalProduct">--%>
<%--                        <i class="fe fe-eye"></i>--%>
<%--                      </button>--%>
<%--                    </span>--%>
<%--                    <span class="card-action">--%>
<%--                      <button class="btn btn-xs btn-circle btn-white-primary" data-toggle="button">--%>
<%--                        <i class="fe fe-shopping-cart"></i>--%>
<%--                      </button>--%>
<%--                    </span>--%>
<%--                    <span class="card-action">--%>
<%--                      <button class="btn btn-xs btn-circle btn-white-primary" data-toggle="button">--%>
<%--                        <i class="fe fe-heart"></i>--%>
<%--                      </button>--%>
<%--                    </span>--%>
<%--                  </div><!-- Actions end -->--%>
<%--                </div> <!-- Image end -->--%>
<%--                <!-- Body -->--%>
<%--                <div class="card-body px-0">--%>
<%--                  <!-- Category -->--%>
<%--                  <div class="fs-bold">--%>
<%--                    <h6>${recommandlist.item_name}</h6>--%>
<%--                  </div>--%>
<%--                  <!-- Title -->--%>
<%--                  <div class="fw-xs">--%>
<%--                      ${recommandlist.item_content}--%>
<%--                  </div>--%>
<%--                  <!-- Price -->--%>
<%--                  <div class="fw-bold text-muted">--%>
<%--                      ${recommandlist.item_price}--%>
<%--                  </div>--%>
<%--                </div> <!-- Body end-->--%>
<%--              </div> <!-- Card end-->--%>

<%--            </div>--%>
<%--          </c:forEach> <!-- 추천 꽃선물 End -->--%>

<%--        </div>--%>
<%--      </div>--%>
<%--    </div> <!-- 꽃선물 End -->--%>

<%--  </div>--%>
<%--</div>--%>
<%--&lt;%&ndash;section3 end------------------------------------------ &ndash;%&gt;--%>

<%--&lt;%&ndash;section4&ndash;%&gt;--%>
<%--<div class="section" id="section4">--%>
<%--  <div id = "section4_detail">--%>

<%--    <!-- Start 비품 -->--%>
<%--    <div class="product-section" style="height: calc(100vh - 70px);padding: 50px;margin-top: 30px">--%>
<%--      <div>--%>
<%--        <div class="row">--%>

<%--          <div class="mainpage-recommend" style="width:220px;margin-right:20px">--%>
<%--            <h2 style="width: 200px;margin-top: 50px">화병/비품</h2>--%>
<%--            <p style="width: 200px;">꽃이 있어도, 꽃이 없어도</p>--%>
<%--            <a type="button" class="btn btn-outline-dark" href="/item/all" style="width: 190px;padding:10px">화병/비품 전체보기</a>--%>
<%--          </div>--%>

<%--          <!-- 추천 비품 -->--%>
<%--          <c:forEach var="recommandlist" items="${recommandlist}">--%>
<%--            <div class="col-lg-3 mainpage-recommend">--%>

<%--              <!-- Card -->--%>
<%--              <div class="card mb-7">--%>
<%--                <!-- Badge -->--%>
<%--                <div class="badge bg-white text-body card-badge card-badge-start text-uppercase">Sale</div>--%>
<%--                <!-- Image -->--%>
<%--                <div class="card-img">--%>
<%--                  <!-- img태그-->--%>
<%--                  <a  href="/subs/detail?item_id=${recommandlist.item_id}">--%>
<%--                    <img class="card-img-top card-img-back" src="/uimg/${recommandlist.item_img}" alt="...">--%>
<%--                  </a>--%>
<%--                  <!-- Actions -->--%>
<%--                  <div class="card-actions">--%>
<%--                    <span class="card-action">--%>
<%--                      <button class="btn btn-xs btn-circle btn-white-primary" data-bs-toggle="modal" data-bs-target="#modalProduct">--%>
<%--                        <i class="fe fe-eye"></i>--%>
<%--                      </button>--%>
<%--                    </span>--%>
<%--                    <span class="card-action">--%>
<%--                      <button class="btn btn-xs btn-circle btn-white-primary" data-toggle="button">--%>
<%--                        <i class="fe fe-shopping-cart"></i>--%>
<%--                      </button>--%>
<%--                    </span>--%>
<%--                    <span class="card-action">--%>
<%--                      <button class="btn btn-xs btn-circle btn-white-primary" data-toggle="button">--%>
<%--                        <i class="fe fe-heart"></i>--%>
<%--                      </button>--%>
<%--                    </span>--%>
<%--                  </div><!-- Actions end -->--%>
<%--                </div> <!-- Image end -->--%>
<%--                <!-- Body -->--%>
<%--                <div class="card-body px-0">--%>
<%--                  <!-- Category -->--%>
<%--                  <div class="fs-bold">--%>
<%--                    <h6>${recommandlist.item_name}</h6>--%>
<%--                  </div>--%>
<%--                  <!-- Title -->--%>
<%--                  <div class="fw-xs">--%>
<%--                      ${recommandlist.item_content}--%>
<%--                  </div>--%>
<%--                  <!-- Price -->--%>
<%--                  <div class="fw-bold text-muted">--%>
<%--                      ${recommandlist.item_price}--%>
<%--                  </div>--%>
<%--                </div> <!-- Body end-->--%>
<%--              </div> <!-- Card end-->--%>

<%--            </div>--%>
<%--          </c:forEach> <!-- 추천 비품 End -->--%>

<%--        </div>--%>
<%--      </div>--%>
<%--    </div> <!-- 비품 End -->--%>

<%--  </div>--%>
<%--</div>--%>

<%--&lt;%&ndash;section4 end------------------------------------------ &ndash;%&gt;--%>

<%--&lt;%&ndash;section5---------------------------------------------- &ndash;%&gt;--%>
<%--<div class="section" id="section5">--%>
<%--  <div id = "section5_detail">--%>
<%--    <!-- BRANDS -->--%>
<%--    <section class="py-12 bg-light">--%>
<%--      <div class="container">--%>
<%--        <div class="row">--%>
<%--          <div class="col-12 text-center">--%>

<%--            <!-- Heading -->--%>
<%--            <h2 class="mb-3">@shopper</h2>--%>

<%--            <!-- Subheading -->--%>
<%--            <p class="mb-10 fs-lg text-gray-500">--%>
<%--              Appear, dry there darkness they're seas, dry waters.--%>
<%--            </p>--%>

<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="row mx-n1 mb-10">--%>
<%--          <div class="col-6 col-sm-4 col-md px-1">--%>

<%--            <!-- Card -->--%>
<%--            <div class="card mb-2">--%>

<%--              <!-- Image -->--%>
<%--              <img src="assets/img/products/product-16.jpg" alt="..." class="card-img">--%>

<%--              <!-- Overlay -->--%>
<%--              <a class="card-img-overlay card-img-overlay-hover align-items-center bg-dark-40" href="blog-post.jsp">--%>
<%--                <p class="my-0 fs-xxs text-center text-white">--%>
<%--                  <i class="fe fe-heart me-2"></i> 248 <i class="fe fe-message-square me-2 ms-3"></i> 7--%>
<%--                </p>--%>
<%--              </a>--%>

<%--            </div>--%>

<%--          </div>--%>
<%--          <div class="col-6 col-sm-4 col-md px-1">--%>

<%--            <!-- Card -->--%>
<%--            <div class="card mb-2">--%>

<%--              <!-- Image -->--%>
<%--              <img src="assets/img/products/product-17.jpg" alt="..." class="card-img">--%>

<%--              <!-- Overlay -->--%>
<%--              <a class="card-img-overlay card-img-overlay-hover align-items-center bg-dark-40" href="blog-post.jsp">--%>
<%--                <p class="my-0 fs-xxs text-center text-white">--%>
<%--                  <i class="fe fe-heart me-2"></i> 248 <i class="fe fe-message-square me-2 ms-3"></i> 7--%>
<%--                </p>--%>
<%--              </a>--%>

<%--            </div>--%>

<%--          </div>--%>
<%--          <div class="col-6 col-sm-4 col-md px-1">--%>

<%--            <!-- Card -->--%>
<%--            <div class="card mb-2">--%>

<%--              <!-- Image -->--%>
<%--              <img src="assets/img/products/product-18.jpg" alt="..." class="card-img">--%>

<%--              <!-- Overlay -->--%>
<%--              <a class="card-img-overlay card-img-overlay-hover align-items-center bg-dark-40" href="blog-post.jsp">--%>
<%--                <p class="my-0 fs-xxs text-center text-white">--%>
<%--                  <i class="fe fe-heart me-2"></i> 248 <i class="fe fe-message-square me-2 ms-3"></i> 7--%>
<%--                </p>--%>
<%--              </a>--%>

<%--            </div>--%>

<%--          </div>--%>
<%--          <div class="col-6 col-sm-4 col-md px-1">--%>

<%--            <!-- Card -->--%>
<%--            <div class="card mb-2">--%>

<%--              <!-- Image -->--%>
<%--              <img src="assets/img/products/product-19.jpg" alt="..." class="card-img">--%>

<%--              <!-- Overlay -->--%>
<%--              <a class="card-img-overlay card-img-overlay-hover align-items-center bg-dark-40" href="blog-post.jsp">--%>
<%--                <p class="my-0 fs-xxs text-center text-white">--%>
<%--                  <i class="fe fe-heart me-2"></i> 248 <i class="fe fe-message-square me-2 ms-3"></i> 7--%>
<%--                </p>--%>
<%--              </a>--%>

<%--            </div>--%>

<%--          </div>--%>
<%--          <div class="col-6 col-sm-4 col-md px-1">--%>

<%--            <!-- Card -->--%>
<%--            <div class="card">--%>

<%--              <!-- Image -->--%>
<%--              <img src="assets/img/products/product-20.jpg" alt="..." class="card-img">--%>

<%--              <!-- Overlay -->--%>
<%--              <a class="card-img-overlay card-img-overlay-hover align-items-center bg-dark-40" href="blog-post.jsp">--%>
<%--                <p class="my-0 fs-xxs text-center text-white">--%>
<%--                  <i class="fe fe-heart me-2"></i> 248 <i class="fe fe-message-square me-2 ms-3"></i> 7--%>
<%--                </p>--%>
<%--              </a>--%>

<%--            </div>--%>

<%--          </div>--%>
<%--          <div class="col-6 col-sm-4 col-md px-1">--%>

<%--            <!-- Card -->--%>
<%--            <div class="card">--%>

<%--              <!-- Image -->--%>
<%--              <img src="assets/img/products/product-21.jpg" alt="..." class="card-img">--%>

<%--              <!-- Overlay -->--%>
<%--              <a class="card-img-overlay card-img-overlay-hover align-items-center bg-dark-40" href="blog-post.jsp">--%>
<%--                <p class="my-0 fs-xxs text-center text-white">--%>
<%--                  <i class="fe fe-heart me-2"></i> 248 <i class="fe fe-message-square me-2 ms-3"></i> 7--%>
<%--                </p>--%>
<%--              </a>--%>

<%--            </div>--%>

<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="row">--%>
<%--          <div class="col-4 col-sm-3 col-md text-center">--%>

<%--            <!-- Brand -->--%>
<%--            <img src="assets/img/brands/gray-350/mango.svg" alt="..." class="img-fluid mb-7 mb-md-0">--%>

<%--          </div>--%>
<%--          <div class="col-4 col-sm-3 col-md text-center">--%>

<%--            <!-- Brand -->--%>
<%--            <img src="assets/img/brands/gray-350/zara.svg" alt="..." class="img-fluid mb-7 mb-md-0">--%>

<%--          </div>--%>
<%--          <div class="col-4 col-sm-3 col-md text-center">--%>

<%--            <!-- Brand -->--%>
<%--            <img src="assets/img/brands/gray-350/reebok.svg" alt="..." class="img-fluid mb-7 mb-md-0">--%>

<%--          </div>--%>
<%--          <div class="col-4 col-sm-3 col-md text-center">--%>

<%--            <!-- Brand -->--%>
<%--            <img src="assets/img/brands/gray-350/asos.svg" alt="..." class="img-fluid mb-7 mb-md-0">--%>

<%--          </div>--%>
<%--          <div class="col-4 col-sm-3 col-md text-center">--%>

<%--            <!-- Brand -->--%>
<%--            <img src="assets/img/brands/gray-350/stradivarius.svg" alt="..." class="img-fluid mb-6 mb-sm-0">--%>

<%--          </div>--%>
<%--          <div class="col-4 col-sm-3 col-md text-center">--%>

<%--            <!-- Brand -->--%>
<%--            <img src="assets/img/brands/gray-350/adidas.svg" alt="..." class="img-fluid mb-6 mb-sm-0">--%>

<%--          </div>--%>
<%--          <div class="col-4 col-sm-3 col-md text-center">--%>

<%--            <!-- Brand -->--%>
<%--            <img src="assets/img/brands/gray-350/bershka.svg" alt="..." class="img-fluid">--%>

<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </section>--%>
<%--  </div>--%>
<%--</div>   &lt;%&ndash;section5 end&ndash;%&gt;--%>