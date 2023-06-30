<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- 템플릿 제공 JAVASCRIPT -->
<!-- 1) Map (replace the API key to enable) -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCnKt8_N4-FKOnhI_pSaDL7g_g-XI1-R9E"></script>
<!-- 2) Vendor JS -->
<script src="./assets/js/vendor.bundle.js"></script>
<!-- 3) Theme JS -->
<script src="./assets/js/theme.bundle.js"></script>
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.2.0/kakao.min.js"
        integrity="sha384-x+WG2i7pOR+oWb6O5GV5f1KN2Ko6N7PTGPS7UlasYWNxZMKQA63Cj/B2lbUmUfuC" crossorigin="anonymous"></script>
<script>
    $(function (){
        Kakao.init('c91de3a9ba7f48da3cb562c2fc973026');
        Kakao.Share.createDefaultButton({
            container: '#kakaotalk-sharing-btn',
            objectType: 'commerce',
            content: {
                title: '${detail.item_content}',
                imageUrl:
                    'https://kukka.kr/static/kukkart_new/img/contents/subscribe_intro/lineup_003.png',
                link: {
                    // [내 애플리케이션] > [플랫폼] 에서 등록한 사이트 도메인과 일치해야 함
                    mobileWebUrl: 'http://49.50.160.198/bipum/detail?sitem_id=${detail.item_id}',
                    webUrl: 'http://49.50.160.198/bipum/detail?item_id=${detail.item_id}',
                },
            },
            commerce: {
                productName: '${detail.item_name}',
                regularPrice: ${detail.item_price}
            },
            buttons: [
                {
                    title: '자세히보기',
                    link: {
                        mobileWebUrl: 'http://49.50.160.198/bipum/detail?item_id=${detail.item_id}',
                        webUrl: 'http://49.50.160.198/bipum/detail?item_id=${detail.item_id}',
                    },
                }
            ],
        });
    })
</script>
<script>
let register_review = {
        init:function (){
            $('#register_btn').click(function (){
                var checkTitle = $('#review_title').val();
                var checkContents = $('#review_content').val();
                if (checkTitle == '' || checkContents == ''){
                    return;
                };
                register_review.send();
            });
        },
        send:function(){
            $('#review_form').attr({
                method:'post',
                action:'/bipum/register_reviewimpl',
                enctype:'multipart/form-data'
            });
            $('#review_form').submit();
        }
    };
    $(function (){
        register_review.init();
    })
</script>
<script>
    let item_get = {
        init: function () {
            $('.cart_btn').click(function () {
                let cust_id = "${logincust.cust_id}";
                let item_id = "${detail.item_id}"
                // $(this).data('itemid');
                let cnt = parseInt($('#inputcnt').val());
                $.ajax({
                    url: '/cart/addcart',
                    type: 'post',
                    data: {cust_id: cust_id, item_id: item_id, cnt: cnt},
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
<script>
    let item_checkout = {
        init: () => {
            $('.checkout_btn').click(function(){
                $('#detail_form').attr({
                    action:'/item/checkout',
                    method:'post'
                });
                $('#detail_form').submit();
            })

        }
    };
    $(function () {
        item_checkout.init();
    });
</script>

<!-- 현재 보고있는 PRODUCT -->
<section>
    <div class="container py-5">

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

                        <%--왼쪽 페이지 하단 부분 시작--%>
                        <hr>
                        <h6><strong>나의 취향으로 채우는 나만의 공간</strong></h6>
                        <h8>꽃꽂이에 재미를, 파스텔톤 색감으로 시선을 끌고, 주름진 듯한 디테일에 한번 더 반하게 됩니다.
                            꽃꽂이할 때, 화병과 꽃의 색깔이 한데 어우러져
                            수채화로 그림을 그리듯 더욱 매력적이게 연출할 수 있습니다.</h8>
                        <hr>
                        <div ><img src="/uimg/${detail.item_img}" style="width: 600px"></div>
                        <hr>
                        <c:forEach var="obj" items="${bipumlist}">
                            <div>
                                <!-- sub Image -->
                                <div><img src="/uimg/${obj.item_subimg}" style="width: 600px"></div>
                            </div>
                            <hr>
                        </c:forEach>
                        <img src="/uimg/bipum.jpg" style="width: 600px">
                        <hr>
                        <h6><strong> * 취급시 주의사항</strong></h6>
                        <h8>1) 제품의 컬러는 각 모니터 및 조명의 종류와 밝기에 따라 차이가 있을 수 있습니다.
                            2) 용도 외 사용을 금지해주세요.
                            3) 강한 충격에 의한 파손 및 상해에 주의해주세요.
                            4) 제품 공정에서 생기는 기포, 잔흠집은 환불 사유가 되지 않습니다.
                            5) 사용자 부주의로 인한 제품 파손은 교환/반품이 불가합니다.</h8>
                        <hr>
                    </div>

                    <!-- 오른쪽 부분 시작 -->
                    <div class="col-12 col-md-6 ps-lg-10">
                        <!-- Header -->
                        <div class="row mb-1">
                            <div class="col">
                            </div>
                            <!-- 별점 및 리뷰 시작-->
                            <div class="col-auto">
                                <div class="rating fs-xs text-dark" data-value="${itemReview.avgscore}">
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
                                    리뷰보기 (${itemReview.cnt})
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
                        <!-- 장바구니/ 주문하기 -->
                        <form id="detail_form">
                            <div class="row gx-5 mb-7">
                                <div class="col-12 col-lg-auto">
                                    <!-- Quantity -->
                                    <input type="number"  min="1" max="${detail.item_cnt}" id="inputcnt" class="form-control form-control-sm" style="width: 140px" name="cnt" value="${empty cnt ? 1 : cnt}" />
                                </div>
                                <div class="col-12 col-lg">
                                    <!-- Submit -->
                                    <button type="button" class="btn w-120 btn-dark mb-2 cart_btn"
                                            data-itemid="${detail.item_id}">
                                        장바구니 <i class="fe fe-shopping-cart ms-2"></i>
                                    </button>
                                    <input type="hidden" name="item_id" value="${detail.item_id}"/>
                                    <input type="hidden" name="cust_id" value="${logincust.cust_id}"/>

                                    <button type="submit" class="btn w-120 btn-dark mb-2 checkout_btn"/>
                                    바로주문 <i class="fe fe-shopping-bag ms-2"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                        <!-- 담당자에게 연락하기 -->
                        <p>
                            <span class="text-gray-500">원하시는 상품이 품절인가요??</span>
                            <a class="text-reset text-decoration-underline" data-bs-toggle="modal" href="#callcenter">담당자에게 연락 주세요!</a>
                        </p>
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
                        </form>
                        <hr>
                        <img src="/uimg/bipum2.jpg" style="width: 400px">
                    </div>
                        <!-- 수량, 카트, 찜 입력 Form 끝-->

                    </div>
                    <!-- 오른쪽 부분 끝 -->
                </div>
           </div>
        </div>
    </div>
</section>

<!-- DESCRIPTION: 페이지 하단의 설명 -->
<!-- DESCRIPTION -->
<section class="pt-11">
    <div class="container">
        <div class="row">
            <div class="col-12">

                <!-- Nav -->
                <div class="nav nav-tabs nav-overflow justify-content-start justify-content-md-center border-bottom">
                    <a class="nav-link active" data-bs-toggle="tab" href="#descriptionTab">
                        상세설명
                    </a>
                    <a class="nav-link" data-bs-toggle="tab" href="#sizeTab">
                        자주묻는 질문
                    </a>
                    <a class="nav-link" data-bs-toggle="tab" href="#shippingTab">
                        배송안내
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
                                        <img src="/uimg/detail_description_1.png">
                                        <img src="/uimg/detail_description_2.jpg">
                                        <img src="/uimg/detail_description_3.jpg">

                                        <p class="text-gray-500" style="margin-top: 30px">
                                        <div><strong><b> 꽃다발은 싱싱함이 최우선입니다. </b> 좋은 품질의 꽃을 좋은 가격으로 구매하여 고객님의 집 앞으로 배송하기 위해 꾸까는 매일 노력합니다. 이런 노력들이 모여 우리 일상의 꽃 문화가 만들어지리라 믿습니다.</strong></div>
                                        <img src="/uimg/detail_description_4.jpg">
                                        </p>

                                        <img src="/uimg/detail_description_5.jpg" width="883px">
                                        <p class="text-gray-500" style="margin-top: 30px">
                                            <h8><strong><b>혜택 1 |</b> 전국 전지역 배송</strong></h8>
                                            선물함에 어려움이 없도록 전국으로 배송됩니다. 어느 지역이라도 부담 없이 선물하세요.<br/>

                                            *제주, 도서산간 지역의 경우 배송에 1-2일 더 소요될 수 있습니다.
                                            <br/>
                                            <br/>
                                            <h8><strong><b>혜택 2 |</b>  꽃 영양제 무료 제공</strong></h8>
                                            마음을 담아 선물한 꽃을 더 오래 볼 수 있는 꽃 영양제입니다. 꽃은 관리법에 따라 수명이 2배 가까이 차이가 나기도 하기에 마음을 담아 선물한 꽃을 더 오래 보실 수 있도록 꽃 영양제(플라워 푸드)를 선물로 함께 보내드립니다.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="sizeTab">
                        <div class="row justify-content-center py-9">
                            <div class="col-12 col-lg-10 col-xl-8">
                                <div>
                                    <p class="mb-4">
                                        <img src="/uimg/detail_Q&A_1.jpg">
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="shippingTab">
                        <div class="row justify-content-center py-9">
                            <div class="col-12 col-lg-10 col-xl-8">

                                <img src="/uimg/detail_delivery_1.jpg" width="350px">
                                <img src="/uimg/detail_delivery.jpg" height="550px">
                                <!-- Table -->
                                <div class="table-responsive">

                                </div>

                                <!-- Caption -->
                                <p class="mb-0 text-gray-500"></p>

                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>

<!-- 추천 PRODUCTS -->
<section class="pt-11">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <br>
                <hr>
                <!-- Heading -->
                <h4 class="mb-10 text-center">
                    <img style="padding: 0px 20px 10px 0px" src="/uimg/ranking_good.png"></h4>

                <!-- Items -->
                <div class="row">

                    <%--첫번째 추천 아이템시작--%>
                    <c:forEach var="recommandlist" items="${recommandlist}">

                        <div class="col-6 col-sm-6 col-md-4 col-lg-3">
                            <!-- Card -->
                            <div class="card mb-7">

                                <!-- Badge -->
                                <div class="badge bg-white text-body card-badge card-badge-start text-uppercase">
                                    <strong>판매 ${recommandlist.rank}위</strong>
                                </div>

                                <!-- Image -->
                                <div class="card-img">
                                    <!-- Image -->
                                    <a  href="/bipum/detail?item_id=${recommandlist.item_id}">
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
                                    </div>

                                </div>

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

                                </div>

                            </div>

                        </div>
                    </c:forEach>


                </div>

            </div>
        </div>
    </div>
</section>

<!-- REVIEWS : 리뷰쓰기 다른사람 리뷰 보기-->
<section class="pt-9 pb-11" id="reviews">
    <div class="container">
        <div class="row">
            <div class="col-12">

                <!-- Heading -->
                <h4 class="mb-10 text-center">리뷰(${itemReview.cnt})</h4>
                <!-- Header -->
                <div class="row align-items-center">
                    <div class="col-12 col-md-auto">

                        <!-- Dropdown -->
                        <div class="dropdown mb-4 mb-md-0">

                            <!-- Toggle -->
                            <a class="dropdown-toggle text-reset" data-bs-toggle="dropdown" href="#">
                                <strong>정렬 기준</strong>
                            </a>

                            <!-- Menu -->
                            <div class="dropdown-menu mt-3">
                                <a class="dropdown-item" href="#!">최신 리뷰 순</a>
                                <a class="dropdown-item" href="#!">오래된 리뷰 순</a>
                            </div>

                        </div>
                    </div>

                    <div class="col-12 col-md text-md-center">

                        <!-- Rating -->
                        <div class="rating text-dark h6 mb-4 mb-md-0" data-value=${itemReview.avgscore}>
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
                        <strong class="fs-sm ms-2">평균별점: ${itemReview.avgscore}점</strong>
                    </div>

                    <div class="col-12 col-md-auto">

                        <!-- 리뷰 출력 Button -->
                        <a class="btn btn-sm btn-dark" data-bs-toggle="collapse" href="#reviewForm">
                            리뷰 쓰기
                        </a>
                    </div>
                </div>

                <!-- 리뷰작성하기 시작-->
                <div class="collapse"  id="reviewForm">
                    <!-- Divider -->
                    <hr class="my-8">
                    <!-- Form -->
                    <form id="review_form"  name="review_form">
                        <input type="hidden"  id="cust_id"  name="cust_id" value="${logincust.cust_id}">
                        <input type="hidden"  id="item_id"  name="item_id" value="${item_id}">
                        <div class="row">
                            <div class="col-12 mb-6 text-center">

                                <!-- Text -->
                                <p class="mb-1 fs-xs">
                                    별점 주기:
                                </p>

                                <!-- Rating form -->
                                <div class="rating-form">
                                    <!-- Input -->
                                    <input class="rating-input" id="review_score"  name="review_score" type="range" min="1" max="5" value="5">
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

                            <!-- 제목 -->
                            <div class="col-12 form-group">
                                <label class="visually-hidden" for="review_title">제목:</label>
                                <input class="form-control form-control-sm" id="review_title" name="review_title" type="text" placeholder="제목을 적으세요*" required>
                            </div>

                            <!-- 리뷰 -->
                            <div class="col-12 form-group">
                                <label class="visually-hidden" for="review_content">리뷰:</label>
                                <textarea class="form-control form-control-sm" id="review_content" name="review_content" rows="5" placeholder="솔직한 리뷰를 부탁드립니다*" required></textarea>
                            </div>

                            <div class="col-12 text-center">
                                <!-- Button -->
                                <button class="btn btn-outline-dark" id="register_btn" type="submit">리뷰등록</button>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- 리뷰작성하기 끝-->

                <!-- 다른고객이 등록한 리뷰 시작-->
                <div class="mt-8">
                    <c:forEach var="obj" items="${reviewlist}">
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
                                                <!-- 별점 시작 -->
                                                <div class="rating fs-sm text-dark" data-value=${obj.review_score}>
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
                                                <!-- 별점 끝-->
                                            </div>

                                            <div class="col-12">

                                                <!-- (1) 작성자. 작성일자 시작 -->
                                                <span class="fs-xs text-muted">
                                                작성자: ${obj.cust_id}
                                                작성일자: <fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${obj.review_rdata}"/>
                                                </span>
                                            </div>
                                            <!-- 작성자. 작성일자 끝 -->
                                        </div>
                                        <!-- (2) 리뷰 제목 -->
                                        <p class="mb-2 fs-lg fw-bold">${obj.review_title}</p>
                                        <!-- (3) 리뷰 본문 -->
                                        <p class="text-gray-500">${obj.review_content}</p>


                                        <!-- Footer -->
                                        <div class="row align-items-center">
                                            <div class="col-auto d-none d-lg-block">
                                                <!-- Text -->
                                                <p class="mb-0 fs-sm">리뷰가 도움이 되었나요?</p>
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
                                        </div> <!-- footer end -->

                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <!-- 다른고객이 등록한 리뷰 끝-->

                <!-- Pagination -->
<%--                <nav class="d-flex justify-content-center mt-9">
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
                </nav>--%>

            </div>
        </div>
    </div>
</section>

<!-- FEATURES : 배송등 설명하는 란-->
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

