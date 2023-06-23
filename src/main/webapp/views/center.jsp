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

  @media (max-width: 1200px) {
    .main_slide_title {
      font-size: 50px;
    }
  }
  @media (max-width: 992px) {
    .main_slide_title {
      font-size: 45px;
    }
    .main_slide_subtitle{
      font-size: 32px;
    }
  }
  @media (max-width: 405px) {
    .main_slide_title {
      font-size: 40px;
    }
    .main_slide_subtitle{
      font-size: 28px;
    }
  }
  @media (max-width: 376px) {
    .main_slide_title {
      font-size: 35px;
    }
    .main_slide_subtitle{
      font-size: 22px;
    }
    h9.mb-13{
      font-size: 13px;
    }
  }
</style>
<%--  카카오공유하기--%>
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.2.0/kakao.min.js"
        integrity="sha384-x+WG2i7pOR+oWb6O5GV5f1KN2Ko6N7PTGPS7UlasYWNxZMKQA63Cj/B2lbUmUfuC" crossorigin="anonymous"></script>

<script>

  $( function() {
    Kakao.init('c91de3a9ba7f48da3cb562c2fc973026');
    Kakao.Share.createDefaultButton({
      container: '#kakaotalk-sharing-btn1',
      objectType: 'feed',
      content: {
        title: '오늘의 꽃 - ${todayFlower.flowerName}',
        description: '꽃말: ${todayFlower.flowerMeaning}',
        imageUrl:
                '${todayFlower.imgUrl1}',
        link: {
          // [내 애플리케이션] > [플랫폼] 에서 등록한 사이트 도메인과 일치해야 함
          mobileWebUrl: 'http://172.16.20.108/flowerdictionary/detail?dataNo=${todayFlower.dataNo}',
          webUrl: 'http://172.16.20.108/flowerdictionary/detail?dataNo=${todayFlower.dataNo}',
        },
      },
      buttons: [
        {
          title: '자세히 보기',
          link: {
            mobileWebUrl: 'http://172.16.20.108/flowerdictionary/detail?dataNo=${todayFlower.dataNo}',
            webUrl: 'http://172.16.20.108/flowerdictionary/detail?dataNo=${todayFlower.dataNo}',
          },
        },
      ],
    });
  })
</script>
<%--카카오공유하기--%>



<!-- WELCOME -->
<!-- PROMO ( 검은배너 ) -->
<div class="py-3 bg-dark bg-pattern" style="position:sticky;z-index: 1;">
  <div class="container">
    <div class="row">
      <div class="col-12">

        <!-- Text -->
        <div class="text-center text-white">
            <span class="heading-xxs letter-spacing-xl">
              🌸🌸[<span id="server_time"></span>]<span class="today_txt1">오늘의 꽃은</span><span style="text-decoration: underline white; cursor: pointer">
                <a data-bs-toggle="modal" data-bs-target="#todayflower">${todayFlower.flowerName}</a>
                </span><span class="today_txt2">입니다</span>🌸🌸
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
            <h1 class="main_slide_title display-4 mb-10" style="font-weight: bold">
              Better Things<br/>In a Better Way
            </h1>
            <!-- Links -->
            <a type="button" class="btn btn-outline-dark" href="/subs/subscribe" style="opacity: 70%;margin:10px">정기구독</a>
            <a type="button" class="btn btn-outline-dark" href="/item/all" style="opacity: 70%;margin:10px">꽃선물</a>

          </div>
        </div>
      </div>
    </div>
    <!-- slide2 -->
    <div class="w-100 bg-cover" style="background-image: url(/uimg/maintop2.jpg);display: inline-block;margin-left: auto;">
      <div class="container d-flex flex-column">
        <div class="row justify-content-center align-items-center pt-15 pb-12" style="min-height:90vh!important">
          <div class="col-12 col-md-7 col-lg-7 text-center text-black">

            <!-- Heading -->
            <h6>
              VASE EDITION
            </h6>
            <h1 class="main_slide_title display-4" style="font-weight: bold">
              PLEATS EDITION
            </h1>
            <h1 class="main_slide_subtitle display-6 mb-5">
              화병&라그라스 패키지 오픈
            </h1>
            <h9 class="mb-13">
              꽃이 있어도 꽃이 없어도 공간에 무드를 더할거에요
            </h9> <br/>

            <!-- Button -->
            <a type="button" class="btn btn-outline-dark" href="/bipum/all" style="opacity: 70%;margin:10px">상품 보러가기</a>

          </div>
        </div>
      </div>
    </div>

    <!-- slide3 -->
    <div class="w-100 bg-cover" style="background-image: url(/uimg/maintop4.jpg);">
      <div class="container d-flex flex-column">
        <div class="row justify-content-center align-items-center pt-15 pb-12" style="min-height:90vh!important">
          <div class="col-12 col-md-7 col-lg-7 text-center text-white">

            <h6>
              COLLABORATION
            </h6>
            <!-- Heading -->
            <h1 style="font-weight: bold">
              CHUNHYANG X KB
            </h1>
            <h4 style="font-weight: bold">
              또 한번의 놀라운 콜라보에<br/>초대합니다
            </h4>
            <h9 class="mb-13">
              알파코 팝업스토어에 초대합니다
            </h9> <br/>

            <!-- Button -->
            <a type="button" class="btn btn-outline-white" href="/about" style="opacity: 90%;margin:10px">보러가기</a>

          </div>
        </div>
      </div>
    </div>

    <!-- slide4 -->
    <div class="w-100 bg-cover" style="background-image: url(/uimg/maintop3.jpg);">
      <div class="container d-flex flex-column">
        <div class="row justify-content-center align-items-center pt-15 pb-12" style="min-height:90vh!important">
          <div class="col-12 col-md-7 col-lg-7 text-center text-black">

            <!-- Heading -->
            <h3 class="main_slide_title display-4" style="font-weight: bold">
              생기발랄한 마가렛
            </h3>
            <h9 class="mb-13">
              빈티지한 포인트를 주고싶다면 <br/>
              데이지의 한 종류, 마가렛을 만나보세요
            </h9> <br/>

            <!-- Button -->
            <a type="button" class="btn btn-outline-dark" href="/item/all" style="opacity: 70%;margin:10px">보러가기</a>

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
        <h3 class="mb-10 text-center text-lg-start">정기구독
          <p style="font-size: 16px;margin-top: 20px">100만명이 선택한 꽃 구독.<br/>이제 시작하세요</p>
          <a type="button" class="btn btn-outline-dark" href="/subs/all" style="width: 190px;padding:10px">구독상품 전체보기</a>
        </h3>
         </div>

      <!-- 추천 구독상품 -->
      <c:forEach var="recommandlist" items="${recommandlist}">
        <div class="col-12 col-md">

          <!-- Card -->
          <div class="card mb-7" data-toggle="card-collapse">
            <!-- Badge -->
            <div class="badge bg-white text-body card-badge card-badge-start text-uppercase">Sale</div>
            <!-- Image -->
            <a  href="/subs/detail?subsitem_id=${recommandlist.subsitem_id}">
              <img class="card-img-top card-img-back" src="/uimg/${recommandlist.subsitem_img}" alt="...">
            </a>
            <!-- Collapse -->
            <div class="card-collapse-parent">
              <!-- Body -->
              <div class="card-body px-0 bg-white text-center">
              <!-- Category -->
              <div class="fs-bold">
                <h6>${recommandlist.subsitem_name}</h6>
              </div>
              <!-- Title -->
              <div class="fw-xs">
                  ${recommandlist.subsitem_content}
              </div>
              <!-- Price -->
              <div class="fw-bold text-muted">
                <fmt:formatNumber value="${recommandlist.subsitem_price}" pattern="###,###원"/>
              </div>
            </div> <!-- Body end-->

            <!-- Footer -->
            <div class="card-collapse collapse">
              <div class="card-footer px-0 pt-0 bg-white text-center">
                <button class="btn btn-xs btn-circle btn-white-primary" data-toggle="button">
                  <i class="fe fe-heart"></i>
                </button>
              </div>
            </div>
          </div><!-- Collapse end -->
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
        <h3 class="mb-10 text-center text-lg-start" style="color:white;">꽃선물
          <p style="font-size: 16px;color:white;margin-top: 20px">꽃 선물은 <br/>전문 플로리스트에게 맡기세요</p>
          <a type="button" class="btn btn-outline-white" href="/item/all" style="width: 190px;padding:10px">꽃선물 전체보기</a>
        </h3>
      </div>

      <!-- 추천 꽃선물 -->
      <c:forEach var="recommandlist1" items="${recommandlist1}">
        <div class="col-12 col-md">

          <!-- Card -->
          <div class="card mb-7" data-toggle="card-collapse">
            <!-- Badge -->
            <div class="badge bg-white text-body card-badge card-badge-start text-uppercase">Sale</div>
            <!-- Image -->
            <a  href="/item/detail?item_id=${recommandlist1.item_id}">
              <img class="card-img-top card-img-back" src="/uimg/${recommandlist1.item_img}" alt="...">
            </a>
            <!-- Collapse -->
            <div class="card-collapse-parent">
              <!-- Body -->
              <div class="card-body px-0 bg-black text-center" style="color: white">
                <!-- Category -->
                <div class="fs-bold">
                  <h6>${recommandlist1.item_name}</h6>
                </div>
                <!-- Title -->
                <div class="fw-xs">
                    ${recommandlist1.item_content}
                </div>
                <!-- Price -->
                <div class="fw-bold text-muted">
                  <fmt:formatNumber value="${recommandlist1.item_price}" pattern="###,###원"/>
                </div>
                <!-- Footer -->
                <div class="card-footer px-0 pt-0 bg-black text-center">
                  <button class="btn btn-xs btn-circle btn-black-primary" data-toggle="button">
                    <i class="fe fe-heart" style="color:white;"></i>
                  </button>
                </div>
              </div> <!-- Body end-->

<%--              <!-- Footer -->--%>
<%--              <div class="card-collapse collapse">--%>
<%--                <div class="card-footer px-0 pt-0 bg-black ">--%>
<%--                  --%>
<%--                </div>--%>
<%--              </div>--%>
            </div><!-- Collapse end -->
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
        <h3 class="mb-10 text-center text-lg-start">화병/비품
          <p style="font-size: 16px;margin-top: 20px">꽃이 있어도, 꽃이 없어도</p>
          <a type="button" class="btn btn-outline-dark" href="/bipum/all" style="width: 190px;padding:10px">화병/비품 전체보기</a>
        </h3>
      </div>

      <!-- 추천 화병비품 -->
      <c:forEach var="recommandlist2" items="${recommandlist2}">
        <div class="col-12 col-md">

          <!-- Card -->
          <div class="card mb-7" data-toggle="card-collapse">
            <!-- Badge -->
            <div class="badge bg-white text-body card-badge card-badge-start text-uppercase">Sale</div>
            <!-- Image -->
            <a  href="/item/detail?item_id=${recommandlist2.item_id}">
              <img class="card-img-top card-img-back" src="/uimg/${recommandlist2.item_img}" alt="...">
            </a>
            <!-- Collapse -->
            <div class="card-collapse-parent">
              <!-- Body -->
              <div class="card-body px-0 bg-white text-center">
                <!-- Category -->
                <div class="fs-bold">
                  <h6>${recommandlist2.item_name}</h6>
                </div>
                <!-- Title -->
                <div class="fw-xs">
                    ${recommandlist2.item_content}
                </div>
                <!-- Price -->
                <div class="fw-bold text-muted">
                  <fmt:formatNumber value="${recommandlist2.item_price}" pattern="###,###원"/>
                </div>
              </div> <!-- Body end-->

              <!-- Footer -->
              <div class="card-collapse collapse">
                <div class="card-footer px-0 pt-0 bg-white text-center">
                  <button class="btn btn-xs btn-circle btn-white-primary" data-toggle="button">
                    <i class="fe fe-heart"></i>
                  </button>
                </div>
              </div>
            </div><!-- Collapse end -->
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

<%--===============================================오늘의 꽃 시작==========================================--%>
<div class="modal fade" id="todayflower" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">

      <!-- Close -->
      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
        <i class="fe fe-x" aria-hidden="true"></i>
      </button>

      <!-- Content -->
      <div class="row gx-0">
        <div class="col-12 col-lg-5">
          <!-- Image -->
          <img class="img-fluid" src="${todayFlower.imgUrl1}" alt="오늘의 꽃 이미지 출력 에러">
          <img class="img-fluid" src="${todayFlower.imgUrl2}" alt="오늘의 꽃 이미지 출력 에러">
        </div>
        <div class="col-12 col-lg-7 d-flex flex-column">

          <!-- Body -->
          <div class="modal-body my-auto py-8">
            <!-- Heading -->
            <h4>오늘의 꽃: ${todayFlower.flowerName}</h4>
            <!-- Text -->
            <p class="mb-7 fs-lg">
              꽃   말: ${todayFlower.flowerMeaning}
            </p>
            <hr>
            <H8>${todayFlower.fContent}</H8>
            <hr>
            <H8>${todayFlower.fMonthDay}</H8>
            <br>
            <a id="kakaotalk-sharing-btn1" href="javascript:">
              <img src="https://developers.kakao.com/assets/img/about/logos/kakaotalksharing/kakaotalk_sharing_btn_medium.png"
                   alt="카카오톡 공유 보내기 버튼" style="width:8%;"/>
            </a>
            <a id="facebook-sharing-btn" href="javascript:">
              <img src="/uimg/facebook.png"
                   alt="페이스북 공유 보내기 버튼" style="width:10%;"/>
            </a>
            <a id="twitter-sharing-btn" href="javascript:">
              <img src="/uimg/twitter.png"
                   alt="트위터 공유 보내기 버튼" style="width:8%;"/>
            </a>
          </div>
          <!-- Footer -->
          <div class="modal-footer pt-0">
            <!-- 더이상보지 않기 체크박스!!기능구현은 안했음.. -->
            <div class="form-check">
              <input class="form-check-input" id="modalCheckbox" type="checkbox">
              <label class="form-check-label fs-xs" for="modalCheckbox">
                더이상 보지않기
              </label>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<%--===============================================오늘의 꽃 끝==========================================--%>
