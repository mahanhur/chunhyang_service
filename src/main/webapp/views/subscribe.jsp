<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>


    <!-- WELCOME -->
    <section class="position-relative mb-4 py-13">

      <!-- Cover -->
      <div class="container-cover">
        <div class="container-fluid">
          <div class="row">
            <div class="col d-none d-xl-block bg-cover" style="background-image: url(/uimg/subs01.jpg);"></div>
            <div class="col d-none d-lg-block bg-cover" style="background-image: url(/uimg/subs02.jpg);"></div>
            <div class="col d-none d-md-block bg-cover" style="background-image: url(/uimg/subs03.jpg);"></div>
            <div class="col bg-cover" style="background-image: url(uimg/subs04.jpg);"></div>
          </div>
        </div>
      </div>

      <!-- Content -->
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-12 col-md-8 col-lg-6 col-xl-5">

            <!-- Card -->
            <div class="card card-xl">
              <div class="card-body text-center">

                <!-- Heading -->
                <h5 class="mb-6">春香傳</h5>

                <!-- Text -->
                <p class="mb-0">
                  봄의 향기를 전달합니다.
                </p>
                <p class="mb-0">
                  일상을 행복으로, 생화 정기구독
                </p>

                <!-- Button -->
                <a class="btn btn-dark btn-sm mb-n12" href="shop.html">
                  지금 신청하기<i class="fe fe-arrow-right ms-2"></i>
                </a>

              </div>
            </div>

          </div>
        </div>
      </div>

    </section>

    <!-- SALE -->
    <section class="py-12 bg-primary bg-pattern">
      <div class="container">
        <div class="row">
          <div class="col-12 text-center">

            <!-- Heading-->
            <h1 class="display-4 mb-9 text-white">
              신규 구독 신청시 50% 할인
            </h1>

            <!-- Buttons -->
            <a class="btn btn-outline-white border-2 px-md-8 m-2 m-md-4" href="shop.html">Dresses</a>
            <a class="btn btn-outline-white border-2 px-md-8 m-2 m-md-4" href="shop.html">Tops & T-Shirts</a>
            <a class="btn btn-outline-white border-2 px-md-8 m-2 m-md-4" href="shop.html">Blouses & Shirts</a>
            <a class="btn btn-outline-white border-2 px-md-8 m-2 m-md-4" href="shop.html">Jeans & Trousers</a>
            <a class="btn btn-outline-white border-2 px-md-8 m-2 m-md-4" href="shop.html">Jeans & Trousers</a>
            <a class="btn btn-outline-white border-2 px-md-8 m-2 m-md-4" href="shop.html">Shoes</a>
            <a class="btn btn-outline-white border-2 px-md-8 m-2 m-md-4" href="shop.html">Acessories</a>
            <a class="btn btn-outline-white border-2 px-md-8 m-2 m-md-4" href="shop.html">Coats & Jakets</a>
            <a class="btn btn-outline-white border-2 px-md-8 m-2 m-md-4" href="shop.html">Shorts & Skirts</a>

          </div>
        </div>
      </div>
    </section>

    <!-- TOP SELLERS -->
    <section class="py-12">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-12 col-md-10 col-lg-8 col-xl-6">

            <!-- Preheading -->
            <h6 class="heading-xxs mb-3 text-center text-gray-400">
              Top selling
            </h6>

            <!-- Heading -->
            <h2 class="mb-10 text-center">Top wekeend Sellers</h2>

          </div>
        </div>
        <div class="row">
          <div class="col-6 col-sm-6 col-md-4 col-lg-3">

            <!-- Card -->
            <div class="card mb-7" data-toggle="card-collapse">

              <!-- Badge -->
              <div class="badge bg-white text-body card-badge card-badge-start text-uppercase">
                New
              </div>

              <!-- Image -->
              <div class="card-img" data-flickity='{"draggable": false}' id="productOneImg">
                <a class="d-block w-100" href="product.html">
                  <img class="card-img-top" src="assets/img/products/product-5.jpg" alt="..." />
                </a>
                <a class="d-block w-100" href="product.html">
                  <img class="card-img-top" src="assets/img/products/product-142.jpg" alt="..." />
                </a>
              </div>

              <!-- Collapse -->
              <div class="card-collapse-parent">

                <!-- Body -->
                <div class="card-body px-0 pb-0 bg-white">
                  <div class="row gx-0">
                    <div class="col">

                      <!-- Title -->
                      <a class="d-block fw-bold text-body" href="product.html">
                        Leather mid-heel Sandals
                      </a>

                      <!-- Category -->
                      <a class="fs-xs text-muted" href="shop.html">
                        Shoes
                      </a>

                    </div>
                    <div class="col-auto">

                      <!-- Price -->
                      <div class="fs-sm fw-bold text-muted">
                        $129.00
                      </div>

                    </div>
                  </div>
                </div>

                <!-- Footer -->
                <div class="card-collapse collapse">
                  <div class="card-footer px-0 bg-white">
                    <form>
                      <div class="mb-1">
                        <div class="form-check form-check-inline form-check-color">
                          <input class="form-check-input" type="radio" id="productOneColorOne" name="productOneColor" data-toggle="flickity" data-target="#productOneImg" data-slide="0" style="background-color: beige" checked />
                        </div>
                        <div class="form-check form-check-inline form-check-color ms-n2">
                          <input class="form-check-input" type="radio" id="productOneColorTwo" name="productOneColor" data-toggle="flickity" data-target="#productOneImg" data-slide="1" style="background-color: black" />
                        </div>
                      </div>
                      <div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productOneSizeOne" name="sizeRadio" />
                          <label class="form-check-label" for="productOneSizeOne">6</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productOneSizeTwo" name="sizeRadio" />
                          <label class="form-check-label" for="productOneSizeTwo">6.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productOneSizeThree" name="sizeRadio" />
                          <label class="form-check-label" for="productOneSizeThree">7</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productOneSizeFour" name="sizeRadio" />
                          <label class="form-check-label" for="productOneSizeFour">7.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productOneSizeFive" name="sizeRadio" />
                          <label class="form-check-label" for="productOneSizeFive">8.5</label>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>

              </div>

            </div>

          </div>
          <div class="col-6 col-sm-6 col-md-4 col-lg-3">

            <!-- Card -->
            <div class="card mb-7" data-toggle="card-collapse">

              <!-- Image -->
              <div class="card-img" data-flickity='{"draggable": false}' id="productTwoImg">
                <a class="d-block w-100" href="product.html">
                  <img class="card-img-top" src="assets/img/products/product-6.jpg" alt="..." />
                </a>
                <a class="d-block w-100" href="product.html">
                  <img class="card-img-top" src="assets/img/products/product-143.jpg" alt="..." />
                </a>
              </div>

              <!-- Collapse -->
              <div class="card-collapse-parent">

                <!-- Body -->
                <div class="card-body px-0 pb-0 bg-white">
                  <div class="row gx-0">
                    <div class="col">

                      <!-- Title -->
                      <a class="d-block fw-bold text-body" href="product.html">
                        Cotton floral print Dress
                      </a>

                      <!-- Category -->
                      <a class="fs-xs text-muted" href="shop.html">
                        Dresses
                      </a>

                    </div>
                    <div class="col-auto">

                      <!-- Price -->
                      <div class="fs-sm fw-bold text-muted">
                        $40.00
                      </div>

                    </div>
                  </div>
                </div>

                <!-- Footer -->
                <div class="card-collapse collapse">
                  <div class="card-footer px-0 bg-white">
                    <form>
                      <div class="mb-1">
                        <div class="form-check form-check-inline form-check-color">
                          <input class="form-check-input" type="radio" id="productTwoColorOne" name="productTwoColor" data-toggle="flickity" data-target="#productTwoImg" data-slide="0" style="background-color: red" checked />
                        </div>
                        <div class="form-check form-check-inline form-check-color ms-n2">
                          <input class="form-check-input" type="radio" id="productTwoColorTwo" name="productTwoColor" data-toggle="flickity" data-target="#productTwoImg" data-slide="1" style="background-color: white" />
                        </div>
                      </div>
                      <div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productTwoSizeOne" name="sizeRadio" />
                          <label class="form-check-label" for="productTwoSizeOne">6</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productTwoSizeTwo" name="sizeRadio" />
                          <label class="form-check-label" for="productTwoSizeTwo">6.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productTwoSizeThree" name="sizeRadio" />
                          <label class="form-check-label" for="productTwoSizeThree">7</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productTwoSizeFour" name="sizeRadio" />
                          <label class="form-check-label" for="productTwoSizeFour">7.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productTwoSizeFive" name="sizeRadio" />
                          <label class="form-check-label" for="productTwoSizeFive">8.5</label>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>

              </div>

            </div>

          </div>
          <div class="col-6 col-sm-6 col-md-4 col-lg-3">

            <!-- Card -->
            <div class="card mb-7" data-toggle="card-collapse">

              <!-- Badge -->
              <div class="badge bg-dark card-badge card-badge-start text-uppercase letter-spacing-lg">
                Sale
              </div>

              <!-- Image -->
              <img class="card-img-top" src="assets/img/products/product-7.jpg" alt="..." />

              <!-- Collapse -->
              <div class="card-collapse-parent">

                <!-- Body -->
                <div class="card-body px-0 pb-0 bg-white">
                  <div class="row gx-0">
                    <div class="col">

                      <!-- Title -->
                      <a class="d-block fw-bold text-body" href="product.html">
                        Leather Sneakers
                      </a>

                      <!-- Category -->
                      <a class="fs-xs text-muted" href="shop.html">
                        Shoes
                      </a>

                    </div>
                    <div class="col-auto">

                      <!-- Price -->
                      <div class="fs-xs fw-bold text-gray-350 text-decoration-line-through">
                        $115.00
                      </div>
                      <div class="fs-sm fw-bold text-primary">
                        $85.00
                      </div>

                    </div>
                  </div>
                </div>

                <!-- Footer -->
                <div class="card-collapse collapse">
                  <div class="card-footer px-0 bg-white">
                    <form>
                      <div class="mb-1">
                        <div class="form-check form-check-inline form-check-color">
                          <input class="form-check-input" type="radio" id="productThreeColorOne" name="productThreeColor" style="background-color: #f9f9f9;" checked />
                        </div>
                      </div>
                      <div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productThreeSizeOne" name="sizeRadio" />
                          <label class="form-check-label" for="productThreeSizeOne">6</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productThreeSizeTwo" name="sizeRadio" />
                          <label class="form-check-label" for="productThreeSizeTwo">6.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productThreeSizeThree" name="sizeRadio" />
                          <label class="form-check-label" for="productThreeSizeThree">7</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productThreeSizeFour" name="sizeRadio" />
                          <label class="form-check-label" for="productThreeSizeFour">7.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productThreeSizeFive" name="sizeRadio" />
                          <label class="form-check-label" for="productThreeSizeFive">8.5</label>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>

              </div>

            </div>

          </div>
          <div class="col-6 col-sm-6 col-md-4 col-lg-3">

            <!-- Card -->
            <div class="card mb-7" data-toggle="card-collapse">

              <!-- Image -->
              <img class="card-img-top" src="assets/img/products/product-8.jpg" alt="..." />

              <!-- Collapse -->
              <div class="card-collapse-parent">

                <!-- Body -->
                <div class="card-body px-0 pb-0 bg-white">
                  <div class="row gx-0">
                    <div class="col">

                      <!-- Title -->
                      <a class="d-block fw-bold text-body" href="product.html">
                        Cropped cotton Top
                      </a>

                      <!-- Category -->
                      <a class="fs-xs text-muted" href="shop.html">
                        Top
                      </a>

                    </div>
                    <div class="col-auto">

                      <!-- Price -->
                      <div class="fs-sm fw-bold text-muted">
                        $29.00
                      </div>

                    </div>
                  </div>
                </div>

                <!-- Footer -->
                <div class="card-collapse collapse">
                  <div class="card-footer px-0 bg-white">
                    <form>
                      <div class="mb-1">
                        <div class="form-check form-check-inline form-check-color">
                          <input class="form-check-input" type="radio" id="productFourColorOne" name="productFourColor" style="background-color: #f9f9f9;" checked />
                        </div>
                      </div>
                      <div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productFourSizeOne" name="sizeRadio" />
                          <label class="form-check-label" for="productFourSizeOne">6</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productFourSizeTwo" name="sizeRadio" />
                          <label class="form-check-label" for="productFourSizeTwo">6.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productFourSizeThree" name="sizeRadio" />
                          <label class="form-check-label" for="productFourSizeThree">7</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productFourSizeFour" name="sizeRadio" />
                          <label class="form-check-label" for="productFourSizeFour">7.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productFourSizeFive" name="sizeRadio" />
                          <label class="form-check-label" for="productFourSizeFive">8.5</label>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>

              </div>

            </div>

          </div>
          <div class="col-6 col-sm-6 col-md-4 col-lg-3">

            <!-- Card -->
            <div class="card mb-7" data-toggle="card-collapse">

              <!-- Image -->
              <img class="card-img-top" src="assets/img/products/product-9.jpg" alt="..." />

              <!-- Collapse -->
              <div class="card-collapse-parent">

                <!-- Body -->
                <div class="card-body px-0 pb-0 bg-white">
                  <div class="row gx-0">
                    <div class="col">

                      <!-- Title -->
                      <a class="d-block fw-bold text-body" href="product.html">
                        Floral print midi Dress
                      </a>

                      <!-- Category -->
                      <a class="fs-xs text-muted" href="shop.html">
                        Dresses
                      </a>

                    </div>
                    <div class="col-auto">

                      <!-- Price -->
                      <div class="fs-sm fw-bold text-muted">
                        $50.00
                      </div>

                    </div>
                  </div>
                </div>

                <!-- Footer -->
                <div class="card-collapse collapse">
                  <div class="card-footer px-0 bg-white">
                    <form>
                      <div class="mb-1">
                        <div class="form-check form-check-inline form-check-color">
                          <input class="form-check-input" type="radio" id="productFiveColorOne" name="productFiveColor" style="background-color: yellow;" checked />
                        </div>
                      </div>
                      <div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productFiveSizeOne" name="sizeRadio" />
                          <label class="form-check-label" for="productFiveSizeOne">6</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productFiveSizeTwo" name="sizeRadio" />
                          <label class="form-check-label" for="productFiveSizeTwo">6.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productFiveSizeThree" name="sizeRadio" />
                          <label class="form-check-label" for="productFiveSizeThree">7</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productFiveSizeFour" name="sizeRadio" />
                          <label class="form-check-label" for="productFiveSizeFour">7.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productFiveSizeFive" name="sizeRadio" />
                          <label class="form-check-label" for="productFiveSizeFive">8.5</label>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>

              </div>

            </div>

          </div>
          <div class="col-6 col-sm-6 col-md-4 col-lg-3">

            <!-- Card -->
            <div class="card mb-7" data-toggle="card-collapse">

              <!-- Badge -->
              <div class="badge bg-dark card-badge card-badge-start text-uppercase letter-spacing-lg">
                Sale
              </div>

              <!-- Image -->
              <div class="card-img" data-flickity='{"draggable": false}' id="productSixImg">
                <a class="d-block w-100" href="product.html">
                  <img class="card-img-top" src="assets/img/products/product-10.jpg" alt="..." />
                </a>
                <a class="d-block w-100" href="product.html">
                  <img class="card-img-top" src="assets/img/products/product-144.jpg" alt="..." />
                </a>
              </div>

              <!-- Collapse -->
              <div class="card-collapse-parent">

                <!-- Body -->
                <div class="card-body px-0 pb-0 bg-white">
                  <div class="row gx-0">
                    <div class="col">

                      <!-- Title -->
                      <a class="d-block fw-bold text-body" href="product.html">
                        Suede cross body Bag
                      </a>

                      <!-- Category -->
                      <a class="fs-xs text-muted" href="shop.html">
                        Bags
                      </a>

                    </div>
                    <div class="col-auto">

                      <!-- Price -->
                      <div class="fs-xs fw-bold text-gray-350 text-decoration-line-through">
                        $79.00
                      </div>
                      <div class="fs-sm fw-bold text-primary">
                        $49.00
                      </div>

                    </div>
                  </div>
                </div>

                <!-- Footer -->
                <div class="card-collapse collapse">
                  <div class="card-footer px-0 bg-white">
                    <form>
                      <div class="mb-1">
                        <div class="form-check form-check-inline form-check-color">
                          <input class="form-check-input" type="radio" id="productSixColorOne" name="productSixColor" data-toggle="flickity" data-target="#productSixImg" data-slide="0" style="background-color: beige;" checked />
                        </div>
                        <div class="form-check form-check-inline form-check-color ms-n2">
                          <input class="form-check-input" type="radio" id="productSixColorTwo" name="productSixColor" data-toggle="flickity" data-target="#productSixImg" data-slide="1" style="background-color: black;" />
                        </div>
                      </div>
                      <div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productSixSizeOne" name="sizeRadio" />
                          <label class="form-check-label" for="productSixSizeOne">6</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productSixSizeTwo" name="sizeRadio" />
                          <label class="form-check-label" for="productSixSizeTwo">6.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productSixSizeThree" name="sizeRadio" />
                          <label class="form-check-label" for="productSixSizeThree">7</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productSixSizeFour" name="sizeRadio" />
                          <label class="form-check-label" for="productSixSizeFour">7.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productSixSizeFive" name="sizeRadio" />
                          <label class="form-check-label" for="productSixSizeFive">8.5</label>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>

              </div>

            </div>

          </div>
          <div class="col-6 col-sm-6 col-md-4 col-lg-3">

            <!-- Card -->
            <div class="card mb-7" data-toggle="card-collapse">

              <!-- Image -->
              <img class="card-img-top" src="assets/img/products/product-11.jpg" alt="..." />

              <!-- Collapse -->
              <div class="card-collapse-parent">

                <!-- Body -->
                <div class="card-body px-0 pb-0 bg-white">
                  <div class="row gx-0">
                    <div class="col">

                      <!-- Title -->
                      <a class="d-block fw-bold text-body" href="product.html">
                        Printed A-line Skirt
                      </a>

                      <!-- Category -->
                      <a class="fs-xs text-muted" href="shop.html">
                        Skirts
                      </a>

                    </div>
                    <div class="col-auto">

                      <!-- Price -->
                      <div class="fs-sm fw-bold text-muted">
                        $79.00
                      </div>

                    </div>
                  </div>
                </div>

                <!-- Footer -->
                <div class="card-collapse collapse">
                  <div class="card-footer px-0 bg-white">
                    <form>
                      <div class="mb-1">
                        <div class="form-check form-check-inline form-check-color">
                          <input class="form-check-input" type="radio" id="productSevenColorOne" name="productSevenColor" style="background-color: black;" checked />
                        </div>
                      </div>
                      <div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productSevenSizeOne" name="sizeRadio" />
                          <label class="form-check-label" for="productSevenSizeOne">6</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productSevenSizeTwo" name="sizeRadio" />
                          <label class="form-check-label" for="productSevenSizeTwo">6.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productSevenSizeThree" name="sizeRadio" />
                          <label class="form-check-label" for="productSevenSizeThree">7</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productSevenSizeFour" name="sizeRadio" />
                          <label class="form-check-label" for="productSevenSizeFour">7.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productSevenSizeFive" name="sizeRadio" />
                          <label class="form-check-label" for="productSevenSizeFive">8.5</label>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>

              </div>

            </div>

          </div>
          <div class="col-6 col-sm-6 col-md-4 col-lg-3">

            <!-- Card -->
            <div class="card mb-7" data-toggle="card-collapse">

              <!-- Badge -->
              <div class="badge bg-white text-body card-badge card-badge-start text-uppercase">
                New
              </div>

              <!-- Image -->
              <div class="card-img" data-flickity='{"draggable": false}' id="productEightImg">
                <a class="d-block w-100" href="product.html">
                  <img class="card-img-top" src="assets/img/products/product-12.jpg" alt="..." />
                </a>
                <a class="d-block w-100" href="product.html">
                  <img class="card-img-top" src="assets/img/products/product-145.jpg" alt="..." />
                </a>
              </div>

              <!-- Collapse -->
              <div class="card-collapse-parent">

                <!-- Body -->
                <div class="card-body px-0 pb-0 bg-white">
                  <div class="row gx-0">
                    <div class="col">

                      <!-- Title -->
                      <a class="d-block fw-bold text-body" href="product.html">
                        Heel strappy Sandals
                      </a>

                      <!-- Category -->
                      <a class="fs-xs text-muted" href="shop.html">
                        Shoes
                      </a>

                    </div>
                    <div class="col-auto">

                      <!-- Price -->
                      <div class="fs-sm fw-bold text-muted">
                        $90.00
                      </div>

                    </div>
                  </div>
                </div>

                <!-- Footer -->
                <div class="card-collapse collapse">
                  <div class="card-footer px-0 bg-white">
                    <form>
                      <div class="mb-1">
                        <div class="form-check form-check-inline form-check-color">
                          <input class="form-check-input" type="radio" id="productEightColorOne" name="productEightColor" data-toggle="flickity" data-target="#productEightImg" data-slide="0" style="background-color: black;" checked />
                        </div>
                        <div class="form-check form-check-inline form-check-color ms-n2">
                          <input class="form-check-input" type="radio" id="productEightColorTwo" name="productEightColor" data-toggle="flickity" data-target="#productEightImg" data-slide="1" style="background-color: red;" />
                        </div>
                      </div>
                      <div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productEightSizeOne" name="sizeRadio" />
                          <label class="form-check-label" for="productEightSizeOne">6</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productEightSizeTwo" name="sizeRadio" />
                          <label class="form-check-label" for="productEightSizeTwo">6.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productEightSizeThree" name="sizeRadio" />
                          <label class="form-check-label" for="productEightSizeThree">7</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productEightSizeFour" name="sizeRadio" />
                          <label class="form-check-label" for="productEightSizeFour">7.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productEightSizeFive" name="sizeRadio" />
                          <label class="form-check-label" for="productEightSizeFive">8.5</label>
                        </div>
                      </div>
                    </form>
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
              <a class="link-underline" href="shop.html">Discover more</a>
            </div>

          </div>
        </div>
      </div>
    </section>

    <!-- MUST HAVES -->
    <section class="bg-light overflow-hidden">
      <div class="container">
        <div class="row gx-0 justify-content-between">
          <div class="col-12 col-md-5 col-lg-4 py-13">

            <!-- Pretitle -->
            <h6 class="heading-xxs text-gray-400">
              Summer trends
            </h6>

            <!-- Heading -->
            <h1 class="mb-4">Our must haves</h1>

            <!-- Text -->
            <p class="text-gray-500 mb-8">
              Male his our upon seed had said wherein their
              i great wherein under you'll deep first multiply.
              Fish waters they're herb shall saying.
            </p>

            <!-- Button -->
            <a class="btn btn-dark" href="shop.html">
              Shop Now <i class="fe fe-arrow-right ms-2"></i>
            </a>

          </div>
          <div class="col-12 col-md-6">

            <!-- Image -->
            <div class="h-100 vw-50 bg-cover" style="background-image: url(/static/assets/img/covers/cover-10.jpg);"></div>

          </div>
        </div>
      </div>
    </section>

    <!-- NEW COLLECTION -->
    <section>
      <div class="container">
        <div class="row align-items-center">
          <div class="col-12 col-md-4">

            <!-- Image -->
            <img src="assets/img/products/product-38.jpg" alt="..." class="img-fluid my-12">

          </div>
          <div class="col-12 col-md-4 text-center">

            <!-- Heading -->
            <h2 class="mb-4">
              New 2019 Summer collection
            </h2>

            <!-- Text -->
            <p class="mb-7 text-gray-500">
              Appear, dry there darkness they're seas, dry
              waters thing fly midst. Beast, above fly
              brought Very green.
            </p>

            <!-- Link  -->
            <a class="link-underline" href="shop.html">Discover more</a>

          </div>
          <div class="col-12 col-md-4">

            <!-- Video -->
            <div class="position-relative">

              <!-- Poster -->
              <img src="assets/img/products/product-39.jpg" alt="..." class="img-fluid my-12">

              <!-- Button -->
              <a class="btn btn-lg btn-circle btn-white btn-hover center" data-bigpicture='{"ytSrc": "BGrY85i-skk"}' href="#">
                <i class="fas fa-play"></i>
              </a>

            </div>

          </div>
        </div>
      </div>
    </section>

    <!-- BRAND -->
    <section class="py-12 bg-light">
      <div class="container">
        <div class="row">
          <div class="col-12">

            <!-- Heading -->
            <h2 class="mb-10 text-center">
              Shop by Brand
            </h2>

          </div>
        </div>
        <div class="row">
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="shop.html">
              <img class="brand-img" src="assets/img/brands/gray-350/mango.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="shop.html">
              <img class="brand-img" src="assets/img/brands/gray-350/zara.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="shop.html">
              <img class="brand-img" src="assets/img/brands/gray-350/reebok.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="shop.html">
              <img class="brand-img" src="assets/img/brands/gray-350/asos.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="shop.html">
              <img class="brand-img" src="assets/img/brands/gray-350/stradivarius.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="shop.html">
              <img class="brand-img" src="assets/img/brands/gray-350/adidas.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="shop.html">
              <img class="brand-img" src="assets/img/brands/gray-350/bershka.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="shop.html">
              <img class="brand-img" src="assets/img/brands/gray-350/forever21.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="shop.html">
              <img class="brand-img" src="assets/img/brands/gray-350/esprit.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="shop.html">
              <img class="brand-img" src="assets/img/brands/gray-350/converse.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="shop.html">
              <img class="brand-img" src="assets/img/brands/gray-350/calvin-klein.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="#!">
              <img class="brand-img" src="assets/img/brands/gray-350/joop.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="#!">
              <img class="brand-img" src="assets/img/brands/gray-350/h&m.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="#!">
              <img class="brand-img" src="assets/img/brands/gray-350/only.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="#!">
              <img class="brand-img" src="assets/img/brands/gray-350/guess.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="#!">
              <img class="brand-img" src="assets/img/brands/gray-350/river-island.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="#!">
              <img class="brand-img" src="assets/img/brands/gray-350/victorias-secret.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="#!">
              <img class="brand-img" src="assets/img/brands/gray-350/topshop.svg" alt="...">
            </a>

          </div>
        </div>
        <div class="row">
          <div class="col-12 text-center">

            <!-- Link  -->
            <div class="mt-10 text-center">
              <a class="link-underline" href="shop.html">Discover more</a>
            </div>

          </div>
        </div>
      </div>
    </section>

    <!-- NEW ARRIVAL -->
    <section>
      <div class="container py-12 border-bottom">
        <div class="row">
          <div class="col-12">

            <!-- Heading -->
            <h2 class="mb-10 text-center">New Arrivals</h2>

            <!-- Slider-->
            <div class="flickity-buttons-lg flickity-buttons-offset px-lg-12" data-flickity='{"prevNextButtons": true}'>

              <!-- Card -->
              <div class="col-12 col-md-4 mb-10 px-4">
                <div class="card">

                  <!-- Image -->
                  <a href="product.html">
                    <img class="card-img-top" src="assets/img/products/product-26.jpg" alt="...">
                  </a>

                  <!-- Body -->
                  <div class="card-body px-0">
                    <div class="d-flex">

                      <!-- Caption -->
                      <div class="me-auto">

                        <!-- Heading -->
                        <div class="fw-bold">
                          <a class="text-body" href="product.html">Striped knit Top</a>
                        </div>

                        <!-- Text -->
                        <div class="fs-sm">
                          <a class="text-muted" href="shop.html">Tops</a>
                        </div>

                      </div>

                      <!-- Price -->
                      <div class="fs-sm fw-bold text-muted">
                        $39.00
                      </div>

                    </div>
                  </div>

                </div>
              </div>

              <!-- Card -->
              <div class="col-12 col-md-4 mb-10 px-4">
                <div class="card">

                  <!-- Image -->
                  <a href="product.html">
                    <img class="card-img-top" src="assets/img/products/product-25.jpg" alt="...">
                  </a>

                  <!-- Body -->
                  <div class="card-body px-0">
                    <div class="d-flex">

                      <!-- Caption -->
                      <div class="me-auto">

                        <!-- Heading -->
                        <div class="fw-bold">
                          <a class="text-body" href="product.html">Floral print Dress</a>
                        </div>

                        <!-- Text -->
                        <div class="fs-sm">
                          <a class="text-muted" href="shop.html">Dress</a>
                        </div>

                      </div>

                      <!-- Price -->
                      <div class="fs-sm fw-bold text-muted">
                        $60.00
                      </div>

                    </div>
                  </div>

                </div>
              </div>

              <!-- Card -->
              <div class="col-12 col-md-4 mb-10 px-4">
                <div class="card">

                  <!-- Image -->
                  <a href="product.html">
                    <img class="card-img-top" src="assets/img/products/product-28.jpg" alt="...">
                  </a>

                  <!-- Body -->
                  <div class="card-body px-0">
                    <div class="d-flex">

                      <!-- Caption -->
                      <div class="me-auto">

                        <!-- Heading -->
                        <div class="fw-bold">
                          <a class="text-body" href="product.html">Straight Trousers with Belt</a>
                        </div>

                        <!-- Text -->
                        <div class="fs-sm">
                          <a class="text-muted" href="shop.html">Trousers</a>
                        </div>

                      </div>

                      <!-- Price -->
                      <div class="fs-sm fw-bold text-muted">
                        $79.00
                      </div>

                    </div>
                  </div>

                </div>
              </div>

              <!-- Card -->
              <div class="col-12 col-md-4 mb-10 px-4">
                <div class="card">

                  <!-- Image -->
                  <a href="product.html">
                    <img class="card-img-top" src="assets/img/products/product-27.jpg" alt="...">
                  </a>

                  <!-- Body -->
                  <div class="card-body px-0">
                    <div class="d-flex">

                      <!-- Caption -->
                      <div class="me-auto">

                        <!-- Heading -->
                        <div class="fw-bold">
                          <a class="text-body" href="product.html">Fine quality jeans</a>
                        </div>

                        <!-- Text -->
                        <div class="fs-sm text-muted">
                          <a class="text-muted" href="shop.html">Trousers</a>
                        </div>

                      </div>

                      <!-- Price -->
                      <div class="fs-sm fw-bold text-muted">
                        $69.00
                      </div>

                    </div>
                  </div>

                </div>
              </div>

            </div>

            <!-- Button -->
            <div class="text-center">
              <a class="btn btn-dark" href="shop.html">
                Shop Now <i class="fe fe-arrow-right ms-2"></i>
              </a>
            </div>

          </div>
        </div>
      </div>
    </section>

    <!-- NEWSLETTER -->
    <section class="py-12">
      <div class="container">
        <div class="row">
          <div class="col-12 text-center">

            <!-- Heading -->
            <h3>
              Subscribe to our Newsletter
            </h3>

            <!-- Subheading -->
            <p class="mb-7 fs-lg text-gray-500">
              Receive an exclusive 10% discount code when you signup.
            </p>

          </div>
        </div>
        <div class="row justify-content-center">
          <div class="col-12 col-md-8 col-lg-6">

            <!-- Form -->
            <form>
              <div class="input-group">

                <!-- Input -->
                <input class="form-control form-control-underline form-control-sm border-dark" type="email" placeholder="Enter Email *">

                <!-- Button -->
                <div class="input-group-append">
                  <button class="btn btn-underline btn-sm border-dark" type="button">Subscribe</button>
                </div>

              </div>
            </form>

          </div>
        </div>
      </div>
    </section>

    <!-- INSTASHOP -->
    <section class="bg-light">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12 col-lg-4">
            <div class="row h-100">
              <div class="col-6 bg-cover" style="background-image: url(assets/img/products/product-16.jpg);"></div>
              <div class="col-6 bg-cover" style="background-image: url(assets/img/products/product-40.jpg);"></div>
              <div class="col-6 bg-cover" style="background-image: url(assets/img/products/product-41.jpg);"></div>
              <div class="col-6 bg-cover" style="background-image: url(assets/img/products/product-17.jpg);"></div>
            </div>
          </div>
          <div class="col-12 col-lg-4 py-12 px-9 text-center">

            <!-- Icon -->
            <div class="h3 mb-6">
              <i class="fe fe-instagram"></i>
            </div>

            <!-- Heading -->
            <h2 class="mb-6">Instashop</h2>

            <!-- Text -->
            <p class="mb-8 fs-lg text-muted">
              Appear, dry there darkness they're seas, dry
              waters thing fly midst. Beast, above fly
              brought Very green.
            </p>

            <!-- Link -->
            <a href="#!" class="link-underline">Go to Instagram</a>

          </div>
          <div class="col-12 col-lg-4">
            <div class="row h-100">
              <div class="col-6 bg-cover" style="background-image: url(assets/img/products/product-42.jpg);"></div>
              <div class="col-6 bg-cover" style="background-image: url(assets/img/products/product-21.jpg);"></div>
              <div class="col-6 bg-cover" style="background-image: url(assets/img/products/product-18.jpg);"></div>
              <div class="col-6 bg-cover" style="background-image: url(assets/img/products/product-43.jpg);"></div>
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
