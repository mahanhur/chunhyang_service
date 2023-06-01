<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<body>

<%--<!-- Newsletter: Horizontal -->
<div class="modal fade" id="modalNewsletterHorizontal" tabindex="-1" role="dialog" aria-hidden="true">
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
                    <img class="img-fluid" src="./assets/img/covers/cover-25.jpg" alt="...">

                </div>
                <div class="col-12 col-lg-7 d-flex flex-column px-md-8">

                    <!-- Body -->
                    <div class="modal-body my-auto py-10">

                        <!-- Heading -->
                        <h4>Subscribe to Newsletter and get 15% Discount</h4>

                        <!-- Text -->
                        <p class="mb-7 fs-lg">
                            On your next purchase
                        </p>

                        <!-- Form -->
                        <form>
                            <div class="row gx-5">
                                <div class="col">

                                    <!-- Input -->
                                    <label class="visually-hidden" for="modalNewsletterHorizontalEmail">Enter Email *</label>
                                    <input class="form-control form-control-sm" id="modalNewsletterHorizontalEmail" type="email" placeholder="Enter Email *">

                                </div>
                                <div class="col-auto">

                                    <!-- Button -->
                                    <button class="btn btn-sm btn-dark" type="submit">
                                        <i class="fe fe-send"></i>
                                    </button>

                                </div>
                            </div>
                        </form>

                    </div>

                    <!-- Footer -->
                    <div class="modal-footer pt-0">

                        <!-- Checkbox -->
                        <div class="form-check">

                            <!-- Input -->
                            <input class="form-check-input" id="modalNewsletterHorizontalCheckbox" type="checkbox">

                            <!-- Label -->
                            <label class="form-check-label fs-xs" for="modalNewsletterHorizontalCheckbox">
                                Prevent this Pop-up
                            </label>

                        </div>

                    </div>

                </div>
            </div>

        </div>

    </div>
</div>

<!-- Newsletter: Vertical -->
<div class="modal fade" id="modalNewsletterVertical" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">

            <!-- Close -->
            <button type="button" class="btn-close text-white" data-bs-dismiss="modal" aria-label="Close">
                <i class="fe fe-x" aria-hidden="true"></i>
            </button>

            <!-- Body -->
            <div class="modal-body mt-2 me-2 ms-2 py-10 bg-cover text-center text-white" style="background-image: url(./assets/img/covers/cover-26.jpg);">

                <!-- Heading -->
                <h4>Subscribe to Newsletter and get 15% Discount</h4>

                <!-- Text -->
                <p class="mb-0 fs-lg">
                    On your next purchase
                </p>

            </div>

            <!-- Body -->
            <div class="modal-body py-9">

                <!-- Form -->
                <form>
                    <div class="row gx-5">
                        <div class="col">

                            <!-- Input -->
                            <label class="visually-hidden" for="modalNewsletterVerticalEmail">Enter Email *</label>
                            <input class="form-control form-control-sm" id="modalNewsletterVerticalEmail" type="email" placeholder="Enter Email *">

                        </div>
                        <div class="col-auto">

                            <!-- Button -->
                            <button class="btn btn-sm btn-dark" type="submit">
                                Subscribe
                            </button>

                        </div>
                    </div>
                </form>

            </div>

            <!-- Footer -->
            <div class="modal-footer justify-content-center pt-0">

                <!-- Checkbox -->
                <div class="form-check">

                    <!-- Input -->
                    <input class="form-check-input" id="modalNewsletterVerticalCheckbox" type="checkbox">

                    <!-- Label -->
                    <label class="form-check-label fs-xs" for="modalNewsletterVerticalCheckbox">
                        Prevent this Pop-up
                    </label>

                </div>

            </div>

        </div>

    </div>
</div>

<!-- Password Reset -->
<div class="modal fade" id="modalPasswordReset" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">

            <!-- Close -->
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                <i class="fe fe-x" aria-hidden="true"></i>
            </button>

            <!-- Header-->
            <div class="modal-header lh-fixed fs-lg">
                <strong class="mx-auto">Forgot Password?</strong>
            </div>

            <!-- Body -->
            <div class="modal-body text-center">

                <!-- Text -->
                <p class="mb-7 fs-sm text-gray-500">
                    Please enter your Email Address. You will receive a link
                    to create a new password via Email.
                </p>

                <!-- Form -->
                <form>

                    <!-- Email -->
                    <div class="form-group">
                        <label class="visually-hidden" for="modalPasswordResetEmail">
                            Email Address *
                        </label>
                        <input class="form-control form-control-sm" id="modalPasswordResetEmail" type="email" placeholder="Email Address *" required>
                    </div>

                    <!-- Button -->
                    <button class="btn btn-sm btn-dark">
                        Reset Password
                    </button>

                </form>

            </div>

        </div>

    </div>
</div>--%>

<!-- PRODUCT -->
<section>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="row">
                    <div class="col-12 col-md-6">
                        <!-- 왼쪽 상단 Card 시작-->
                        <div class="card">
                            <!-- Badge -->
                            <div class="badge bg-primary card-badge text-uppercase">
                                초특가!
                            </div>
                            <!-- 큰 이미지 시작 -->
                            <div class="mb-4" data-flickity='{"draggable": false, "fade": true}' id="productSlider">

                                <!-- main Itemimg -->
                                <a href="#" data-bigpicture='{ "imgSrc": "/uimg/${detail.item_img}"}'>
                                    <img src="/uimg/${detail.item_img}" alt="..." class="card-img-top">
                                </a>
                                <!-- sub Itemimg -->
                                <c:forEach var="obj" items="${bipumlist}">
                                    <a href="#" data-bigpicture='{"imgSrc": "/uimg/${obj.item_subimg}"}'>
                                        <img src="/uimg/${obj.item_subimg}" alt="..." class="card-img-top">
                                    </a>
                                </c:forEach>
                            </div>
                            <!-- 큰 이미지 끝 -->
                        </div>
                        <!-- 왼쪽 상단 Card 끝-->

                        <!-- 작은 이미지 Slider 시작-->
                        <div class="flickity-nav mx-n2 mb-10 mb-md-0" data-flickity='{"asNavFor": "#productSlider", "contain": true, "wrapAround": false}'>

                            <!-- main Item -->
                            <div class="col-12 px-2" style="max-width: 113px;">

                                <!-- main Image -->
                                <div class="ratio ratio-1x1 bg-cover"><img src="/uimg/${detail.item_img}"></div>
                            </div>
                            <!-- sub Item  -->
                            <c:forEach var="obj" items="${bipumlist}">
                            <div class="col-12 px-2" style="max-width: 113px;">
                                <!-- sub Image -->
                                <div class="ratio ratio-1x1 bg-cover"><img src="/uimg/${obj.item_subimg}"></div>
                            </div>
                            </c:forEach>
                        </div>
                        <!-- 작은 이미지 Slider 끝-->
                    </div>
                    <!-- 오른쪽 부분 시작 -->
                    <div class="col-12 col-md-6 ps-lg-10">
                        <!-- Header -->
                        <div class="row mb-1">
                            <div class="col">
                                <!-- 링크. 지울까? -->
                                <a class="text-muted" href="#">링크...넣을까??</a>
                            </div>
                            <!-- 별점 및 리뷰 시작-->
                            <div class="col-auto">
                                <div class="rating fs-xs text-dark" data-value="3">
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
                                <a class="fs-sm text-reset ms-2" href="#reviews">
                                    리뷰 (6)
                                </a>
                            </div>
                            <!-- 별점 및 리뷰 끝-->
                        </div>
                        </br>
                        <!-- 아이템 이름 -->

                        <h3 class="mb-2">${detail.item_name}</h3></br>
                        <h7 class="mb-2">${detail.item_content}</h7>
                        <hr>
                        <!-- 가격 및 재고 -->
                        <div class="mb-7">
                            <span class="ms-1 fs-5 fw-bolder text-primary">
                                <fmt:formatNumber value="${detail.item_price}" pattern="###,###원"/>
                            </span>
                            <span class="badge rounded bg-success">재고: ${detail.item_cnt}개</span>
                        </div>
                        <!-- 수량, 카트, 찜 입력 Form 시작-->
                        <form>
                            <div class="form-group">
                                <!-- Size chart -->
                                <p class="mb-8">
                                    <img src="/assets/img/icons/icon-ruler.svg" alt="..." class="img-fluid">
                                    <a class="text-reset text-decoration-underline ms-3" data-bs-toggle="modal" href="#modalSizeChart">기본 안내사항 넣을까?</a>
                                </p>
                                <div class="row gx-5 mb-7">
                                    <div class="col-12 col-lg-auto">
                                        <!-- Quantity -->
                                        <select class="form-select mb-2">
                                            <option value="1" selected>1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                        </select>
                                    </div>
                                    <div class="col-12 col-lg">
                                        <!-- 장바구니 담기 -->
                                        <button type="submit" class="btn w-100 btn-dark mb-2">
                                            장바구니에 담기 <i class="fe fe-shopping-cart ms-2"></i>
                                        </button>
                                    </div>
                                    <div class="col-12 col-lg-auto">
                                        <!-- 찜하기 -->
                                        <button class="btn btn-outline-dark w-100 mb-2" data-toggle="button">
                                            찜하기 <i class="fe fe-heart ms-2"></i>
                                        </button>

                                    </div>
                                </div>
                                <!-- 담당자에게 연락하기 -->
                                <p>
                                    <span class="text-gray-500">원하시는 상품이 품절인가요??</span>
                                    <a class="text-reset text-decoration-underline" data-bs-toggle="modal" href="#modalWaitList">담당자에게 연락 주세요!</a>
                                </p>
                                <!-- 공유하기 -->
                                <p class="mb-0">
                                    <span class="me-4">공유하기:</span>
                                    <a class="btn btn-xxs btn-circle btn-light fs-xxxs text-gray-350" href="#!">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                    <a class="btn btn-xxs btn-circle btn-light fs-xxxs text-gray-350" href="#!">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                    <a class="btn btn-xxs btn-circle btn-light fs-xxxs text-gray-350" href="#!">
                                        <i class="fab fa-pinterest-p"></i>
                                    </a>
                                </p>
                            </div>
                        </form>
                        <!-- 수량, 카트, 찜 입력 Form 끝-->

                    </div>
                    <!-- 오른쪽 부분 끝 -->
                </div>
           </div>
        </div>
    </div>
</section>

<!-- DESCRIPTION -->
<section class="pt-11">
    <div class="container">
        <div class="row">
            <div class="col-12">

                <!-- Nav -->
                <div class="nav nav-tabs nav-overflow justify-content-start justify-content-md-center border-bottom">
                    <a class="nav-link active" data-bs-toggle="tab" href="#descriptionTab">
                        설명
                    </a>
                    <a class="nav-link" data-bs-toggle="tab" href="#sizeTab">
                        상품 크기
                    </a>
                    <a class="nav-link" data-bs-toggle="tab" href="#shippingTab">
                        배송 및 환율
                    </a>
                </div>

                <!-- Content -->
                <div class="tab-content">
                    <div class="tab-pane fade show active" id="descriptionTab">
                        <div class="row justify-content-center py-9">
                            <div class="col-12 col-lg-10 col-xl-8">
                                <div class="row">
                                    <div class="col-12">

                                        <!-- Text -->
                                        <p class="text-gray-500">
                                            Won't herb first male seas, beast. Let upon, female upon third fifth every. Man subdue rule after years herb after
                                            form. And image may, morning. Behold in tree day sea that together cattle whose. Fifth gathering brought
                                            bearing. Abundantly creeping whose. Beginning form have void two. A whose.
                                        </p>

                                    </div>
                                    <div class="col-12 col-md-6">

                                        <!-- List -->
                                        <ul class="list list-unstyled mb-md-0 text-gray-500">
                                            <li>
                                                <strong class="text-body">SKU</strong>: #61590437
                                            </li>
                                            <li>
                                                <strong class="text-body">Occasion</strong>: Lifestyle, Sport
                                            </li>
                                            <li>
                                                <strong class="text-body">Country</strong>: Italy
                                            </li>
                                        </ul>

                                    </div>
                                    <div class="col-12 col-md-6">

                                        <!-- List -->
                                        <ul class="list list-unstyled mb-0">
                                            <li>
                                                <strong>Outer</strong>: Leather 100%, Polyamide 100%
                                            </li>
                                            <li>
                                                <strong>Lining</strong>: Polyester 100%
                                            </li>
                                            <li>
                                                <strong>CounSoletry</strong>: Rubber 100%
                                            </li>
                                        </ul>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="sizeTab">
                        <div class="row justify-content-center py-9">
                            <div class="col-12 col-lg-10 col-xl-8">
                                <div class="row">
                                    <div class="col-12 col-md-6">

                                        <!-- Text -->
                                        <p class="mb-4">
                                            <strong>Fitting information:</strong>
                                        </p>

                                        <!-- List -->
                                        <ul class="mb-md-0 text-gray-500">
                                            <li>
                                                Upon seas hath every years have whose
                                                subdue creeping they're it were.
                                            </li>
                                            <li>
                                                Make great day bearing.
                                            </li>
                                            <li>
                                                For the moveth is days don't said days.
                                            </li>
                                        </ul>

                                    </div>
                                    <div class="col-12 col-md-6">

                                        <!-- Text -->
                                        <p class="mb-4">
                                            <strong>Model measurements:</strong>
                                        </p>

                                        <!-- List -->
                                        <ul class="list-unstyled text-gray-500">
                                            <li>Height: 1.80 m</li>
                                            <li>Bust/Chest: 89 cm</li>
                                            <li>Hips: 91 cm</li>
                                            <li>Waist: 65 cm</li>
                                            <li>Model size: M</li>
                                        </ul>

                                        <!-- Size -->
                                        <p class="mb-0">
                                            <img src="assets/img/icons/icon-ruler.svg" alt="..." class="img-fluid">
                                            <a class="text-reset text-decoration-underline ms-3" data-bs-toggle="modal" href="#modalSizeChart">Size chart</a>
                                        </p>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="shippingTab">
                        <div class="row justify-content-center py-9">
                            <div class="col-12 col-lg-10 col-xl-8">

                                <!-- Table -->
                                <div class="table-responsive">
                                    <table class="table table-bordered table-sm table-hover">
                                        <thead>
                                        <tr>
                                            <th>Shipping Options</th>
                                            <th>Delivery Time</th>
                                            <th>Price</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>Standard Shipping</td>
                                            <td>Delivery in 5 - 7 working days</td>
                                            <td>$8.00</td>
                                        </tr>
                                        <tr>
                                            <td>Express Shipping</td>
                                            <td>Delivery in 3 - 5 working days</td>
                                            <td>$12.00</td>
                                        </tr>
                                        <tr>
                                            <td>1 - 2 day Shipping</td>
                                            <td>Delivery in 1 - 2 working days</td>
                                            <td>$12.00</td>
                                        </tr>
                                        <tr>
                                            <td>Free Shipping</td>
                                            <td>
                                                Living won't the He one every subdue meat replenish
                                                face was you morning firmament darkness.
                                            </td>
                                            <td>$0.00</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <!-- Caption -->
                                <p class="mb-0 text-gray-500">
                                    May, life blessed night so creature likeness their, for. <a class="text-body text-decoration-underline" href="#!">Find out more</a>
                                </p>

                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>

<!-- PRODUCTS -->
<section class="pt-11">
    <div class="container">
        <div class="row">
            <div class="col-12">

                <!-- Heading -->
                <h4 class="mb-10 text-center">You might also like</h4>

                <!-- Items -->
                <div class="row">
                    <div class="col-6 col-sm-6 col-md-4 col-lg-3">

                        <!-- Card -->
                        <div class="card mb-7">

                            <!-- Badge -->
                            <div class="badge bg-white text-body card-badge card-badge-start text-uppercase">
                                New
                            </div>

                            <!-- Image -->
                            <div class="card-img">

                                <!-- Image -->
                                <a class="card-img-hover" href="product.html">
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
                                    <a class="text-muted" href="shop.html">Shoes</a>
                                </div>

                                <!-- Title -->
                                <div class="fw-bold">
                                    <a class="text-body" href="product.html">
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
                    <div class="col-6 col-sm-6 col-md-4 col-lg-3">

                        <!-- Card -->
                        <div class="card mb-7">

                            <!-- Image -->
                            <div class="card-img">

                                <!-- Image -->
                                <a class="card-img-hover" href="product.html">
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
                                    <a class="text-muted" href="shop.html">Dresses</a>
                                </div>

                                <!-- Title -->
                                <div class="fw-bold">
                                    <a class="text-body" href="product.html">
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
                    <div class="col-6 col-sm-6 col-md-4 col-lg-3">

                        <!-- Card -->
                        <div class="card mb-7">

                            <!-- Badge -->
                            <div class="badge bg-dark card-badge card-badge-start text-uppercase">
                                Sale
                            </div>

                            <!-- Image -->
                            <div class="card-img">

                                <!-- Image -->
                                <a class="card-img-hover" href="product.html">
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
                                    <a class="text-muted" href="shop.html">Shoes</a>
                                </div>

                                <!-- Title -->
                                <div class="fw-bold">
                                    <a class="text-body" href="product.html">
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
                    <div class="col-6 col-sm-6 col-md-4 col-lg-3 d-md-none d-lg-block">

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
                                    <a class="text-muted" href="shop.html">Tops</a>
                                </div>

                                <!-- Title -->
                                <div class="fw-bold">
                                    <a class="text-body" href="product.html">
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
                </div>

            </div>
        </div>
    </div>
</section>

<!-- REVIEWS -->
<section class="pt-9 pb-11" id="reviews">
    <div class="container">
        <div class="row">
            <div class="col-12">

                <!-- Heading -->
                <h4 class="mb-10 text-center">Customer Reviews</h4>

                <!-- Header -->
                <div class="row align-items-center">
                    <div class="col-12 col-md-auto">

                        <!-- Dropdown -->
                        <div class="dropdown mb-4 mb-md-0">

                            <!-- Toggle -->
                            <a class="dropdown-toggle text-reset" data-bs-toggle="dropdown" href="#">
                                <strong>Sort by: Newest</strong>
                            </a>

                            <!-- Menu -->
                            <div class="dropdown-menu mt-3">
                                <a class="dropdown-item" href="#!">Newest</a>
                                <a class="dropdown-item" href="#!">Oldest</a>
                            </div>

                        </div>

                    </div>
                    <div class="col-12 col-md text-md-center">

                        <!-- Rating -->
                        <div class="rating text-dark h6 mb-4 mb-md-0" data-value="4">
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

                        <!-- Count -->
                        <strong class="fs-sm ms-2">Reviews (3)</strong>

                    </div>
                    <div class="col-12 col-md-auto">

                        <!-- Button -->
                        <a class="btn btn-sm btn-dark" data-bs-toggle="collapse" href="#reviewForm">
                            Write Review
                        </a>

                    </div>
                </div>

                <!-- New Review -->
                <div class="collapse" id="reviewForm">

                    <!-- Divider -->
                    <hr class="my-8">

                    <!-- Form -->
                    <form>
                        <div class="row">
                            <div class="col-12 mb-6 text-center">

                                <!-- Text -->
                                <p class="mb-1 fs-xs">
                                    Score:
                                </p>

                                <!-- Rating form -->
                                <div class="rating-form">

                                    <!-- Input -->
                                    <input class="rating-input" type="range" min="1" max="5" value="5">

                                    <!-- Rating -->
                                    <div class="rating h5 text-dark" data-value="5">
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
                            <div class="col-12 col-md-6">

                                <!-- Name -->
                                <div class="form-group">
                                    <label class="visually-hidden" for="reviewName">Your Name:</label>
                                    <input class="form-control form-control-sm" id="reviewName" type="text" placeholder="Your Name *" required>
                                </div>

                            </div>
                            <div class="col-12 col-md-6">

                                <!-- Email -->
                                <div class="form-group">
                                    <label class="visually-hidden" for="reviewEmail">Your Email:</label>
                                    <input class="form-control form-control-sm" id="reviewEmail" type="email" placeholder="Your Email *" required>
                                </div>

                            </div>
                            <div class="col-12">

                                <!-- Name -->
                                <div class="form-group">
                                    <label class="visually-hidden" for="reviewTitle">Review Title:</label>
                                    <input class="form-control form-control-sm" id="reviewTitle" type="text" placeholder="Review Title *" required>
                                </div>

                            </div>
                            <div class="col-12">

                                <!-- Name -->
                                <div class="form-group">
                                    <label class="visually-hidden" for="reviewText">Review:</label>
                                    <textarea class="form-control form-control-sm" id="reviewText" rows="5" placeholder="Review *" required></textarea>
                                </div>

                            </div>
                            <div class="col-12 text-center">

                                <!-- Button -->
                                <button class="btn btn-outline-dark" type="submit">
                                    Post Review
                                </button>

                            </div>
                        </div>
                    </form>

                </div>

                <!-- Reviews -->
                <div class="mt-8">

                    <!-- Review -->
                    <div class="review">
                        <div class="review-body">
                            <div class="row">
                                <div class="col-12 col-md-auto">

                                    <!-- Avatar -->
                                    <div class="avatar avatar-xxl mb-6 mb-md-0">
                        <span class="avatar-title rounded-circle">
                          <i class="fa fa-user"></i>
                        </span>
                                    </div>

                                </div>
                                <div class="col-12 col-md">

                                    <!-- Header -->
                                    <div class="row mb-6">
                                        <div class="col-12">

                                            <!-- Rating -->
                                            <div class="rating fs-sm text-dark" data-value="5">
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
                                        <div class="col-12">

                                            <!-- Time -->
                                            <span class="fs-xs text-muted">
                            Logan Edwards, <time datetime="2019-07-25">25 Jul 2019</time>
                          </span>

                                        </div>
                                    </div>

                                    <!-- Title -->
                                    <p class="mb-2 fs-lg fw-bold">
                                        So cute!
                                    </p>

                                    <!-- Text -->
                                    <p class="text-gray-500">
                                        Justo ut diam erat hendrerit. Morbi porttitor, per eu. Sodales curabitur diam sociis. Taciti lobortis nascetur. Ante laoreet odio hendrerit.
                                        Dictumst curabitur nascetur lectus potenti dis sollicitudin habitant quis vestibulum.
                                    </p>

                                    <!-- Footer -->
                                    <div class="row align-items-center">
                                        <div class="col-auto d-none d-lg-block">

                                            <!-- Text -->
                                            <p class="mb-0 fs-sm">Was this review helpful?</p>

                                        </div>
                                        <div class="col-auto me-auto">

                                            <!-- Rate -->
                                            <div class="rate">
                                                <a class="rate-item" data-toggle="vote" data-count="3" href="#" role="button">
                                                    <i class="fe fe-thumbs-up"></i>
                                                </a>
                                                <a class="rate-item" data-toggle="vote" data-count="0" href="#" role="button">
                                                    <i class="fe fe-thumbs-down"></i>
                                                </a>
                                            </div>

                                        </div>
                                        <div class="col-auto d-none d-lg-block">

                                            <!-- Text -->
                                            <p class="mb-0 fs-sm">Comments (0)</p>

                                        </div>
                                        <div class="col-auto">

                                            <!-- Button -->
                                            <a class="btn btn-xs btn-outline-border" href="#!">
                                                Comment
                                            </a>

                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Review -->
                    <div class="review">

                        <!-- Body -->
                        <div class="review-body">
                            <div class="row">
                                <div class="col-12 col-md-auto">

                                    <!-- Avatar -->
                                    <div class="avatar avatar-xxl mb-6 mb-md-0">
                        <span class="avatar-title rounded-circle">
                          <i class="fa fa-user"></i>
                        </span>
                                    </div>

                                </div>
                                <div class="col-12 col-md">

                                    <!-- Header -->
                                    <div class="row mb-6">
                                        <div class="col-12">

                                            <!-- Rating -->
                                            <div class="rating fs-sm text-dark" data-value="3">
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
                                        <div class="col-12">

                                            <!-- Time -->
                                            <span class="fs-xs text-muted">
                            Sophie Casey, <time datetime="2019-07-07">07 Jul 2019</time>
                          </span>

                                        </div>
                                    </div>

                                    <!-- Title -->
                                    <p class="mb-2 fs-lg fw-bold">
                                        Cute, but too small
                                    </p>

                                    <!-- Text -->
                                    <p class="text-gray-500">
                                        Shall good midst can't. Have fill own his multiply the divided. Thing great. Of heaven whose signs.
                                    </p>

                                    <!-- Footer -->
                                    <div class="row align-items-center">
                                        <div class="col-auto d-none d-lg-block">

                                            <!-- Text -->
                                            <p class="mb-0 fs-sm">Was this review helpful?</p>

                                        </div>
                                        <div class="col-auto me-auto">

                                            <!-- Rate -->
                                            <div class="rate">
                                                <a class="rate-item" data-toggle="vote" data-count="2" href="#" role="button">
                                                    <i class="fe fe-thumbs-up"></i>
                                                </a>
                                                <a class="rate-item" data-toggle="vote" data-count="1" href="#" role="button">
                                                    <i class="fe fe-thumbs-down"></i>
                                                </a>
                                            </div>

                                        </div>
                                        <div class="col-auto d-none d-lg-block">

                                            <!-- Text -->
                                            <p class="mb-0 fs-sm">Comments (1)</p>

                                        </div>
                                        <div class="col-auto">

                                            <!-- Button -->
                                            <a class="btn btn-xs btn-outline-border" href="#!">
                                                Comment
                                            </a>

                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <!-- Child review -->
                        <div class="review review-child">
                            <div class="review-body">

                                <!-- Content -->
                                <div class="row">
                                    <div class="col-12 col-md-auto">

                                        <!-- Avatar -->
                                        <div class="avatar avatar-xxl mb-6 mb-md-0">
                          <span class="avatar-title rounded-circle">
                            <i class="fa fa-user"></i>
                          </span>
                                        </div>

                                    </div>
                                    <div class="col-12 col-md">

                                        <!-- Header -->
                                        <div class="row mb-6">
                                            <div class="col-12">

                                                <!-- Rating -->
                                                <div class="rating fs-sm text-dark" data-value="4">
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
                                            <div class="col-12">

                                                <!-- Time -->
                                                <span class="fs-xs text-muted">
                              William Stokes, <time datetime="2019-07-14">14 Jul 2019</time>
                            </span>

                                            </div>
                                        </div>

                                        <!-- Title -->
                                        <p class="mb-2 fs-lg fw-bold">
                                            Very good
                                        </p>

                                        <!-- Text -->
                                        <p class="text-gray-500">
                                            Made face lights yielding forth created for image behold blessed seas.
                                        </p>

                                        <!-- Footer -->
                                        <div class="row align-items-center">
                                            <div class="col-auto d-none d-lg-block">

                                                <!-- Text -->
                                                <p class="mb-0 fs-sm">Was this review helpful?</p>

                                            </div>
                                            <div class="col-auto me-auto">

                                                <!-- Rate -->
                                                <div class="rate">
                                                    <a class="rate-item" data-toggle="vote" data-count="7" href="#" role="button">
                                                        <i class="fe fe-thumbs-up"></i>
                                                    </a>
                                                    <a class="rate-item" data-toggle="vote" data-count="0" href="#" role="button">
                                                        <i class="fe fe-thumbs-down"></i>
                                                    </a>
                                                </div>

                                            </div>
                                            <div class="col-auto d-none d-lg-block">

                                                <!-- Text -->
                                                <p class="mb-0 fs-sm">Comments (0)</p>

                                            </div>
                                            <div class="col-auto">

                                                <!-- Button -->
                                                <a class="btn btn-xs btn-outline-border" href="#!">
                                                    Comment
                                                </a>

                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>

                </div>

                <!-- Pagination -->
                <nav class="d-flex justify-content-center mt-9">
                    <ul class="pagination pagination-sm text-gray-400">
                        <li class="page-item">
                            <a class="page-link page-link-arrow" href="#">
                                <i class="fa fa-caret-left"></i>
                            </a>
                        </li>
                        <li class="page-item active">
                            <a class="page-link" href="#">1</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#">2</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#">3</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link page-link-arrow" href="#">
                                <i class="fa fa-caret-right"></i>
                            </a>
                        </li>
                    </ul>
                </nav>

            </div>
        </div>
    </div>
</section>

<!-- FEATURES -->
<section class="bg-light py-9">
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
<%--
<!-- FOOTER -->
<footer class="bg-dark bg-cover " style="background-image: url(./assets/img/patterns/pattern-2.svg)">
    <div class="py-12 border-bottom border-gray-700">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-md-10 col-lg-8 col-xl-6">

                    <!-- Heading -->
                    <h5 class="mb-7 text-center text-white">Want style Ideas and Treats?</h5>

                    <!-- Form -->
                    <form class="mb-11">
                        <div class="row gx-5 align-items-start">
                            <div class="col">
                                <input type="email" class="form-control form-control-gray-700 form-control-lg" placeholder="Enter Email *">
                            </div>
                            <div class="col-auto">
                                <button type="submit" class="btn btn-gray-500 btn-lg">Subscribe</button>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-3">

                    <!-- Heading -->
                    <h4 class="mb-6 text-white">Shopper.</h4>

                    <!-- Social -->
                    <ul class="list-unstyled list-inline mb-7 mb-md-0">
                        <li class="list-inline-item">
                            <a href="#!" class="text-gray-350">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#!" class="text-gray-350">
                                <i class="fab fa-youtube"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#!" class="text-gray-350">
                                <i class="fab fa-twitter"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#!" class="text-gray-350">
                                <i class="fab fa-instagram"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#!" class="text-gray-350">
                                <i class="fab fa-medium"></i>
                            </a>
                        </li>
                    </ul>

                </div>
                <div class="col-6 col-sm">

                    <!-- Heading -->
                    <h6 class="heading-xxs mb-4 text-white">
                        Support
                    </h6>

                    <!-- Links -->
                    <ul class="list-unstyled mb-7 mb-sm-0">
                        <li>
                            <a class="text-gray-300" href="./contact-us.html">Contact Us</a>
                        </li>
                        <li>
                            <a class="text-gray-300" href="./faq.html">FAQs</a>
                        </li>
                        <li>
                            <a class="text-gray-300" data-bs-toggle="modal" href="#modalSizeChart">Size Guide</a>
                        </li>
                        <li>
                            <a class="text-gray-300" href="./shipping-and-returns.html">Shipping & Returns</a>
                        </li>
                    </ul>

                </div>
                <div class="col-6 col-sm">

                    <!-- Heading -->
                    <h6 class="heading-xxs mb-4 text-white">
                        Shop
                    </h6>

                    <!-- Links -->
                    <ul class="list-unstyled mb-7 mb-sm-0">
                        <li>
                            <a class="text-gray-300" href="./shop.html">Men's Shopping</a>
                        </li>
                        <li>
                            <a class="text-gray-300" href="./shop.html">Women's Shopping</a>
                        </li>
                        <li>
                            <a class="text-gray-300" href="./shop.html">Kids' Shopping</a>
                        </li>
                        <li>
                            <a class="text-gray-300" href="./shop.html">Discounts</a>
                        </li>
                    </ul>

                </div>
                <div class="col-6 col-sm">

                    <!-- Heading -->
                    <h6 class="heading-xxs mb-4 text-white">
                        Company
                    </h6>

                    <!-- Links -->
                    <ul class="list-unstyled mb-0">
                        <li>
                            <a class="text-gray-300" href="./about.html">Our Story</a>
                        </li>
                        <li>
                            <a class="text-gray-300" href="#!">Careers</a>
                        </li>
                        <li>
                            <a class="text-gray-300" href="#!">Terms & Conditions</a>
                        </li>
                        <li>
                            <a class="text-gray-300" href="#!">Privacy & Cookie policy</a>
                        </li>
                    </ul>

                </div>
                <div class="col-6 col-sm">

                    <!-- Heading -->
                    <h6 class="heading-xxs mb-4 text-white">
                        Contact
                    </h6>

                    <!-- Links -->
                    <ul class="list-unstyled mb-0">
                        <li>
                            <a class="text-gray-300" href="#!">1-202-555-0105</a>
                        </li>
                        <li>
                            <a class="text-gray-300" href="#!">1-202-555-0106</a>
                        </li>
                        <li>
                            <a class="text-gray-300" href="#!">help@shopper.com</a>
                        </li>
                    </ul>

                </div>
            </div>
        </div>
    </div>
    <div class="py-6">
        <div class="container">
            <div class="row">
                <div class="col">

                    <!-- Copyright -->
                    <p class="mb-3 mb-md-0 fs-xxs text-muted">
                        © 2019 All rights reserved. Designed by Unvab.
                    </p>

                </div>
                <div class="col-auto">

                    <!-- Payment methods -->
                    <img class="footer-payment" src="./assets/img/payment/mastercard.svg" alt="...">
                    <img class="footer-payment" src="./assets/img/payment/visa.svg" alt="...">
                    <img class="footer-payment" src="./assets/img/payment/amex.svg" alt="...">
                    <img class="footer-payment" src="./assets/img/payment/paypal.svg" alt="...">
                    <img class="footer-payment" src="./assets/img/payment/maestro.svg" alt="...">
                    <img class="footer-payment" src="./assets/img/payment/klarna.svg" alt="...">

                </div>
            </div>
        </div>
    </div>
</footer>--%>

<!-- JAVASCRIPT -->
<!-- Map (replace the API key to enable) -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCnKt8_N4-FKOnhI_pSaDL7g_g-XI1-R9E"></script>

<!-- Vendor JS -->
<script src="./assets/js/vendor.bundle.js"></script>

<!-- Theme JS -->
<script src="./assets/js/theme.bundle.js"></script>

</body>
