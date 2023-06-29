<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCnKt8_N4-FKOnhI_pSaDL7g_g-XI1-R9E"></script>
<script src="./assets/js/vendor.bundle.js"></script>
<script src="./assets/js/theme.bundle.js"></script>
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.2.0/kakao.min.js"
        integrity="sha384-x+WG2i7pOR+oWb6O5GV5f1KN2Ko6N7PTGPS7UlasYWNxZMKQA63Cj/B2lbUmUfuC" crossorigin="anonymous"></script>

<script>

    $( function() {
        Kakao.init('c91de3a9ba7f48da3cb562c2fc973026');
        Kakao.Share.createDefaultButton({
            container: '#kakaotalk-sharing-btn',
            objectType: 'feed',
            content: {
                title: '${flower.flowerName}',
                description: '꽃말: ${flower.flowerMeaning}',
                imageUrl:
                    '${flower.imgUrl1}',
                link: {
                    // [내 애플리케이션] > [플랫폼] 에서 등록한 사이트 도메인과 일치해야 함
                    mobileWebUrl: 'https://49.50.160.198:8443/flowerdictionary/detail?dataNo=${flower.dataNo}',
                    webUrl: 'https://49.50.160.198:8443/flowerdictionary/detail?dataNo=${flower.dataNo}',
                },
            },
            buttons: [
                {
                    title: '자세히 보기',
                    link: {
                        mobileWebUrl: 'https://49.50.160.198:8443/flowerdictionary/detail?dataNo=${flower.dataNo}',
                        webUrl: 'https://49.50.160.198:8443/flowerdictionary/detail?dataNo=${flower.dataNo}',
                    },
                },
            ],
        });
    })
</script>

<body>
    <div class="container">

        <div class="row">
            <div class="col-12">
                <div class="row">
                    <div class="col-12 col-md-6">
                        <!-- 왼쪽 상단 Card 시작-->
                        <div class="card">
                            <!-- Badge -->
                            <div class="badge bg-success card-badge text-uppercase">
                                ${flower.fMonthDay}
                            </div>
                            <!-- 큰 이미지 시작 -->
                            <div class="mb-4" data-flickity='{"draggable": false, "fade": true}' id="productSlider">

                                <!-- main Itemimg -->
                                <a href="#" data-bigpicture='{ "imgSrc": "${flower.imgUrl1}"}'>
                                    <img src="${flower.imgUrl1}" alt="..." class="card-img-top">
                                </a>
                                <!-- sub Itemimg -->
                                    <a href="#" data-bigpicture='{"imgSrc": "${flower.imgUrl2}"}'>
                                        <img src="${flower.imgUrl2}" alt="..." class="card-img-top">
                                    </a>
                                    <a href="#" data-bigpicture='{"imgSrc": "${flower.imgUrl3}"}'>
                                        <img src="${flower.imgUrl3}" alt="..." class="card-img-top">
                                    </a>
                            </div>
                            <!-- 큰 이미지 끝 -->
                        </div>
                        <!-- 왼쪽 상단 Card 끝-->

                        <!-- 작은 이미지 Slider 시작-->
                        <div class="flickity-nav mx-n2 mb-10 mb-md-0" data-flickity='{"asNavFor": "#productSlider", "contain": true, "wrapAround": false}'>

                            <!-- main Item -->
                            <div class="col-12 px-2" style="max-width: 113px;">
                                <!-- main Image -->
                                <div class="ratio ratio-1x1 bg-cover"><img src="${flower.imgUrl1}"></div>
                            </div>
                            <!-- sub Item  -->
                                <div class="col-12 px-2" style="max-width: 113px;">
                                    <!-- sub Image -->
                                    <div class="ratio ratio-1x1 bg-cover"><img src="${flower.imgUrl2}"></div>
                                </div>
                            <div class="col-12 px-2" style="max-width: 113px;">
                                <!-- sub Image -->
                                <div class="ratio ratio-1x1 bg-cover"><img src="${flower.imgUrl3}"></div>
                            </div>
                        </div>
                        <!-- 작은 이미지 Slider 끝-->

                    </div>
                    <!-- 오른쪽 부분 시작 -->
                    <div class="col-12 col-md-6 ps-lg-10">
                        <!-- Header -->
                        <div class="row mb-1">
                        </div>
                        <!-- 아이템 이름 -->
                        <h3 class="mb-2">꽃이름 [${flower.flowerName}]</h3></br>
                        <h5 class="mb-2">꽃말 <${flower.flowerMeaning}></h5>
                        <hr>
                        <!-- 가격 및 재고 -->
                        <div class="mb-7">
                            ${flower.fContent}<br>
                            ${flower.fUse}
                            <hr>
                            키우는 방법<br>
                            ${flower.fGrow}
                        </div>
                        <!-- 공유하기 -->
                        <p style="margin-bottom: 20px">
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
</body>
