<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
                    mobileWebUrl: 'http://49.50.160.198/item/detail?item_id=${detail.item_id}',
                    webUrl: 'http://49.50.160.198/item/detail?item_id=${detail.item_id}',
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
                        mobileWebUrl: 'http://49.50.160.198/item/detail?item_id=${detail.item_id}',
                        webUrl: 'http://49.50.160.198/item/detail?item_id=${detail.item_id}',
                    },
                }
            ],
        });
    })

    let item_get = {
        init: function () {
            $('.cart_btn').click(function () {
                let cust_id = "${logincust.cust_id}";
                let item_id = ${detail.item_id};
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
                        </div>

<%--                        <!-- Form -->--%>
<%--                        <form>--%>
<%--                            <div class="form-group">--%>

<%--                                <!-- Label -->--%>
<%--                                <p>--%>
<%--                                    Color: <strong id="modalProductColorCaption">White</strong>--%>
<%--                                </p>--%>

<%--                                <!-- Radio -->--%>
<%--                                <div class="mb-8 ms-n1">--%>
<%--                                    <div class="form-check form-check-inline form-check-img">--%>
<%--                                        <input type="radio" class="form-check-input" id="modalProductColorOne" name="modalProductColor" data-toggle="form-caption" data-target="#modalProductColorCaption" value="White" style="background-image: url(./assets/img/products/product-7.jpg);" checked>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-check form-check-inline form-check-img">--%>
<%--                                        <input type="radio" class="form-check-input" id="modalProductColorTwo" name="modalProductColor" data-toggle="form-caption" data-target="#modalProductColorCaption" value="Black" style="background-image: url(./assets/img/products/product-49.jpg);">--%>
<%--                                    </div>--%>
<%--                                </div>--%>

<%--                            </div>--%>
<%--                            <div class="form-group">--%>

<%--                                <!-- Label -->--%>
<%--                                <p>--%>
<%--                                    Size: <strong><span id="modalProductSizeCaption">7.5</span> US</strong>--%>
<%--                                </p>--%>

<%--                                <!-- Radio -->--%>
<%--                                <div class="mb-2">--%>
<%--                                    <div class="form-check form-check-inline form-check-size mb-2">--%>
<%--                                        <input type="radio" class="form-check-input" name="modalProductSize" id="modalProductSizeOne" value="6" data-toggle="form-caption" data-target="#modalProductSizeCaption">--%>
<%--                                        <label class="form-check-label" for="modalProductSizeOne">6</label>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-check form-check-inline form-check-size mb-2">--%>
<%--                                        <input type="radio" class="form-check-input" name="modalProductSize" id="modalProductSizeTwo" value="6.5" data-toggle="form-caption" data-target="#modalProductSizeCaption" disabled>--%>
<%--                                        <label class="form-check-label" for="modalProductSizeTwo">6.5</label>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-check form-check-inline form-check-size mb-2">--%>
<%--                                        <input type="radio" class="form-check-input" name="modalProductSize" id="modalProductSizeThree" value="7" data-toggle="form-caption" data-target="#modalProductSizeCaption">--%>
<%--                                        <label class="form-check-label" for="modalProductSizeThree">7</label>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-check form-check-inline form-check-size mb-2">--%>
<%--                                        <input type="radio" class="form-check-input" name="modalProductSize" id="modalProductSizeFour" value="7.5" data-toggle="form-caption" data-target="#modalProductSizeCaption" checked>--%>
<%--                                        <label class="form-check-label" for="modalProductSizeFour">7.5</label>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-check form-check-inline form-check-size mb-2">--%>
<%--                                        <input type="radio" class="form-check-input" name="modalProductSize" id="modalProductSizeFive" value="8" data-toggle="form-caption" data-target="#modalProductSizeCaption">--%>
<%--                                        <label class="form-check-label" for="modalProductSizeFive">8</label>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-check form-check-inline form-check-size mb-2">--%>
<%--                                        <input type="radio" class="form-check-input" name="modalProductSize" id="modalProductSizeSix" value="8.5" data-toggle="form-caption" data-target="#modalProductSizeCaption">--%>
<%--                                        <label class="form-check-label" for="modalProductSizeSix">8.5</label>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-check form-check-inline form-check-size mb-2">--%>
<%--                                        <input type="radio" class="form-check-input" name="modalProductSize" id="modalProductSizeSeven" value="9" data-toggle="form-caption" data-target="#modalProductSizeCaption" disabled>--%>
<%--                                        <label class="form-check-label" for="modalProductSizeSeven">9</label>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-check form-check-inline form-check-size mb-2">--%>
<%--                                        <input type="radio" class="form-check-input" name="modalProductSize" id="modalProductSizeEight" value="9.5" data-toggle="form-caption" data-target="#modalProductSizeCaption" disabled>--%>
<%--                                        <label class="form-check-label" for="modalProductSizeEight">9.5</label>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-check form-check-inline form-check-size mb-2">--%>
<%--                                        <input type="radio" class="form-check-input" name="modalProductSize" id="modalProductSizeNine" value="10" data-toggle="form-caption" data-target="#modalProductSizeCaption">--%>
<%--                                        <label class="form-check-label" for="modalProductSizeNine">10</label>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-check form-check-inline form-check-size mb-2">--%>
<%--                                        <input type="radio" class="form-check-input" name="modalProductSize" id="modalProductSizeTen" value="10.5" data-toggle="form-caption" data-target="#modalProductSizeCaption">--%>
<%--                                        <label class="form-check-label" for="modalProductSizeTen">10.5</label>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-check form-check-inline form-check-size mb-2">--%>
<%--                                        <input type="radio" class="form-check-input" name="modalProductSize" id="modalProductSizeEleven" value="11" data-toggle="form-caption" data-target="#modalProductSizeCaption">--%>
<%--                                        <label class="form-check-label" for="modalProductSizeEleven">11</label>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-check form-check-inline form-check-size mb-2">--%>
<%--                                        <input type="radio" class="form-check-input" name="modalProductSize" id="modalProductSizeTwelve" value="12" data-toggle="form-caption" data-target="#modalProductSizeCaption">--%>
<%--                                        <label class="form-check-label" for="modalProductSizeTwelve">12</label>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-check form-check-inline form-check-size mb-2">--%>
<%--                                        <input type="radio" class="form-check-input" name="modalProductSize" id="modalProductSizeThirteen" value="13" data-toggle="form-caption" data-target="#modalProductSizeCaption">--%>
<%--                                        <label class="form-check-label" for="modalProductSizeThirteen">13</label>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-check form-check-inline form-check-size mb-2">--%>
<%--                                        <input type="radio" class="form-check-input" name="modalProductSize" id="modalProductSizeFourteen" value="14" data-toggle="form-caption" data-target="#modalProductSizeCaption">--%>
<%--                                        <label class="form-check-label" for="modalProductSizeFourteen">14</label>--%>
<%--                                    </div>--%>
<%--                                </div>--%>

<%--                            </div>--%>
<%--                            <div class="form-group mb-0">--%>
<%--                                <div class="row gx-5">--%>
<%--                                    <div class="col-12 col-lg-auto">--%>

<%--                                        <!-- Quantity -->--%>
<%--                                        <select class="form-select mb-2">--%>
<%--                                            <option value="1" selected>1</option>--%>
<%--                                            <option value="2">2</option>--%>
<%--                                            <option value="3">3</option>--%>
<%--                                            <option value="4">4</option>--%>
<%--                                            <option value="5">5</option>--%>
<%--                                        </select>--%>

<%--                                    </div>--%>
<%--                                    <div class="col-12 col-lg">--%>

<%--                                        <!-- Submit -->--%>
<%--                                        <button type="submit" class="btn w-100 btn-dark mb-2">--%>
<%--                                            Add to Cart <i class="fe fe-shopping-cart ms-2"></i>--%>
<%--                                        </button>--%>

<%--                                    </div>--%>
<%--                                    <div class="col-12 col-lg-auto">--%>

<%--                                        <!-- Wishlist -->--%>
<%--                                        <button class="btn btn-outline-dark w-100 mb-2" data-toggle="button">--%>
<%--                                            Wishlist <i class="fe fe-heart ms-2"></i>--%>
<%--                                        </button>--%>

<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </form>--%>

                    </div>
                </div>
            </div>

        </div>
    </div>
</div>


<!-- BREADCRUMB -->
<nav class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-12">

                <!-- Breadcrumb -->
                <ol class="breadcrumb mb-0 fs-xs text-gray-400">
                    <li class="breadcrumb-item">
                        <a class="text-gray-400" href="/">Home</a>
                    </li>
                    <li class="breadcrumb-item">
                        <a class="text-gray-400" href="/item/all">꽃선물
                        </a>
                    </li>
                </ol>

            </div>
        </div>
    </div>
</nav>

<!-- PRODUCT -->
<section>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="row">
                    <div class="col-12 col-md-6">

                        <!-- Card -->
                        <div class="card">

                            <!-- Badge -->
                            <div class="badge bg-primary card-badge text-uppercase">
                                Sale
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
<%--                                style="background-image: url(/uimg/${detail.item_img});">--%>

                            </div>

                            <!-- sub Item -->
                            <c:forEach var="obj" items="${ilist}">
                            <div class="col-12 px-2" style="max-width: 113px;">
                                <!-- sub Image -->
                                <div class="ratio ratio-1x1 bg-cover"><img src="/uimg/${obj.item_subimg}"></div>
<%--                                style="background-image: url(/uimg/${obj.item_subimg});"--%>
                            </div>
                            </c:forEach>


<%--                            <!-- Item -->--%>
<%--                            <div class="col-12 px-2" style="max-width: 113px;">--%>

<%--                                <!-- Image -->--%>
<%--                                <div class="ratio ratio-1x1 bg-cover" style="background-image: url(assets/img/products/product-146.jpg);"></div>--%>

<%--                            </div>--%>

                        </div>
                    </div>
                    <div class="col-12 col-md-6 ps-lg-10">

                        <!-- Header -->
                        <div class="row mb-1">
                            <div class="col">

                                <!-- Preheading -->
                                <a class="text-muted" href="#">Flower</a>

                            </div>
                            <div class="col-auto">

                                <!-- Rating -->
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
                        </div>

                        <!-- Heading -->
                        <h3 class="mb-2">${detail.item_name}</h3>

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

                    </div>
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
                <h4 class="mt-10 mb-2 text-center">
                    <img style="padding: 0px 20px 10px 0px" src="/uimg/strong_choocun.png"></h4>

                <!-- Items -->
                <div class="row">

                    <%--첫번째 추천 아이템시작--%>
                    <c:forEach var="recommandlist" items="${recommandlist}">

                        <div class="col-6 col-sm-6 col-md-4 col-lg-3">
                            <!-- Card -->
                            <div class="card mb-7">

                                <!-- Badge -->
                                <div class="badge bg-white text-body card-badge card-badge-start text-uppercase">
                                    Sale
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

<!-- REVIEWS -->
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
                                        </div>  <!-- footer end -->

                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <!-- 다른고객이 등록한 리뷰 끝-->
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


