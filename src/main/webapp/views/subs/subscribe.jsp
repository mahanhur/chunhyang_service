<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<style>
  @media (max-width: 992px) {
    h1.display-4.mb-9{
      font-size: 55px;
    }
  }
  @media (max-width: 768px) {
    img.subsinfo_icon{
      width: 80px;
    }
  }
  @media (max-width: 576px) {
    h1.display-4.mb-9{
      padding:0px 10px;
    }
  }
  @media (max-width: 536px) {
    div.brand.lift.mb-7.text-center{
      padding: 20px;
    }
  }

  h6.heading-xxs.mb-1{
    font-size: 18px;
  }

  @media (max-width: 516px) {
    div.subsinfo_detail{
      margin-left: 15px;
    }
    h5{
      font-size: 20px;
    }
  }
  @media (max-width: 479px) {
    div.brand.lift.mb-7.text-center{
      padding: 15px;
    }
  }
  @media (max-width: 449px) {
    h5{
      font-size: 18px;
    }
  }
  @media (max-width: 416px) {
    h5{
      font-size: 16px;
    }

  }
</style>

    <!-- WELCOME -->
    <section class="position-relative mb-4 py-13">

      <!-- Cover -->
      <div class="container-cover">
        <div class="container-fluid bg-cover" style="background-image: url(/uimg/shopmainimage1.jpg);">
          <div class="row" style="padding: 0 30px">
            <div class="col d-none d-xl-block bg-cover" style="background-image: url(/uimg/a_maintop1.jpg);margin: 80px 10px 0px 10px"></div>
            <div class="col d-none d-lg-block bg-cover" style="background-image: url(/uimg/a_maintop2.jpg);margin: 80px 10px 0px 10px"></div>
            <div class="col d-none d-md-block bg-cover" style="background-image: url(/uimg/a_maintop3.jpg);margin: 80px 10px 0px 10px"></div>
            <div class="col bg-cover" style="background-image: url(/uimg/a_maintop4.jpg);margin: 80px 10px 0px 10px"></div>
          </div>
        </div>
      </div>

      <!-- Content -->
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-10 col-md-8 col-lg-6 col-xl-5">

            <!-- Card -->
            <div class="card card-xl" style="border-radius: 30px 0;">
              <div class="card-body text-center" style="padding: 30px;">

                <!-- Heading -->
                <h3 class="mb-6">春香傳</h3>

                <!-- Text -->
                <p class="mb-0">
                  봄의 향기를 전달합니다.
                </p>
                <p class="mb-4">
                  일상을 행복으로, 생화 정기구독
                </p>

                <!-- Button -->
                <a class="btn btn-dark btn-sm mb-n12" href="/subs/all">
                  지금 신청하기<i class="fe fe-arrow-right ms-2"></i>
                </a>

              </div>
            </div>

          </div>
        </div>
      </div>

    </section>


<!-- FEATURES -->
<section class="py-9">
  <div class="container">
    <div class="row">
      <div class="col-12 col-md-6 col-lg-3">

        <!-- Item -->
        <div class="d-flex mb-6 mb-lg-0">

          <!-- Icon -->
          <i class="fe fe-plus fs-lg text-primary"></i>

          <!-- Body -->
          <div class="ms-6">

            <!-- Heading -->
            <h6 class="heading-xxs mb-1">
              꽃 구독
            </h6>

            <!-- Text -->
            <p class="mb-0 fs-sm text-muted">
              포인트로 정기결제
            </p>

          </div>

        </div>

      </div>
      <div class="col-12 col-md-6 col-lg-3">

        <!-- Item -->
        <div class="d-flex mb-6 mb-lg-0">

          <!-- Icon -->
          <i class="fe fe-thumbs-up fs-lg text-primary"></i>

          <!-- Body -->
          <div class="ms-6">

            <!-- Heading -->
            <h6 class="mb-1 heading-xxs">
              (9900원 상당)
            </h6>

            <!-- Text -->
            <p class="mb-0 fs-sm text-muted">
              시그니처 화병 증정
            </p>

          </div>

        </div>

      </div>
      <div class="col-12 col-md-6 col-lg-3">

        <!-- Item -->
        <div class="d-flex mb-6 mb-md-0">

          <!-- Icon -->
          <i class="fe fe-award fs-lg text-primary"></i>

          <!-- Body -->
          <div class="ms-6">

            <!-- Heading -->
            <h6 class="mb-1 heading-xxs">
              모든 회차
            </h6>

            <!-- Text -->
            <p class="mb-0 fs-sm text-muted">
              꽃 영양제 무료 제공
            </p>

          </div>

        </div>

      </div>
      <div class="col-12 col-md-6 col-lg-3">

        <!-- Item -->
        <div class="d-flex">

          <!-- Icon -->
          <i class="fe fe-box fs-lg text-primary"></i>

          <!-- Body -->
          <div class="ms-6">

            <!-- Heading -->
            <h6 class="mb-1 heading-xxs">
              (6개월 이상 신규 구독시)
            </h6>

            <!-- Text -->
            <p class="mb-0 fs-sm text-muted">
              스타터 키트 증정
            </p>

          </div>

        </div>

      </div>
    </div>
  </div>
</section>

<!-- SALE -->
<section class="py-10 bg-primary bg-pattern">
  <div class="container">
    <div class="row">
      <div class="col-12 text-center">

        <!-- Heading-->
        <h1 class="display-4 mb-9 text-white">
              신규 구독 신청시 50% 할인
            </h1>

            <!-- Buttons -->
            <a class="btn btn-outline-white border-2 px-md-8 m-2 m-md-4" href="/subs/detail?subsitem_id=100">&nbsp;6개월&nbsp;&nbsp;&nbsp;베이직&nbsp;</a>
            <a class="btn btn-outline-white border-2 px-md-8 m-2 m-md-4" href="/subs/detail?subsitem_id=101">6개월&nbsp;&nbsp;프리미엄</a>
            <a class="btn btn-outline-white border-2 px-md-8 m-2 m-md-4" href="/subs/detail?subsitem_id=102">6개월&nbsp;&nbsp;시그니쳐</a>
            <a class="btn btn-outline-white border-2 px-md-8 m-2 m-md-4" href="/subs/detail?subsitem_id=103">&nbsp;12개월&nbsp;&nbsp;베이직&nbsp;</a>
            <a class="btn btn-outline-white border-2 px-md-8 m-2 m-md-4" href="/subs/detail?subsitem_id=104">12개월&nbsp;프리미엄</a>
            <a class="btn btn-outline-white border-2 px-md-8 m-2 m-md-4" href="/subs/detail?subsitem_id=105">12개월&nbsp;시그니쳐</a>
            <a class="btn btn-outline-white border-2 px-md-8 m-2 m-md-4" href="/subs/detail?subsitem_id=106">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3회권&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            <a class="btn btn-outline-white border-2 px-md-8 m-2 m-md-4" href="/subs/detail?subsitem_id=107">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7회권&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>

          </div>
        </div>
      </div>
    </section>
<br/>

<!-- MUST HAVES -->
<section class="bg-light overflow-hidden">
      <div class="container">
        <div class="row gx-0 justify-content-between">
          <div class="col-12 col-md-5 col-lg-4 py-13">

            <!-- Pretitle -->
            <h6 class="heading-xxs text-gray-400">
              자기야 오늘 무슨 날인지 알지..?
            </h6>

            <!-- Heading -->
            <h1 class="mb-4">기념일 잊으신 적, 없으세요?</h1>

            <!-- Text -->
            <p class="text-gray-500 mb-8">
              춘향전에서는 꽃을 일정기간 정기적으로 받아보실 수 있는
              '꽃 정기구독'과 함께, 원하시는 날짜에 미리 꽃 배송을
              지정해놓으실 수 있는 횟수권 판매하고 있습니다.
              지금 꽃 배송을 기록해두세요!
            </p>

            <!-- Button -->
            <a class="btn btn-dark" href="/subs/all">
              지금 신청하기 <i class="fe fe-arrow-right ms-2"></i>
            </a>

          </div>
          <div class="col-12 col-md-6">

            <!-- Image -->
            <div class="h-100 vw-50 bg-cover" style="background-image: url(/uimg/B_greeneryDabal_Green_L_1.jpg);"></div>

          </div>
        </div>
      </div>
    </section>

<!-- BRAND -->
<br/>
<section class="py-12 bg-light">
  <div class="container">

    <div class="row">
      <div class="col-12">
        <!-- Heading -->
        <h4 class="mb-2 text-center">
          꽃 구독 이용 방법
        </h4>
        <h6 class="mb-10 text-center" style="color:lightgray">
          일상의 행복, 이렇게 시작해보세요!
        </h6>
      </div>
    </div>

    <div class="row">
      <div class="brand lift mb-7 text-center" style="display: flex;">
        <span style="display: flex; align-items: center;"><img class="subsinfo_icon" src="/uimg/icon_cal.png" width="100px"></span>
        <div class="subsinfo_detail" style="margin-left: 30px; display:flex; flex-direction: column">
          <h5 style="float:left; text-align: left">구독 기간과 최초 수령일 선택</h5>
          <h7 style="float:left; color:lightgray">내가 원하는 날로 첫 수령일 지정, 구독 주기와 기간을 선택하실 수 있어요.</h7>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="brand lift mb-7 text-center" style="display: flex;">
        <span style="display: flex; align-items: center;"><img class="subsinfo_icon" src="/uimg/icon_flower.png" width="100px"></span>
        <div class="subsinfo_detail" style="margin-left: 30px; display:flex; flex-direction: column">
          <h5 style="float:left; text-align: left">제철꽃 수확 및 플로리스트 디자인</h5>
          <h7 style="float:left; color:lightgray;">싱싱한 철 꽃을 수급하여 '춘향전'의 전문 플로리스트가 매주 새롭게 디자인합니다.</h7>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="brand lift mb-7 text-center" style="display: flex;">
        <span style="display: flex; align-items: center;"><img class="subsinfo_icon" src="/uimg/icon_box.png" width="100px"></span>
        <div class="subsinfo_detail" style="margin-left: 30px; display:flex; flex-direction: column">
          <h5 style="float:left; text-align: left">원하는 곳에 안전하게 배송된 꽃 즐기기</h5>
          <h7 style="float:left; color:lightgray">꽃이 시들지 않도록 물처리는 물론 가장 싱싱하게 배송될 수 있도록 배송됩니다.</h7>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-12 text-center">

        <!-- Link  -->
        <div class="mt-10 text-center">
          <a class="link-underline" href="/subs/all">지금 신청하기</a>
        </div>

      </div>
    </div>
  </div>
</section>

<!-- OUR PRODUCTS -->
<section class="pt-12 pb-10" id="products">
  <div class="container">
    <div class="row">
      <div class="col-12 text-center">

        <!-- Preheading -->
        <h6 class="heading-xxs mb-3 text-gray-400">
          다양한 종류의 꽃 구독이 준비되어 있어요
        </h6>

        <!-- Heading -->
        <h2 class="mb-10">춘향전의 꽃 구독 라인업</h2>

        <!-- Slider -->
        <div class="flickity-buttons-lg px-lg-12 mt-n3" data-flickity='{"prevNextButtons": true}' >

          <!-- Item -->
          <div class="col-12 col-md-4 pt-3 pb-7 px-4">
            <div class="card card-lg shadow-hover">

              <!-- Circle -->
              <div class="card-circle card-circle-end">
                <strong class="fs-xs">save</strong>
                <span class="h6 mb-0">5%</span>
              </div>

              <!-- Image -->
              <img src="/uimg/A_12basic.jpg" alt="..." class="card-img-top">

              <!-- Body -->
              <div class="card-body mt-n6 text-center">

                <!-- Heading -->
                <p class="mb-3 fw-bold">
                  12개월 Basic <br>
                  <span class="fs-xs text-gray-350 text-decoration-line-through">480,000원</span> <span class="text-primary">456,000원</span>
                </p>

                <!-- Text -->
                <p class="text-muted">
                  12개월간, 2주마다, 총 24회, 신선한 꽃을.
                </p>


              </div>

            </div>
          </div>

          <!-- Item -->
          <div class="col-12 col-md-4 pt-3 pb-7 px-4">
            <div class="card card-lg shadow-hover">

              <!-- Circle -->
              <div class="card-circle card-circle-end">
                <strong class="fs-xs">save</strong>
                <span class="h6 mb-0">8%</span>
              </div>

              <!-- Image -->
              <img src="/uimg/A_12premium.jpg" alt="..." class="card-img-top">

              <!-- Body -->
              <div class="card-body mt-n6 text-center">

                <!-- Heading -->
                <p class="mb-3 fw-bold">
                  12개월 Premium <br>
                  <span class="fs-xs text-gray-350 text-decoration-line-through">720,000원</span> <span class="text-primary">662,400원</span>
                </p>

                <!-- Text -->
                <p class="text-muted">
                  12개월간, 2주마다, 총 24회, 풍성한 꽃을.
                </p>

              </div>

            </div>
          </div>

          <!-- Item -->
          <div class="col-12 col-md-4 pt-3 pb-7 px-4">
            <div class="card card-lg shadow-hover">

              <!-- Circle -->
              <div class="card-circle card-circle-end">
                <strong class="fs-xs">save</strong>
                <span class="h6 mb-0">10%</span>
              </div>

              <!-- Image -->
              <img src="/uimg/A_12signature.jpg" alt="..." class="card-img-top">

              <!-- Body -->
              <div class="card-body mt-n6 text-center">

                <!-- Heading -->
                <p class="mb-3 fw-bold">
                  12개월 Signature <br>
                  <span class="fs-xs text-gray-350 text-decoration-line-through">960,000원</span> <span class="text-primary">864,000원</span>
                </p>

                <!-- Text -->
                <p class="text-muted">
                  12개월간, 2주마다, 총 24회, 유성진 대표 플로리스트의 시그니쳐 꽃다발을.
                </p>

              </div>

            </div>
          </div>

          <!-- Item -->
          <div class="col-12 col-md-4 pt-3 pb-7 px-4">
            <div class="card card-lg shadow-hover">

              <!-- Image -->
              <img src="/uimg/A_6basic.jpg" alt="..." class="card-img-top">

              <!-- Body -->
              <div class="card-body mt-n6 text-center">

                <!-- Heading -->
                <p class="mb-3 fw-bold">
                  6개월 Basic <br>
                  <span class="fs-xs text-gray-350 text-decoration-line-through"></span> <span class="text-primary">240,000원</span>
                </p>

                <!-- Text -->
                <p class="text-muted">
                  6개월간, 2주마다, 총 12회, 신선한 꽃을.
                </p>


              </div>

            </div>
          </div>

          <!-- Item -->
          <div class="col-12 col-md-4 pt-3 pb-7 px-4">
            <div class="card card-lg shadow-hover">

              <!-- Image -->
              <img src="/uimg/A_6premium.jpg" alt="..." class="card-img-top">

              <!-- Body -->
              <div class="card-body mt-n6 text-center">

                <!-- Heading -->
                <p class="mb-3 fw-bold">
                  6개월 Premium <br>
                  <span class="fs-xs text-gray-350 text-decoration-line-through"></span> <span class="text-primary">360,000원</span>
                </p>

                <!-- Text -->
                <p class="text-muted">
                  6개월간, 2주마다, 총 12회, 풍성한 꽃을.
                </p>



              </div>

            </div>
          </div>

          <!-- Item -->
          <div class="col-12 col-md-4 pt-3 pb-7 px-4">
            <div class="card card-lg shadow-hover">

              <!-- Image -->
              <img src="/uimg/A_6signature.jpg" alt="..." class="card-img-top">

              <!-- Body -->
              <div class="card-body mt-n6 text-center">

                <!-- Heading -->
                <p class="mb-3 fw-bold">
                  6개월 Signature <br>
                  <span class="fs-xs text-gray-350 text-decoration-line-through"></span> <span class="text-primary">480,000원</span>
                </p>

                <!-- Text -->
                <p class="text-muted">
                  6개월간, 2주마다, 총 12회, 유성진 대표 플로리스트의 시그니쳐 꽃다발을.
                </p>


              </div>

            </div>
          </div>

          <!-- Item -->
          <div class="col-12 col-md-4 pt-3 pb-7 px-4">
            <div class="card card-lg shadow-hover">

              <!-- Image -->
              <img src="/uimg/A_3times.jpg" alt="..." class="card-img-top">

              <!-- Body -->
              <div class="card-body mt-n6 text-center">

                <!-- Heading -->
                <p class="mb-3 fw-bold">
                  3회 기념일 <br>
                  <span class="fs-xs text-gray-350 text-decoration-line-through"></span> <span class="text-primary">75,000원</span>
                </p>

                <!-- Text -->
                <p class="text-muted">
                  원하는 날짜마다, 총 3회, 기념일에 어울리는 아름다운 꽃을.
                </p>


              </div>

            </div>
          </div>

          <!-- Item -->
          <div class="col-12 col-md-4 pt-3 pb-7 px-4">
            <div class="card card-lg shadow-hover">

              <!-- Image -->
              <img src="/uimg/A_7times.jpg" alt="..." class="card-img-top">

              <!-- Body -->
              <div class="card-body mt-n6 text-center">

                <!-- Heading -->
                <p class="mb-3 fw-bold">
                  7회 기념일 <br>
                  <span class="fs-xs text-gray-350 text-decoration-line-through"></span> <span class="text-primary">168,000원</span>
                </p>

                <!-- Text -->
                <p class="text-muted">
                  원하는 날짜마다, 총 7회, 기념일에 어울리는 아름다운 꽃을.
                </p>


              </div>

            </div>
          </div>

        </div>

  <!-- Button -->
  <a href="/subs/all" class="btn btn-sm btn-outline-primary">
    지금 신청
  </a>
      </div>
    </div>
  </div>
</section>

