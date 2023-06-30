<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script>
</script>

<body>


<!-- Product -->
<div class="modal fade" id="modalProduct" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
        <div class="modal-content">

            <!-- Close -->
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                <i class="fe fe-x" aria-hidden="true"></i>
            </button>

            <!-- Content -->
            <div class="container-fluid px-xl-0">
                <div class="row align-items-center mx-xl-0">
                    <div class="col-12 col-lg-6 col-xl-5 py-4 py-xl-0 px-xl-0">

                        <!-- Image -->
                        <img class="img-fluid" src="/uimg/${detail.item_img}" alt="...">

                        <!-- Button -->
                        <a class="btn btn-sm w-100 btn-primary" href="./product.html">
                            More Product Info <i class="fe fe-info ms-2"></i>
                        </a>

                    </div>
                    <div class="col-12 col-lg-6 col-xl-7 py-9 px-md-9">

                        <!-- Heading -->
                        <h4 class="mb-3">${detail.item_name}</h4>

                        <!-- Price -->
                        <div class="mb-7">
                            <span class="h5">${detail.item_price}</span>
                            <span class="fs-sm">(In Stock)</span>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<!-- BREADCRUMB -->
<nav class="py-5">
    <div class="col" style="padding:30px; background-color: black; color: white; text-align:center; font-size: large;">
        서울,수도권 일부지역에 한하여 <strong style="color: yellow">퀵배송</strong>으로 빠르게 받을 수 있습니다.
    </div>
</nav>

<!-- PRODUCT -->
<section style="padding: 50px 0;">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="row">
                    <div class="col-12 col-md-6">

                        <!-- Card -->
                        <div class="card">

                            <!-- Badge -->
                            <div class="badge bg-black card-badge" style="font-size: 15px">
                                퀵 가능상품!!
                            </div>

                            <!-- Slider -->
                            <div class="mb-4" data-flickity='{"draggable": false, "fade": true}' id="productSlider">

                                <!-- main Itemimg -->
                                <a href="#" data-bigpicture='{ "imgSrc": "/uimg/${detail.item_img}"}'>
                                    <img src="/uimg/${detail.item_img}" alt="..." class="card-img-top">
                                </a>
                                <!-- sub Itemimg -->
                                <c:forEach var="obj" items="${ilist}">
                                    <a href="#" data-bigpicture='{ "imgSrc": "/uimg/${obj.item_subimg}"}'>
                                        <img src="/uimg/${obj.item_subimg}" alt="..." class="card-img-top">
                                    </a>
                                </c:forEach>

                            </div>

                        </div>

                        <!-- Slider -->
                        <div class="flickity-nav mx-n2 mb-10 mb-md-0" data-flickity='{"asNavFor": "#productSlider", "contain": true, "wrapAround": false}'>

                            <!-- main Item -->
                            <div class="col-12 px-2" style="max-width: 113px;">

                                <!-- main Image -->
                                <div class="ratio ratio-1x1 bg-cover"><img src="/uimg/${detail.item_img}"></div>
                            </div>

                            <!-- sub Item -->
                            <c:forEach var="obj" items="${ilist}">
                            <div class="col-12 px-2" style="max-width: 113px;">
                                <!-- sub Image -->
                                <div class="ratio ratio-1x1 bg-cover"><img src="/uimg/${obj.item_subimg}"></div>
                            </div>
                            </c:forEach>

                        </div>
                    </div>
                    <div class="col-12 col-md-6 ps-lg-10">
                        <!-- Header -->
                        <div class="row mb-1">
                            <div class="col-auto">
                            </div>
                        </div>
                        <!-- Heading -->
                        <h5 class="mb-2">${detail.item_name}</h5>

                        <!-- Price -->
                        <div class="mb-7">
                            <span class="ms-1 fs-5 fw-bolder text-primary">
                                <fmt:formatNumber value="${detail.item_price}" pattern="###,###원"/>
                            </span>
                            <span class="badge rounded bg-success">재고: ${detail.item_cnt}개</span>
                        </div>


                            <div class="mb-7">
                                <p class="mb-5">
                                    <strong id="contentCaption">${detail.item_content}</strong>
                                </p>
                            </div>
                            <div class="mb-7">
                                <p class="mb-5">
                                    Type: <strong id="typeCaption">${detail.flower_type}</strong>
                                </p>
                            </div>
                            <div class="mb-7">
                                <p class="mb-5">
                                    Color: <strong id="colorCaption">${detail.flower_color}</strong>
                                </p>
                            </div>
                            <div class="mb-7">
                                <p class="mb-5">
                                    Size: <strong><span id="sizeCaption">${detail.flower_size}</span></strong>
                                </p>
                            </div>
                            <hr>
                            <!-- 담당자에게 연락하기 -->
                            <p>
                            <h5><span class="text-gray-500">해당 상품의 구매를 원하시면</span>
                                <a class="text-reset text-decoration-underline" href="#">담당자에게 연락 주세요 [1577-1577]</a></h5>
                            </p>
                            <div class="mb-7">
                                <p class="mb-5">
                                    [지역] 서울과 경기 일부 지역만 가능합니다.
                                </p>
                            </div>
                            <div class="mb-7">
                                <p class="mb-5">
                                    [시간] 주문 후 최대한 빠르게 발송해드립니다.
                                </p>
                            </div>
                            <div class="mb-7">
                                <p class="mb-5">
                                    [디자인] 빠른 배송을 최우선으로, 선택한 꽃과 디자인이 다소 다를 수 있지만 예쁘고 풍성하게 보내드립니다.
                                </p>
                            </div>
                            <div class="mb-7">
                                <p class="mb-5">
                                    [배송] 아래 배송현황 보기를 누르시면 실시간 배송조회 가능합니다.
                                </p>
                            </div>
                            <hr>
                            <div class="row gx-5 mb-7">
                                <div class="col-12 col-lg-auto">

                                </div>
                                <div class="col-12 col-lg">
                                    <button class="btn btn-dark mb-2" onclick="location.href='/quick/quick'">배송현황 보기
                                    <i class="fe fe-truck ms-2"></i>
                                    </button>
                                </div>
                            </div>
                            <!-- 공유하기 -->
                            <p class="mb-0">
                                <span class="me-4">공유하기:</span>
                                <%--카카오공유하기--%>
                                <a id="kakaotalk-sharing-btn" href="javascript:">
                                    <img src="https://developers.kakao.com/assets/img/about/logos/kakaotalksharing/kakaotalk_sharing_btn_medium.png"
                                         alt="카카오톡 공유 보내기 버튼" style="width:8%;margin: 5px"/>
                                </a>
                                <a id="facebook-sharing-btn" href="javascript:">
                                    <img src="https://cdn-icons-png.flaticon.com/128/1384/1384863.png"
                                         alt="페이스북 공유 보내기 버튼" style="width:8%;border-radius: 10px;margin: 5px"/>
                                </a>
                                <a id="twitter-sharing-btn" href="javascript:">
                                    <img src="https://cdn-icons-png.flaticon.com/128/3938/3938028.png"
                                         alt="트위터 공유 보내기 버튼" style="width:8%;margin: 5px"/>
                                </a>
                                <a id="pinterest-sharing-btn" href="javascript:">
                                    <img src="https://cdn-icons-png.flaticon.com/128/3536/3536559.png"
                                         alt="핀터레스트 공유 보내기 버튼" style="width:8%;border-radius: 10px;margin: 5px"/>
                                </a>
                            </p>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <br>
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
                            무료 배송
                        </h6>

                        <!-- Text -->
                        <p class="mb-0 fs-sm text-muted">
                            1송이만 구매해도 배송비 공짜! 개이득
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
                            언제든지 환불환영!
                        </h6>

                        <!-- Text -->
                        <p class="mb-0 fs-sm text-muted">
                            환불 상품을 보내주시면 30일 이내에 환불 드립니다
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
                            퀵배송 가능!
                        </h6>

                        <!-- Text -->
                        <p class="mb-0 fs-sm text-muted">
                            급하신가요? 퀵으로 받아보세요!
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
                            다양한 상품 구비 완료!
                        </h6>

                        <!-- Text -->
                        <p class="mb-0 fs-sm text-muted">
                            더 많은 상품을 제공하겠습니다!
                        </p>

                    </div>

                </div>

            </div>
        </div>
    </div>
</section>


<!-- JAVASCRIPT -->
<!-- Map (replace the API key to enable) -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCnKt8_N4-FKOnhI_pSaDL7g_g-XI1-R9E"></script>

<!-- Vendor JS -->
<script src="./assets/js/vendor.bundle.js"></script>

<!-- Theme JS -->
<script src="./assets/js/theme.bundle.js"></script>

