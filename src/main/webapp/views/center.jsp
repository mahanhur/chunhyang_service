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
<script>
  /*팝업창*/
  let weather = {
    init:function (){
      let popOption = "width =1000px"
      let openurl = '/weather/weather'
      window.open(openurl,'pop',popOption)
    }
  }
  $(function (){
    weather.init();
  })
</script>

<!-- center  -->

<!-- PROMO ( 검은배너 ) -->
<div class="py-3 bg-dark bg-pattern mb-4" style="position:sticky;z-index: 1">
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


<!-- center - maintop -->
<section class="mt-n12" data-jarallax data-speed=".8" style="background-image: url(/uimg/maintop.jpg);z-index: 0">
  <div class="container d-flex flex-column">
    <div class="row justify-content-center align-items-center min-vh-100 pt-15 pb-12">
      <div class="col-12 col-md-7 col-lg-5 text-center text-black">

        <!-- Heading -->
        <h1 class="display-4 mb-10">
          Better Things In a Better Way
        </h1>
        <!-- Links -->
        <button type="button" class="btn btn-outline-dark" href="/subscribe" style="opacity: 70%;margin:10px">정기구독</button>
        <button type="button" class="btn btn-outline-dark" href="/item/all" style="opacity: 70%;margin:10px">꽃선물</button>

      </div>
    </div>
  </div>
</section>


<%--<section>--%>
<%--  <div class="owl-carousel owl-single home-slider">--%>
<%--    <div class="item">--%>
<%--      <div class="untree_co-hero" style="background-image: url('/uimg/hero-slider-1-min.jpg');">--%>
<%--        <div class="container">--%>
<%--          <div class="row align-items-center">--%>
<%--            <div class="col-lg-6">--%>

<%--              <h1 class="mb-4 heading" data-aos="fade-up" data-aos-delay="100">'Blooming Today'</br>꽃다발 출시(선착순)</h1>--%>
<%--              <div class="mb-5 text-white desc mx-auto" data-aos="fade-up" data-aos-delay="200">--%>
<%--              </div>--%>

<%--              <p class="mb-0" data-aos="fade-up" data-aos-delay="300"><a href="#" class="btn btn-outline-black">Explore now</a></p>--%>

<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div> <!-- /.untree_co-hero -->--%>
<%--    </div>--%>

<%--  </div>--%>
<%--</section>--%>

<!-- FEATURES (사진 밑 문구4개) -->
<section class="pt-7">
  <div class="container">
    <div class="row pb-7 border-bottom">
      <div class="col-12 col-md-6 col-lg-3">

        <!-- Item -->
        <div class="d-flex mb-6 mb-lg-0">

          <!-- Icon -->
          <i class="fe fe-truck fs-lg text-primary"></i>

          <!-- Body -->
          <div class="ms-6">

            <!-- Heading -->
            <h6 class="heading-xxs mb-1">
              Free shipping
            </h6>

            <!-- Text -->
            <p class="mb-0 fs-sm text-muted">
              From all orders over $100
            </p>

          </div>

        </div>

      </div>
      <div class="col-12 col-md-6 col-lg-3">

        <!-- Item -->
        <div class="d-flex mb-6 mb-lg-0">

          <!-- Icon -->
          <i class="fe fe-repeat fs-lg text-primary"></i>

          <!-- Body -->
          <div class="ms-6">

            <!-- Heading -->
            <h6 class="mb-1 heading-xxs">
              Free returns
            </h6>

            <!-- Text -->
            <p class="mb-0 fs-sm text-muted">
              Return money within 30 days
            </p>

          </div>

        </div>

      </div>
      <div class="col-12 col-md-6 col-lg-3">

        <!-- Item -->
        <div class="d-flex mb-6 mb-md-0">

          <!-- Icon -->
          <i class="fe fe-lock fs-lg text-primary"></i>

          <!-- Body -->
          <div class="ms-6">

            <!-- Heading -->
            <h6 class="mb-1 heading-xxs">
              Secure shopping
            </h6>

            <!-- Text -->
            <p class="mb-0 fs-sm text-muted">
              You're in safe hands
            </p>

          </div>

        </div>

      </div>
      <div class="col-12 col-md-6 col-lg-3">

        <!-- Item -->
        <div class="d-flex">

          <!-- Icon -->
          <i class="fe fe-tag fs-lg text-primary"></i>

          <!-- Body -->
          <div class="ms-6">

            <!-- Heading -->
            <h6 class="mb-1 heading-xxs">
              Over 10,000 Styles
            </h6>

            <!-- Text -->
            <p class="mb-0 fs-sm text-muted">
              We have everything you need
            </p>

          </div>

        </div>

      </div>
    </div>
  </div>
</section>

<!-- BEST PICKS -->
<section class="pt-12">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-12 col-md-10 col-lg-8 col-xl-6 text-center">

        <!-- Preheading -->
        <h6 class="heading-xxs mb-3 text-gray-400">
          New Collection
        </h6>

        <!-- Heading -->
        <h2 class="mb-4">Best Picks 2019</h2>

        <!-- Subheading -->
        <p class="mb-10 text-gray-500">
          Appear, dry there darkness they're seas, dry waters thing fly midst. Beast, above fly brought Very green.
        </p>

      </div>
    </div>
    <div class="row">
      <div class="col-12 col-md-5 col-lg-4 d-flex flex-column">

        <!-- Card -->
        <div class="card mb-7 text-white" style="min-height: 400px; background-image: url(assets/img/products/product-1.jpg)">

          <!-- Background -->
          <div class="card-bg">
            <div class="card-bg-img bg-cover" style="background-image: url(assets/img/products/product-1.jpg);"></div>
          </div>

          <!-- Body -->
          <div class="card-body my-auto text-center">

            <!-- Heading -->
            <h4 class="mb-0">Bags Collection</h4>

            <!-- Link -->
            <a class="btn btn-link stretched-link text-reset" href="shop.jsp">
              Shop Now <i class="fe fe-arrow-right ms-2"></i>
            </a>

          </div>

        </div>

      </div>
      <div class="col-12 col-md-7 col-lg-8 d-flex flex-column">

        <!-- Card -->
        <div class="card mb-7 text-body" style="min-height: 400px;">

          <!-- Background -->
          <div class="card-bg">
            <div class="card-bg-img bg-cover" style="background-image: url(assets/img/products/product-2.jpg);"></div>
          </div>

          <!-- Body -->
          <div class="card-body my-auto px-md-10 text-center text-md-start">

            <!-- Circle -->
            <div class="card-circle card-circle-lg card-circle-end">
              <strong>save</strong>
              <span class="fs-4 fw-bold">30%</span>
            </div>

            <!-- Heading -->
            <h4 class="mb-0">Printed men’s Shirts</h4>

            <!-- Link -->
            <a class="btn btn-link stretched-link px-0 text-reset" href="shop.jsp">
              Shop Now <i class="fe fe-arrow-right ms-2"></i>
            </a>

          </div>

        </div>

      </div>
      <div class="col-12 col-md-7 col-lg-8 d-flex flex-column">

        <!-- Card -->
        <div class="card mb-7 mb-md-0 text-body" style="min-height: 400px;">

          <!-- Background -->
          <div class="card-bg">
            <div class="card-bg-img bg-cover" style="background-image: url(assets/img/products/product-3.jpg);"></div>
          </div>

          <!-- Body -->
          <div class="card-body my-auto px-md-10 text-center text-md-start">

            <!-- Heading -->
            <h4 class="mb-0">Basic women’s Dresses</h4>

            <!-- Link -->
            <a class="btn btn-link stretched-link px-0 text-reset" href="shop.jsp">
              Shop Now <i class="fe fe-arrow-right ms-2"></i>
            </a>

          </div>

        </div>

      </div>
      <div class="col-12 col-md-5 col-lg-4 d-flex flex-column">

        <!-- Card -->
        <div class="card text-white" style="min-height: 400px;">

          <!-- Background -->
          <div class="card-bg">
            <div class="card-bg-img bg-cover" style="background-image: url(assets/img/products/product-4.jpg);"></div>
          </div>

          <!-- Body -->
          <div class="card-body my-auto text-center">

            <!-- Heading -->
            <h4 class="mb-0">Sweatshirts</h4>

            <!-- Link -->
            <a class="btn btn-link stretched-link text-reset" href="shop.jsp">
              Shop Now <i class="fe fe-arrow-right ms-2"></i>
            </a>

          </div>

        </div>

      </div>
    </div>
  </div>
</section>

<!-- TOP SELLERS -->
<section class="py-12">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-12 col-md-10 col-lg-8 col-xl-6">

        <!-- Heading -->
        <h2 class="mb-4 text-center">Top month Sellers</h2>

        <!-- Nav -->
        <div class="nav justify-content-center mb-10">
          <a class="nav-link active" href="#topSellersTab" data-bs-toggle="tab">Women</a>
          <a class="nav-link" href="#topSellersTab" data-bs-toggle="tab">Men</a>
          <a class="nav-link" href="#topSellersTab" data-bs-toggle="tab">Kids</a>
        </div>

      </div>
    </div>
    <div class="tab-content">
      <div class="tab-pane fade show active" id="topSellersTab">
        <div class="row">
          <div class="col-6 col-md-4 col-lg-3">

            <!-- Card -->
            <div class="card mb-7">

              <!-- Badge -->
              <div class="badge bg-white text-body card-badge card-badge-start text-uppercase">
                New
              </div>

              <!-- Image -->
              <div class="card-img">

                <!-- Image -->
                <a class="card-img-hover" href="product.jsp">
                  <img class="card-img-top card-img-back" src="assets/img/products/product-120.jpg" alt="...">
                  <img class="card-img-top card-img-front" src="assets/img/products/product-5.jpg" alt="...">
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
                </div>

              </div>

              <!-- Body -->
              <div class="card-body px-0">

                <!-- Category -->
                <div class="fs-xs">
                  <a class="text-muted" href="shop.jsp">Shoes</a>
                </div>

                <!-- Title -->
                <div class="fw-bold">
                  <a class="text-body" href="product.jsp">
                    Leather mid-heel Sandals
                  </a>
                </div>

                <!-- Price -->
                <div class="fw-bold text-muted">
                  $129.00
                </div>

              </div>

            </div>

          </div>
          <div class="col-6 col-md-4 col-lg-3">

            <!-- Card -->
            <div class="card mb-7">

              <!-- Image -->
              <div class="card-img">

                <!-- Image -->
                <a class="card-img-hover" href="product.jsp">
                  <img class="card-img-top card-img-back" src="assets/img/products/product-121.jpg" alt="...">
                  <img class="card-img-top card-img-front" src="assets/img/products/product-6.jpg" alt="...">
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
                </div>

              </div>

              <!-- Body -->
              <div class="card-body px-0">

                <!-- Category -->
                <div class="fs-xs">
                  <a class="text-muted" href="shop.jsp">Dresses</a>
                </div>

                <!-- Title -->
                <div class="fw-bold">
                  <a class="text-body" href="product.jsp">
                    Cotton floral print Dress
                  </a>
                </div>

                <!-- Price -->
                <div class="fw-bold text-muted">
                  $40.00
                </div>

              </div>

            </div>

          </div>
          <div class="col-6 col-md-4 col-lg-3">

            <!-- Card -->
            <div class="card mb-7">

              <!-- Badge -->
              <div class="badge bg-dark card-badge card-badge-start text-uppercase">
                Sale
              </div>

              <!-- Image -->
              <div class="card-img">

                <!-- Image -->
                <a class="card-img-hover" href="product.jsp">
                  <img class="card-img-top card-img-back" src="assets/img/products/product-122.jpg" alt="...">
                  <img class="card-img-top card-img-front" src="assets/img/products/product-7.jpg" alt="...">
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
                </div>

              </div>

              <!-- Body -->
              <div class="card-body px-0">

                <!-- Category -->
                <div class="fs-xs">
                  <a class="text-muted" href="shop.jsp">Shoes</a>
                </div>

                <!-- Title -->
                <div class="fw-bold">
                  <a class="text-body" href="product.jsp">
                    Leather Sneakers
                  </a>
                </div>

                <!-- Price -->
                <div class="fw-bold">
                  <span class="fs-xs text-gray-350 text-decoration-line-through">$85.00</span>
                  <span class="text-primary">$85.00</span>
                </div>

              </div>

            </div>

          </div>
          <div class="col-6 col-md-4 col-lg-3">

            <!-- Card -->
            <div class="card mb-7">

              <!-- Image -->
              <div class="card-img">

                <!-- Image -->
                <a href="#!">
                  <img class="card-img-top card-img-front" src="assets/img/products/product-8.jpg" alt="...">
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
                </div>

              </div>

              <!-- Body -->
              <div class="card-body px-0">

                <!-- Category -->
                <div class="fs-xs">
                  <a class="text-muted" href="shop.jsp">Tops</a>
                </div>

                <!-- Title -->
                <div class="fw-bold">
                  <a class="text-body" href="product.jsp">
                    Cropped cotton Top
                  </a>
                </div>

                <!-- Price -->
                <div class="fw-bold text-muted">
                  $29.00
                </div>

              </div>

            </div>

          </div>
          <div class="col-6 col-md-4 col-lg-3">

            <!-- Card -->
            <div class="card mb-7">

              <!-- Image -->
              <div class="card-img">

                <!-- Image -->
                <a href="#!">
                  <img class="card-img-top card-img-front" src="assets/img/products/product-9.jpg" alt="...">
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
                </div>

              </div>

              <!-- Body -->
              <div class="card-body px-0">

                <!-- Category -->
                <div class="fs-xs">
                  <a class="text-muted" href="shop.jsp">Dresses</a>
                </div>

                <!-- Title -->
                <div class="fw-bold">
                  <a class="text-body" href="product.jsp">
                    Floral print midi Dress
                  </a>
                </div>

                <!-- Price -->
                <div class="fw-bold text-muted">
                  $50.00
                </div>

              </div>

            </div>

          </div>
          <div class="col-6 col-md-4 col-lg-3">

            <!-- Card -->
            <div class="card mb-7">

              <!-- Badge -->
              <div class="badge bg-dark card-badge card-badge-start text-uppercase">
                Sale
              </div>

              <!-- Image -->
              <div class="card-img">

                <!-- Image -->
                <a class="card-img-hover" href="product.jsp">
                  <img class="card-img-top card-img-back" src="assets/img/products/product-123.jpg" alt="...">
                  <img class="card-img-top card-img-front" src="assets/img/products/product-10.jpg" alt="...">
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
                </div>

              </div>

              <!-- Body -->
              <div class="card-body px-0">

                <!-- Category -->
                <div class="fs-xs">
                  <a class="text-muted" href="shop.jsp">Bags</a>
                </div>

                <!-- Title -->
                <div class="fw-bold">
                  <a class="text-body" href="product.jsp">
                    Suede cross body Bag
                  </a>
                </div>

                <!-- Price -->
                <div class="fw-bold">
                  <span class="fs-xs text-gray-350 text-decoration-line-through">$79.00</span>
                  <span class="text-primary">$49.00</span>
                </div>

              </div>

            </div>

          </div>
          <div class="col-6 col-md-4 col-lg-3">

            <!-- Card -->
            <div class="card mb-7">

              <!-- Image -->
              <div class="card-img">

                <!-- Image -->
                <a class="card-img-hover" href="product.jsp">
                  <img class="card-img-top card-img-back" src="assets/img/products/product-124.jpg" alt="...">
                  <img class="card-img-top card-img-front" src="assets/img/products/product-11.jpg" alt="...">
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
                </div>

              </div>

              <!-- Body -->
              <div class="card-body px-0">

                <!-- Category -->
                <div class="fs-xs">
                  <a class="text-muted" href="shop.jsp">Skirts</a>
                </div>

                <!-- Title -->
                <div class="fw-bold">
                  <a class="text-body" href="product.jsp">
                    Printed A-line Skirt
                  </a>
                </div>

                <!-- Price -->
                <div class="fw-bold text-muted">
                  $79.00
                </div>

              </div>

            </div>

          </div>
          <div class="col-6 col-md-4 col-lg-3">

            <!-- Card -->
            <div class="card mb-7">

              <!-- Badge -->
              <div class="badge bg-white text-body card-badge card-badge text-uppercase">
                New
              </div>

              <!-- Image -->
              <div class="card-img">

                <!-- Image -->
                <a href="#!">
                  <img class="card-img-top card-img-front" src="assets/img/products/product-12.jpg" alt="...">
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
                </div>

              </div>

              <!-- Body -->
              <div class="card-body px-0">

                <!-- Category -->
                <div class="fs-xs">
                  <a class="text-muted" href="shop.jsp">Shoes</a>
                </div>

                <!-- Title -->
                <div class="fw-bold">
                  <a class="text-body" href="product.jsp">
                    Heel strappy Sandals
                  </a>
                </div>

                <!-- Price -->
                <div class="fw-bold text-muted">
                  $90.00
                </div>

              </div>

            </div>

          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-12">

        <!-- Link  -->
        <div class="mt-7 text-center">
          <a class="link-underline" href="#!">Discover more</a>
        </div>

      </div>
    </div>
  </div>
</section>

<!-- COUNTDOWN -->
<section class="py-13 bg-cover" style="background-image: url(assets/img/covers/cover-4.jpg)">
  <div class="container">
    <div class="row justify-content-end">
      <div class="col-12 col-md-8 col-lg-6">

        <!-- Heading -->
        <h3 class="mb-7">
          Get -50% from <br />Summer Collection
        </h3>

        <!-- Counter -->
        <div class="d-flex mb-9" data-countdown data-date="Dec 31, 2025 00:00:00">
          <div class="text-center">
            <div class="fs-1 fw-bolder text-primary" data-days>00</div>
            <div class="heading-xxs text-muted">Days</div>
          </div>
          <div class="px-1 px-md-4">
            <div class="fs-2 fw-bolder text-primary">:</div>
          </div>
          <div class="text-center">
            <div class="fs-1 fw-bolder text-primary" data-hours>00</div>
            <div class="heading-xxs text-muted">Hours</div>
          </div>
          <div class="px-1 px-md-4">
            <div class="fs-2 fw-bolder text-primary">:</div>
          </div>
          <div class="text-center">
            <div class="fs-1 fw-bolder text-primary" data-minutes>00</div>
            <div class="heading-xxs text-muted">Minutes</div>
          </div>
          <div class="px-1 px-md-4">
            <div class="fs-2 fw-bolder text-primary">:</div>
          </div>
          <div class="text-center">
            <div class="fs-1 fw-bolder text-primary" data-seconds>00</div>
            <div class="heading-xxs text-muted">Seconds</div>
          </div>
        </div>

        <!-- Button -->
        <a class="btn btn-dark" href="shop.jsp">
          Shop Now <i class="fe fe-arrow-right ms-2"></i>
        </a>

      </div>
    </div>
  </div>
</section>

<!-- REVIEWS -->
<section class="py-12">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-12 col-md-10 col-lg-8 col-xl-6 text-center">

        <!-- Preheading -->
        <h6 class="heading-xxs mb-3 text-gray-400">
          What buyers say
        </h6>

        <!-- Heading -->
        <h2 class="mb-10">Latest buyers Reviews</h2>

      </div>
    </div>
    <div class="row">
      <div class="col-12">

        <!-- Slider -->
        <div data-flickity='{"pageDots": true}'>
          <div class="col-12 col-sm-8 col-md-6 col-lg-4 px-4">

            <!-- Card -->
            <div class="card-lg card border">
              <div class="card-body">

                <!-- Header -->
                <div class="row align-items-center mb-6">
                  <div class="col-4">

                    <!-- Image -->
                    <img src="assets/img/products/product-13.jpg" alt="..." class="img-fluid">

                  </div>
                  <div class="col-8 ms-n2">

                    <!-- Preheading -->
                    <a class="fs-xs text-muted" href="shop.jsp">
                      Shoes
                    </a>

                    <!-- Heading -->
                    <a class="d-block fw-bold text-body" href="product.jsp">
                      Low top Sneakers
                    </a>

                    <!-- Rating -->
                    <div class="rating fs-xxs text-warning" data-value="3">
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

                  </div>
                </div>

                <!-- Blockquote -->
                <blockquote class="mb-0">
                  <p class="text-muted">
                    From creepeth said moved given divide make multiply of him shall itself also above second doesn't unto created saying land herb sea midst night wherein.
                  </p>
                  <footer class="fs-xs text-muted">
                    Logan Edwards, <time datetime="2019-06-01">01 Jun 2019</time>
                  </footer>
                </blockquote>

              </div>
            </div>

          </div>
          <div class="col-12 col-sm-8 col-md-6 col-lg-4 px-4">

            <!-- Card -->
            <div class="card-lg card border">
              <div class="card-body">

                <!-- Header -->
                <div class="row align-items-center mb-6">
                  <div class="col-4">

                    <!-- Image -->
                    <img src="assets/img/products/product-14.jpg" alt="..." class="img-fluid">

                  </div>
                  <div class="col-8 ms-n2">

                    <!-- Preheading -->
                    <a class="fs-xs text-muted" href="shop.jsp">
                      Dresses
                    </a>

                    <!-- Heading -->
                    <a class="d-block fw-bold text-body" href="product.jsp">
                      Cotton print Dress
                    </a>

                    <!-- Rating -->
                    <div class="rating fs-xxs text-warning" data-value="5">
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

                  </div>
                </div>

                <!-- Blockquote -->
                <blockquote class="mb-0">
                  <p class="text-muted">
                    God every fill great replenish darkness unto. Very open. Likeness their that light. Given under image to. Subdue of shall cattle day fish form saw spirit and given stars, us you whales may, land, saw fill unto.
                  </p>
                  <footer class="fs-xs text-muted">
                    Jane Jefferson, <time datetime="2019-05-29">29 May 2019</time>
                  </footer>
                </blockquote>

              </div>
            </div>

          </div>
          <div class="col-12 col-sm-8 col-md-6 col-lg-4 px-4">

            <!-- Card -->
            <div class="card-lg card border">
              <div class="card-body">

                <!-- Header -->
                <div class="row align-items-center mb-6">
                  <div class="col-4">

                    <!-- Image -->
                    <img src="assets/img/products/product-15.jpg" alt="..." class="img-fluid">

                  </div>
                  <div class="col-8 ms-n2">

                    <!-- Preheading -->
                    <a class="fs-xs text-muted" href="shop.jsp">
                      T-shirts
                    </a>

                    <!-- Heading -->
                    <a class="d-block fw-bold text-body" href="product.jsp">
                      Oversized print T-shirt
                    </a>

                    <!-- Rating -->
                    <div class="rating fs-xxs text-warning" data-value="4">
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

                  </div>
                </div>

                <!-- Blockquote -->
                <blockquote class="mb-0">
                  <p class="text-muted">
                    Fill his waters wherein signs likeness waters. Second light gathered appear sixth fourth, seasons behold creeping female.
                  </p>
                  <footer class="fs-xs text-muted">
                    Darrell Baker, <time datetime="2019-05-18">18 May 2019</time>
                  </footer>
                </blockquote>

              </div>
            </div>

          </div>
          <div class="col-12 col-sm-8 col-md-6 col-lg-4 px-4">

            <!-- Card -->
            <div class="card-lg card border">
              <div class="card-body">

                <!-- Header -->
                <div class="row align-items-center mb-6">
                  <div class="col-4">

                    <!-- Image -->
                    <img src="assets/img/products/product-10.jpg" alt="..." class="img-fluid">

                  </div>
                  <div class="col-8 ms-n2">

                    <!-- Preheading -->
                    <a class="fs-xs text-muted" href="shop.jsp">
                      Bags & Accessories
                    </a>

                    <!-- Heading -->
                    <a class="d-block fw-bold text-body" href="product.jsp">
                      Suede cross body Bag
                    </a>

                    <!-- Rating -->
                    <div class="rating fs-xxs text-warning" data-value="4">
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

                  </div>
                </div>

                <!-- Blockquote -->
                <blockquote class="mb-0">
                  <p class="text-muted">
                    God every fill great replenish darkness unto. Very open. Likeness their that light. Given under image to. Subdue of shall cattle day fish form saw spirit and given stars.
                  </p>
                  <footer class="fs-xs text-muted">
                    Pavel Doe, <time datetime="2019-05-29">29 May 2019</time>
                  </footer>
                </blockquote>

              </div>
            </div>

          </div>
        </div>

      </div>
    </div>
  </div>
</section>

<!-- BRANDS -->
<section class="py-12 bg-light">
  <div class="container">
    <div class="row">
      <div class="col-12 text-center">

        <!-- Heading -->
        <h2 class="mb-3">@shopper</h2>

        <!-- Subheading -->
        <p class="mb-10 fs-lg text-gray-500">
          Appear, dry there darkness they're seas, dry waters.
        </p>

      </div>
    </div>
    <div class="row mx-n1 mb-10">
      <div class="col-6 col-sm-4 col-md px-1">

        <!-- Card -->
        <div class="card mb-2">

          <!-- Image -->
          <img src="assets/img/products/product-16.jpg" alt="..." class="card-img">

          <!-- Overlay -->
          <a class="card-img-overlay card-img-overlay-hover align-items-center bg-dark-40" href="blog-post.jsp">
            <p class="my-0 fs-xxs text-center text-white">
              <i class="fe fe-heart me-2"></i> 248 <i class="fe fe-message-square me-2 ms-3"></i> 7
            </p>
          </a>

        </div>

      </div>
      <div class="col-6 col-sm-4 col-md px-1">

        <!-- Card -->
        <div class="card mb-2">

          <!-- Image -->
          <img src="assets/img/products/product-17.jpg" alt="..." class="card-img">

          <!-- Overlay -->
          <a class="card-img-overlay card-img-overlay-hover align-items-center bg-dark-40" href="blog-post.jsp">
            <p class="my-0 fs-xxs text-center text-white">
              <i class="fe fe-heart me-2"></i> 248 <i class="fe fe-message-square me-2 ms-3"></i> 7
            </p>
          </a>

        </div>

      </div>
      <div class="col-6 col-sm-4 col-md px-1">

        <!-- Card -->
        <div class="card mb-2">

          <!-- Image -->
          <img src="assets/img/products/product-18.jpg" alt="..." class="card-img">

          <!-- Overlay -->
          <a class="card-img-overlay card-img-overlay-hover align-items-center bg-dark-40" href="blog-post.jsp">
            <p class="my-0 fs-xxs text-center text-white">
              <i class="fe fe-heart me-2"></i> 248 <i class="fe fe-message-square me-2 ms-3"></i> 7
            </p>
          </a>

        </div>

      </div>
      <div class="col-6 col-sm-4 col-md px-1">

        <!-- Card -->
        <div class="card mb-2">

          <!-- Image -->
          <img src="assets/img/products/product-19.jpg" alt="..." class="card-img">

          <!-- Overlay -->
          <a class="card-img-overlay card-img-overlay-hover align-items-center bg-dark-40" href="blog-post.jsp">
            <p class="my-0 fs-xxs text-center text-white">
              <i class="fe fe-heart me-2"></i> 248 <i class="fe fe-message-square me-2 ms-3"></i> 7
            </p>
          </a>

        </div>

      </div>
      <div class="col-6 col-sm-4 col-md px-1">

        <!-- Card -->
        <div class="card">

          <!-- Image -->
          <img src="assets/img/products/product-20.jpg" alt="..." class="card-img">

          <!-- Overlay -->
          <a class="card-img-overlay card-img-overlay-hover align-items-center bg-dark-40" href="blog-post.jsp">
            <p class="my-0 fs-xxs text-center text-white">
              <i class="fe fe-heart me-2"></i> 248 <i class="fe fe-message-square me-2 ms-3"></i> 7
            </p>
          </a>

        </div>

      </div>
      <div class="col-6 col-sm-4 col-md px-1">

        <!-- Card -->
        <div class="card">

          <!-- Image -->
          <img src="assets/img/products/product-21.jpg" alt="..." class="card-img">

          <!-- Overlay -->
          <a class="card-img-overlay card-img-overlay-hover align-items-center bg-dark-40" href="blog-post.jsp">
            <p class="my-0 fs-xxs text-center text-white">
              <i class="fe fe-heart me-2"></i> 248 <i class="fe fe-message-square me-2 ms-3"></i> 7
            </p>
          </a>

        </div>

      </div>
    </div>
    <div class="row">
      <div class="col-4 col-sm-3 col-md text-center">

        <!-- Brand -->
        <img src="assets/img/brands/gray-350/mango.svg" alt="..." class="img-fluid mb-7 mb-md-0">

      </div>
      <div class="col-4 col-sm-3 col-md text-center">

        <!-- Brand -->
        <img src="assets/img/brands/gray-350/zara.svg" alt="..." class="img-fluid mb-7 mb-md-0">

      </div>
      <div class="col-4 col-sm-3 col-md text-center">

        <!-- Brand -->
        <img src="assets/img/brands/gray-350/reebok.svg" alt="..." class="img-fluid mb-7 mb-md-0">

      </div>
      <div class="col-4 col-sm-3 col-md text-center">

        <!-- Brand -->
        <img src="assets/img/brands/gray-350/asos.svg" alt="..." class="img-fluid mb-7 mb-md-0">

      </div>
      <div class="col-4 col-sm-3 col-md text-center">

        <!-- Brand -->
        <img src="assets/img/brands/gray-350/stradivarius.svg" alt="..." class="img-fluid mb-6 mb-sm-0">

      </div>
      <div class="col-4 col-sm-3 col-md text-center">

        <!-- Brand -->
        <img src="assets/img/brands/gray-350/adidas.svg" alt="..." class="img-fluid mb-6 mb-sm-0">

      </div>
      <div class="col-4 col-sm-3 col-md text-center">

        <!-- Brand -->
        <img src="assets/img/brands/gray-350/bershka.svg" alt="..." class="img-fluid">

      </div>
    </div>
  </div>
</section>