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
    <%--if(${rtoastr}) {--%>
    <%--  alert("회원가입이 완료되었습니다😍😍😍");--%>
    <%--}--%>
  })
</script>


<!-- --------------- item 장바구니 --------------------- -->
<script>
  let item_get = {
    init: function () {
      $('.cart_btn').click(function () {
        let cust_id = "${logincust.cust_id}";
        let item_id = $(this).data('itemid');
        let cnt = null;
        $.ajax({
          url: '/cart/addcart',
          type: 'post',
          data: {cust_id: cust_id, item_id: item_id, cnt: 1},
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
    <%------------------------인기검색어-------------------------------%>

    // var defaultData = 'https://49.50.160.198:8443/logs/itemcountlog.log';
    var defaultData = 'http://127.0.0.1/logs/itemcountlog.log';
    var urlInput = document.getElementById('fetchURL1');
    var pollingCheckbox = document.getElementById('enablePolling1');
    var pollingInput = document.getElementById('pollingTime1');
    var chart;

    function createChart() {
      var dataUrl = urlInput.value;

      // 데이터 가공
      fetch(dataUrl)
              .then(response => response.text())
              .then(data => {
                var lines = data.trim().split('\n');
                var seriesData = [];

                lines.forEach(line => {
                  var parts = line.split(',');
                  var timestamp = parts[0];
                  var idorigin = parts[1].trim().replace(/'/g, '');

                  function itemname(idorigin) {
                    let id = "";
                    switch (idorigin){
                      case "200":
                        id = "  프로미스 꽃다발";
                        break;
                      case "210":
                        id = "  베레나핑크 수국";
                        break;
                      case "211":
                        id = "  라벤더블루 수국";
                        break;
                      case "212":
                        id = "  스노우볼 수국";
                        break;
                      case "213":
                        id = "  빨간 수국";
                        break;
                      case "214":
                        id = "  하젤 장미";
                        break;
                      case "215":
                        id = "  파이어웍스 장미";
                        break;
                      case "216":
                        id = "  마루시아 장미";
                        break;
                      case "217":
                        id = "  클라린스 장미";
                        break;
                      case "218":
                        id = "  피콜리니 거베라";
                        break;
                      case "219":
                        id = "  폼포니 거베라";
                        break;
                      case "221":
                        id = "  벤츄라 카라";
                        break;
                      case "222":
                        id = "  핑크 리시안셔스";
                        break;
                      case "223":
                        id = "  화이트 리시안셔스";
                        break;
                      case "224":
                        id = "  샴페인 리시안셔스";
                        break;
                      case "225":
                        id = "  리시안셔스";
                        break;
                      case "227":
                        id = "  그리너리 꽃다발";
                        break;
                      case "228":
                        id = "  브라이트데이 꽃다발";
                        break;
                      case "229":
                        id = "  트로피컬주스 꽃다발";
                        break;
                      case "230":
                        id = "  젠틀나잇 꽃다발";
                        break;
                      case "231":
                        id = "  스윗가든 꽃다발";
                        break;
                    }
                    return id;
                  }

                  var id = itemname(idorigin);
                  var count = parseInt(parts[2].trim());

                  // 이미 해당 아이템이 존재하는 경우, 새로운 카운트 값으로 갱신
                  var existingItem = seriesData.find(item => item.id === id);
                  if (existingItem) {
                    if (count > existingItem.count) {
                      existingItem.count = count;
                    }
                  } else {
                    seriesData.push({ id: id, count: count });
                  }
                });

                // 클릭 수에 따라 정렬
                seriesData.sort((a, b) => b.count - a.count);

                // 화면에 표시
                var rankingContainer = document.getElementById('rankingContainer');
                rankingContainer.innerHTML = '';
                var forh6 = document.createElement('h6');
                forh6.classList.add('text-center');
                forh6.textContent = ("인기 검색어👀");
                rankingContainer.appendChild(forh6);

                seriesData.forEach((item, index) => {
                  // 최대 다섯 개의 요소만 표출
                  if (index < 5) {

                    var itemElement = document.createElement('li');

                    var itemRank = document.createElement('span');
                    itemRank.textContent = (index + 1);
                    itemRank.classList.add('rank-number');

                    var itemName = document.createElement('span');
                    itemName.textContent = item.id;
                    itemName.classList.add('rank-title');

                    var itemCount = document.createElement('span');

                    itemElement.appendChild(itemRank);
                    itemElement.appendChild(itemName);
                    itemElement.appendChild(itemCount);
                    rankingContainer.appendChild(itemElement);
                  }
                });
                document.getElementById('rank-title-1').textContent = seriesData[0].id;
                document.getElementById('rank-title-2').textContent = seriesData[1].id;
                document.getElementById('rank-title-3').textContent = seriesData[2].id;
                document.getElementById('rank-title-4').textContent = seriesData[3].id;
                document.getElementById('rank-title-5').textContent = seriesData[4].id;
              });
    }

    urlInput.value = defaultData;

    pollingCheckbox.onchange = urlInput.onchange = pollingInput.onchange = createChart;

    createChart();

    // 일정 간격마다 데이터 업데이트
    setInterval(createChart, parseInt(pollingInput.value, 10) * 500);
    <%------------------------인기검색어 end-------------------------------%>
  });
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
    .ranking-wrap {
      display: none;
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

<style> <%--랭킹--%>
#search-ranking {
  position: absolute;
  top: -20px;
  right: 0;
  width: 200px;
  height: 20px;
}
#search-ranking ul {
  display: none;
  list-style: none;
  padding: 20px;
  margin: 0;
  width: 200px;
  border: 1px solid #aaa;
  background: white;
  position: absolute;
  top: -10px;
  right: 0;
  z-index: 1;
}
#search-ranking:hover ul {
  display: inline-block;
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
          mobileWebUrl: 'https://49.50.160.198:8443/flowerdictionary/detail?dataNo=${todayFlower.dataNo}',
          webUrl: 'https://49.50.160.198:8443/flowerdictionary/detail?dataNo=${todayFlower.dataNo}',
        },
      },
      buttons: [
        {
          title: '자세히 보기',
          link: {
            mobileWebUrl: 'https://49.50.160.198:8443/flowerdictionary/detail?dataNo=${todayFlower.dataNo}',
            webUrl: 'https://49.50.160.198:8443/flowerdictionary/detail?dataNo=${todayFlower.dataNo}',
          },
        },
      ],
    });


  })
</script>
<%--카카오공유하기 end--%>

<style>
  .rank-list {
    /*position: relative;*/
    top: 50%;
    left: 0;
    height: 30px;
    /*font-size: 13px;*/
    line-height: 30px;
  }
  .rank-list:first-child{
    animation: rank 15s infinite;
  }
  @keyframes rank {
    0% {
      margin-top: 0px;
    }
    16% {
      margin-top: 0px;
    }
    33% {
      margin-top: -30px;
    }
    50% {
      margin-top: -60px;
    }
    66% {
      margin-top: -90px;
    }
    82% {
      margin-top: -120px;
    }
    100% {
      margin-top: -150px;
    }
  }
</style>



<!-- WELCOME -->
<!-- PROMO ( 검은배너 ) -->
<div class="py-3 bg-dark bg-pattern">
  <div class="container">
    <div class="row">
      <div class="col-12">

        <!-- Text -->
        <div>
            <div class="text-center">
              <span class="text-white heading-xxs letter-spacing-xl">
                🌸🌸[<span id="server_time"></span>]<span class="today_txt1">오늘의 꽃은</span><span style="text-decoration: underline white; cursor: pointer">
                  <a class="todayflower_for_lang text-warning" data-bs-toggle="modal" data-bs-target="#todayflower">${todayFlower.flowerName}</a>
                  </span><span class="today_txt2">입니다</span>🌸🌸
              </span>
            </div>

            <div class="position-relative ranking-wrap" style="margin: 0 auto">
              <div id="search-ranking" >
                <!-- rollup rank -->
                <div style="position:relative;">
                <div class="text-center text-white" style="position: absolute; top: 0;overflow: hidden;">
                  <div class="rank-list" style="margin-top: 0;padding-top: 0">
                    <span id="rank-number-1" class="rank-number">1</span>
                    <span id="rank-title-1" class="rank-title"></span>
                  </div>
                  <div class="rank-list">
                    <span id="rank-number-2" class="rank-number">2</span>
                    <span id="rank-title-2" class="rank-title"></span>
                  </div>
                  <div class="rank-list">
                    <span id="rank-number-3" class="rank-number">3</span>
                    <span id="rank-title-3" class="rank-title"></span>
                  </div>
                  <div class="rank-list">
                    <span id="rank-number-4" class="rank-number">4</span>
                    <span id="rank-title-4" class="rank-title"></span>
                  </div>
                  <div class="rank-list">
                    <span id="rank-number-5" class="rank-number">5</span>
                    <span id="rank-title-5" class="rank-title"></span>
                  </div>
                </div>
              </div>
                <!-- hover rank -->
                <div>
<%--                  <h6 class="text-center">인기 검색어👀</h6>--%>
                  <ul id="rankingContainer"></ul>
                  <div class="ld-row">
                    <input type="hidden" checked="checked" id="enablePolling1"/>
                  </div>
                  <div class="ld-row">
                    <input class="ld-time-input" type="hidden" value="2" id="pollingTime1"/>
                  </div>
                  <div class="ld-row">
                    <input class="ld-url-input" type="hidden" id="fetchURL1"/>
                  </div>
                </div>


              </div>
            </div> <!-- ranking end -->

        </div> <!-- 오늘의꽃+ranking end -->
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
              <span class="slide_txt1_1">Better Things</span><br/><span class="slide_txt1_2">In a Better Way</span>
            </h1>
            <!-- Links -->
            <a type="button" class="btn btn-outline-dark slide_txt1_3" href="/subs/subscribe" style="opacity: 70%;margin:10px">정기구독</a>
            <a type="button" class="btn btn-outline-dark slide_txt1_4" href="/item/all" style="opacity: 70%;margin:10px">꽃선물</a>

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
            <h6 class="slide_txt2_1">
              VASE EDITION
            </h6>
            <h1 class="main_slide_title display-4 slide_txt2_2" style="font-weight: bold">
              PLEATS EDITION
            </h1>
            <h1 class="main_slide_subtitle display-6 mb-5 slide_txt2_3">
              화병&라그라스 패키지 오픈
            </h1>
            <h9 class="mb-13 slide_txt2_4">
              꽃이 있어도 꽃이 없어도 공간에 무드를 더할거에요
            </h9> <br/>

            <!-- Button -->
            <a type="button" class="btn btn-outline-dark slide_txt2_5" href="/bipum/all" style="opacity: 70%;margin:10px">상품 보러가기</a>

          </div>
        </div>
      </div>
    </div>

    <!-- slide3 -->
    <div class="w-100 bg-cover" style="background-image: url(/uimg/maintop4.jpg);">
      <div class="container d-flex flex-column">
        <div class="row justify-content-center align-items-center pt-15 pb-12" style="min-height:90vh!important">
          <div class="col-12 col-md-7 col-lg-7 text-center text-white">

            <h6 class="slide_txt3_1">
              COLLABORATION
            </h6>
            <!-- Heading -->
            <h1 class="slide_txt3_2" style="font-weight: bold">
              CHUNHYANG X KB
            </h1>
            <h4 style="font-weight: bold">
              <span class="slide_txt3_3">또 한번의 놀라운 콜라보에</span><br/><span class="slide_txt3_4">초대합니다</span>
            </h4>
            <h9 class="mb-13 slide_txt3_5">
              알파코 팝업스토어에 초대합니다
            </h9> <br/>

            <!-- Button -->
            <a type="button" class="btn btn-outline-white slide_txt3_6" href="/about" style="opacity: 90%;margin:10px">보러가기</a>

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
            <h3 class="main_slide_title display-4 slide_txt4_1" style="font-weight: bold">
              생기발랄한 마가렛
            </h3>
            <h9 class="mb-13">
              <span class="slide_txt4_2">빈티지한 포인트를 주고싶다면 </span><br/>
              <span class="slide_txt4_3">데이지의 한 종류, 마가렛을 만나보세요</span>
            </h9> <br/>

            <!-- Button -->
            <a type="button" class="btn btn-outline-dark slide_txt13" href="/item/all" style="opacity: 70%;margin:10px">보러가기</a>

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
      <c:forEach var="recommandlist" items="${recommandlist}" varStatus="status">
        <div class="col-12 col-md">
          <!-- Card -->
          <div class="card mb-7" data-toggle="card-collapse">
            <!-- Badge -->
            <div class="badge bg-white text-body card-badge card-badge-start text-uppercase" style="font-size: 17px;font-weight: bold;padding: 5px">
              <c:choose>
                <c:when test="${status.index == 0}">
                  🥇1
                </c:when>
                <c:when test="${status.index == 1}">
                  🥈2
                </c:when>
                <c:when test="${status.index == 2}">
                  🥉3
                </c:when>
              </c:choose>
              위
            </div>

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
      <c:forEach var="recommandlist1" items="${recommandlist1}" varStatus="status">
        <div class="col-12 col-md">

          <!-- Card -->
          <div class="card mb-7" data-toggle="card-collapse">
            <!-- Badge -->
            <div class="badge bg-white text-body card-badge card-badge-start text-uppercase" style="font-size: 17px;font-weight: bold;padding: 5px">
              <c:choose>
                <c:when test="${status.index == 0}">
                  🥇1
                </c:when>
                <c:when test="${status.index == 1}">
                  🥈2
                </c:when>
                <c:when test="${status.index == 2}">
                  🥉3
                </c:when>
              </c:choose>
              위
            </div>
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
                <div class="card-footer px-0 pt-0 bg-black text-center mt-2">
                  <button class="btn btn-xs btn-circle btn-white-primary cart_btn" data-itemid="${recommandlist1.item_id}" data-toggle="button">
                    <i class="fe fe-shopping-cart"></i>
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
      <c:forEach var="recommandlist2" items="${recommandlist2}" varStatus="status">
        <div class="col-12 col-md">

          <!-- Card -->
          <div class="card mb-7" data-toggle="card-collapse">
            <!-- Badge -->
            <div class="badge bg-white text-body card-badge card-badge-start text-uppercase" style="font-size: 17px;font-weight: bold;padding: 5px">
              <c:choose>
                <c:when test="${status.index == 0}">
                  🥇1
                </c:when>
                <c:when test="${status.index == 1}">
                  🥈2
                </c:when>
                <c:when test="${status.index == 2}">
                  🥉3
                </c:when>
              </c:choose>
              위
            </div>

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
                  <button class="btn btn-xs btn-circle btn-white-primary cart_btn" data-itemid="${recommandlist2.item_id}" data-toggle="button">
                    <i class="fe fe-shopping-cart"></i>
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
<%--        <a href="https://www.instagram.com/explore/tags/flower/" class="btn btn-white px-8">@flower</a>--%>
        <a href='#' class="btn btn-white px-8" onclick="window.open('https://www.instagram.com/explore/tags/flower/');return false" -nfocus=blur()>@flower</a>
      </div>
    </div>
  </div>
</section>

<!-- REVIEWS -->
<section class="py-12 border-bottom" id="reviews">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-12 col-md-10 col-lg-8 col-xl-6">

        <!-- Heading -->
        <h2 class="mb-12 text-center mt-10">
          <img src="/uimg/review_good.png">
        </h2>

      </div>
    </div>
    <div class="row">
      <!-- 최신리뷰 첫번째 열 시작 -->
      <div class="col-12 col-md-6 col-lg-4">
        <c:forEach var="obj" items="${dabalreview}">
        <div class="card card-lg mb-11">
          <div class="card-body text-center bg-light">

            <!-- Avatar -->
            <a href="/item/detail?item_id=${obj.item_id}">
            <img src="/uimg/${obj.item_img}" alt="..." class="img-fluid rounded-circle mb-7 mt-n11" style="max-width: 100px;">
            </a>
            <!-- Text -->
            <blockquote class="blockquote mb-0">

              <!-- Text -->
              <p class="fs-lg fst-normal">
              ${obj.review_title}
              </p>
              <!-- Rating -->
              <div class="rating fs-xs text-warning mb-2" data-value=${obj.review_score}>
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
              <fmt:formatDate  value="${obj.review_rdata}" pattern="yyyy-MM-dd" />
              </footer>

            </blockquote>

          </div>
        </div>
        </c:forEach>
      </div>
      <!-- 최신리뷰 첫번째 열 끝 -->

      <!-- 최신리뷰 두번째 열 시작 -->
      <div class="col-12 col-md-7 col-lg-4">
        <c:forEach var="obj" items="${flowerreview}">
          <div class="card card-lg mb-11">
            <div class="card-body text-center bg-light">

              <!-- Avatar -->
              <a href="/item/detail?item_id=${obj.item_id}">
              <img src="/uimg/${obj.item_img}" alt="..." class="img-fluid rounded-circle mb-7 mt-n11" style="max-width: 100px;">
              </a>
              <!-- Text -->
              <blockquote class="blockquote mb-0">

                <!-- Text -->
                <p class="fs-lg fst-normal">
                    ${obj.review_title}
                </p>
                <!-- Rating -->
                <div class="rating fs-xs text-warning mb-2" data-value=${obj.review_score}>
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
                  <fmt:formatDate  value="${obj.review_rdata}" pattern="yyyy-MM-dd" />
                </footer>

              </blockquote>

            </div>
          </div>
        </c:forEach>
      </div>
      <!-- 최신리뷰 두번째 열 끝 -->

      <!-- 최신리뷰 세번째 열 시작 -->
      <div class="col-12 col-md-6 col-lg-4">
        <c:forEach var="obj" items="${bipumreview}">
          <div class="card card-lg mb-11">
            <div class="card-body text-center bg-light">

              <!-- Avatar -->
              <a href="/bipum/detail?item_id=${obj.item_id}">
              <img src="/uimg/${obj.item_img}" alt="..." class="img-fluid rounded-circle mb-7 mt-n11" style="max-width: 100px;">
              </a>
              <!-- Text -->
              <blockquote class="blockquote mb-0">

                <!-- Text -->
                <p class="fs-lg fst-normal">
                    ${obj.review_title}
                </p>
                <!-- Rating -->
                <div class="rating fs-xs text-warning mb-2" data-value=${obj.review_score}>
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
                <fmt:formatDate  value="${obj.review_rdata}" pattern="yyyy-MM-dd" />
                </footer>

              </blockquote>

            </div>
          </div>
        </c:forEach>
      </div>
      <!-- 최신리뷰 세번째 열 끝 -->

    </div>  <%--ROW 끝나느곳--%>
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

