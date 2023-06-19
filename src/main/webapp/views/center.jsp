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




<!-- WELCOME -->
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
            <h2 class="display-4">
              생기발랄한 마가렛
            </h2>
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
<!-- </section> -->

<!-- DESCRIPTION 1-->
<section class="py-12 bg-white">
  <div class="container">
    <div class="row">

      <div class="col-12 col-lg-3">
        <!-- Heading -->
        <h2 style="width: 200px;margin-top: 50px">정기구독</h2>
        <p style="width: 200px;">100만명이 선택한 꽃 구독.<br/>이제 시작하세요</p>
        <a type="button" class="btn btn-outline-dark" href="/subs/all" style="width: 190px;padding:10px">구독상품 전체보기</a>
      </div>

      <!-- 추천 구독상품 -->
      <c:forEach var="recommandlist" items="${recommandlist}">
        <div class="col-12 col-md">

          <!-- Card -->
          <div class="card mb-7 mb-md-0 shadow">
            <!-- Badge -->
            <div class="badge bg-white text-body card-badge card-badge-start text-uppercase">Sale</div>
            <!-- Image -->
            <div class="card-img-top">
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
</section>

<!-- DESCRIPTION 2-->
<section class="py-12 bg-black">
  <div class="container">
    <div class="row">

      <div class="col-12 col-lg-3">
        <!-- Heading -->
        <h2 style="width: 200px;margin-top: 50px;color: white">꽃선물</h2>
        <p style="width: 200px;color:white;">꽃 선물은 춘향의 전문 플로리스트에게 맡기세요</p>
        <a type="button" class="btn btn-outline-white" href="/item/all" style="width: 190px;padding:10px">꽃선물 전체보기</a>
      </div>

      <!-- 추천 꽃선물 -->
      <c:forEach var="recommandlist" items="${recommandlist}">
        <div class="col-12 col-md">

          <!-- Card -->
          <div class="card mb-7 mb-md-0 shadow">
            <!-- Badge -->
            <div class="badge bg-white text-body card-badge card-badge-start text-uppercase">Sale</div>
            <!-- Image -->
            <div class="card-img-top">
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
      </c:forEach> <!-- 추천 꽃선물 End -->

    </div>
  </div>
</section>

<!-- DESCRIPTION 3-->
<section class="py-12 bg-white">
  <div class="container">
    <div class="row">

      <div class="col-12 col-lg-3">
        <!-- Heading -->
        <h2 style="width: 200px;margin-top: 50px">화병/비품</h2>
        <p style="width: 200px;">꽃이 있어도, 꽃이 없어도</p>
        <a type="button" class="btn btn-outline-dark" href="/item/all" style="width: 190px;padding:10px">꽃선물 전체보기</a>
      </div>

      <!-- 추천 꽃선물 -->
      <c:forEach var="recommandlist" items="${recommandlist}">
        <div class="col-12 col-md">

          <!-- Card -->
          <div class="card mb-7 mb-md-0 shadow">
            <!-- Badge -->
            <div class="badge bg-white text-body card-badge card-badge-start text-uppercase">Sale</div>
            <!-- Image -->
            <div class="card-img-top">
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
      </c:forEach> <!-- 추천 화병/비품 End -->

    </div>
  </div>
</section>


<!-- IMAGE -->
<section class="pt-12">
  <div class="container bg-h-100" style="background-image: url(/uimg/about_review.jpg);">
    <div class="row">
      <div class="col-12 py-13 text-center">
        <!-- Button -->
        <a href="#!" class="btn btn-white px-8">@chunhyang</a>
      </div>
    </div>
  </div>
</section>

<!-- REVIEWS -->
<section class="py-12 border-bottom" id="reviews">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-12 col-md-8 col-lg-6 col-xl-4">

        <!-- Heading -->
        <h2 class="mb-12 text-center">
          A positive Experience in many ways.
        </h2>

      </div>
    </div>
    <div class="row">
      <div class="col-12 col-md-6 col-lg-4">

        <!-- Card -->
        <div class="card card-lg mb-11">
          <div class="card-body text-center bg-light">

            <!-- Avatar -->
            <img src="assets/img/avatars/avatar-1.jpg" alt="..." class="img-fluid rounded-circle mb-7 mt-n11" style="max-width: 100px;">

            <!-- Text -->
            <blockquote class="blockquote mb-0">

              <!-- Text -->
              <p class="fs-lg fst-normal">
                From creepeth said moved given
                divide make multiply of him shall itself
                also above second doesn't unto
                created saying land herb sea midst
                night wherein.
              </p>

              <!-- Rating -->
              <div class="rating fs-xs text-warning mb-2" data-value="5">
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
              </div>

              <!-- Footer -->
              <footer class="blockquote-footer">
                Catherine Hicks, 21 Jul 2019
              </footer>

            </blockquote>

          </div>
        </div>

        <!-- Card -->
        <div class="card card-lg mb-11">
          <div class="card-body text-center bg-light">

            <!-- Avatar -->
            <img src="assets/img/avatars/avatar-4.jpg" alt="..." class="img-fluid rounded-circle mb-7 mt-n11" style="max-width: 100px;">

            <!-- Text -->
            <blockquote class="blockquote mb-0">

              <!-- Text -->
              <p class="fs-lg fst-normal">
                Creeping his under doesn't.
                Above two fourth dry open blessed
                our creeping, made great.
              </p>

              <!-- Rating -->
              <div class="rating fs-xs text-warning mb-2" data-value="5">
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
              </div>

              <!-- Footer -->
              <footer class="blockquote-footer">
                Jason Griffith, 05 Jul 2019
              </footer>

            </blockquote>

          </div>
        </div>

      </div>
      <div class="col-12 col-md-7 col-lg-4">

        <!-- Card -->
        <div class="card card-lg mb-11">
          <div class="card-body text-center bg-light">

            <!-- Avatar -->
            <img src="assets/img/avatars/avatar-2.jpg" alt="..." class="img-fluid rounded-circle mb-7 mt-n11" style="max-width: 100px;">

            <!-- Text -->
            <blockquote class="blockquote mb-0">

              <!-- Text -->
              <p class="fs-lg fst-normal">
                Gathered to were female. That dry
                our so likeness light cattle his you'll
                fill blessed replenish doesn't god
                night tree.
              </p>

              <!-- Rating -->
              <div class="rating fs-xs text-warning mb-2" data-value="5">
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
              </div>

              <!-- Footer -->
              <footer class="blockquote-footer">
                Daisy Turner, 18 Jul 2019
              </footer>

            </blockquote>

          </div>
        </div>

        <!-- Card -->
        <div class="card card-lg mb-11">
          <div class="card-body text-center bg-light">

            <!-- Avatar -->
            <img src="assets/img/avatars/avatar-5.jpg" alt="..." class="img-fluid rounded-circle mb-7 mt-n11" style="max-width: 100px;">

            <!-- Text -->
            <blockquote class="blockquote mb-0">

              <!-- Text -->
              <p class="fs-lg fst-normal">
                Yielding place upon heaven
                created sea So fly you'll had years
                which good herb hath moveth for
                grass. Created. Wherein, had every
                were, face you'll made from.
              </p>

              <!-- Rating -->
              <div class="rating fs-xs text-warning mb-2" data-value="5">
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
              </div>

              <!-- Footer -->
              <footer class="blockquote-footer">
                Katrina Willis, 30 Jun 2019
              </footer>

            </blockquote>

          </div>
        </div>

      </div>
      <div class="col-12 col-lg-4">
        <div class="row">
          <div class="col-12 col-md-6 col-lg-12">

            <!-- Card -->
            <div class="card card-lg mb-11">
              <div class="card-body text-center bg-light">

                <!-- Avatar -->
                <img src="assets/img/avatars/avatar-3.jpg" alt="..." class="img-fluid rounded-circle mb-7 mt-n11" style="max-width: 100px;">

                <!-- Text -->
                <blockquote class="blockquote mb-0">

                  <!-- Text -->
                  <p class="fs-lg fst-normal">
                    Abundantly behold. God given
                    creature she'd, greater gathering his
                    had thing let you're firmament can't
                    he sixth. Without evening. Given
                    appear days signs abundantly and
                    brought female bring.
                  </p>

                  <!-- Rating -->
                  <div class="rating fs-xs text-warning mb-2" data-value="4">
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
                  </div>

                  <!-- Footer -->
                  <footer class="blockquote-footer">
                    Logan Edwards, 11 Jul 2019
                  </footer>

                </blockquote>

              </div>
            </div>

          </div>
          <div class="col-12 col-md-6 col-lg-12">

            <!-- Card -->
            <div class="card card-lg mb-11">
              <div class="card-body text-center bg-light">

                <!-- Avatar -->
                <img src="assets/img/avatars/avatar-6.jpg" alt="..." class="img-fluid rounded-circle mb-7 mt-n11" style="max-width: 100px;">

                <!-- Text -->
                <blockquote class="blockquote mb-0">

                  <!-- Text -->
                  <p class="fs-lg fst-normal">
                    Place whose a give upon seed
                    Yielding don't cattle living.
                  </p>

                  <!-- Rating -->
                  <div class="rating fs-xs text-warning mb-2" data-value="5">
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
                  </div>

                  <!-- Footer -->
                  <footer class="blockquote-footer">
                    George Sanders, 17 Jun 2019
                  </footer>

                </blockquote>

              </div>
            </div>

          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-12">

        <!-- Link -->
        <div class="text-center">
          <a class="link-underline" href="#!">후기 더보기</a>
        </div>

      </div>
    </div>
  </div>
</section>
