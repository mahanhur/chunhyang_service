<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!doctype html>
<html lang="ko">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

  <%--datepicker--%>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
  <%--iamport--%>
  <script src="https://cdn.iamport.kr/v1/iamport.js"></script>

  <%--web socket--%>
  <script src="/webjars/sockjs-client/sockjs.min.js"></script>
  <script src="/webjars/stomp-websocket/stomp.min.js"></script>

<%--  <link href="https://cdn.jsdelivr.net/gh/sunn-us/SUIT/fonts/variable/woff2/SUIT-Variable.css" rel="stylesheet">--%>

<%--  <style>--%>
<%--    body {font-family: 'SUIT Variable', sans-serif;}--%>
<%--  </style>--%>

  <!-- -------------------------------------------------------------------------------- -->
  <!-- Favicon -->
  <link rel="shortcut icon" href="/assets/favicon/logo.png" type="image/x-icon" />
  <!-- Libs CSS -->
  <link rel="stylesheet" href="/assets/css/libs.bundle.css" />
  <!-- Theme CSS -->
  <link rel="stylesheet" href="/assets/css/theme.bundle.css" />
  <!-- -------------------------------------------------------------------------------- -->
  <title>:: 봄의 향기</title>

  <style>
    @media (max-width: 1199px) {
      .navbar-expand-lg .navbar-nav .nav-link {
        font-size: 13px;
        padding: 8px 10px;
      }
    }

    /* 회색네비바 숨김처리 */
    @media (max-width:1199.98px) {
      .navbar-topbar,
      .navbar-expand-xl {
        display: none;
      }
    }

    #to {
      /*width: 200px;*/
      height: 200px;
      border: 2px solid gray;
      overflow: auto;
    }
    #scroll-btn {
       font-family: 'Nanum Gothic', sans-serif;
       opacity: 0;
       width: 70px;
       height: 70px;
       color: dimgray;
       background-color: white;
       position: fixed;
       bottom: 13%;
       right: 3%;
       border: 2px solid black;
       font: bold 13px monospace;
       transition: opacity 2s, transform 2s;
     }
    #scroll-btn.show {
      opacity: 1;
      transition: opacity 5s, transform 5s;
    }
    #scroll-btn2 {
      font-family: 'Nanum Gothic', sans-serif;
      opacity: 0;
      width: 70px;
      height: 70px;
      color: dimgray;
      background-color: white;
      position: fixed;
      bottom: 5%;
      right: 3%;
      border: 2px solid black;
      font: bold 10px monospace;
      transition: opacity 2s, transform 2s;
    }
    #scroll-btn2.show {
      opacity: 1;
      transition: opacity 5s, transform 5s;
    }
    #scroll-btn:hover {
      color: white;
      background-color: #222222;
    }
    #scroll-btn2:hover {
      color: white;
      background-color: #222222;
    }
  </style>

<script>
  $(function () {
    $("#cartcount").attr("data-cart-items", 0);
    $.ajax({
      url:'/getcartcount',
      method:'post',
      success: function(result) {
        $("#cartcount").attr("data-cart-items", result);
      }
    });
  })

</script>

<script>
<%--1:1채팅 상담 자바스크립트--%>
  let callcenter = {
    id:null,
    stompClient:null,
    init:function(){
      $('#sendto').attr('disabled',true); //전송버튼 default값 사용불가 설정

      //입력창에 내용 입력시 전송버튼 활성화
      $('#totext').change( () => {
        let to = $("#totext").val();
         if(to != ""){
            $('#sendto').attr('disabled',false);
          };
      });
/*      //전송버튼 클릭시 다시 비활성화(같은 내용으로 도배하지 못하도록 방지를 위해만듬)
      $('#sendto').click( () => {
          $('#sendto').attr('disabled',true);
      });*/

      this.id = $('#adm_id').text();
       callcenter.connect();

      $("#disconnect").click(function() {
        callcenter.disconnect();
      });
      $("#sendto").click(function() {
        callcenter.sendTo();
      });
    },
    connect:function(){
      var sid = this.id;
      var socket = new SockJS('${adminserver}/ws');
      this.stompClient = Stomp.over(socket);

      this.stompClient.connect({}, function(frame) {
        callcenter.setConnected(true);
        console.log('Connected: ' + frame);

        this.subscribe('/send/to/'+sid, function(msg) {
          $("#to").prepend(
                  "<h6>" + JSON.parse(msg.body).sendid +":"+
                  JSON.parse(msg.body).content1
                  + "</h6>");
        });
      });
    },
    disconnect:function(){
      if (this.stompClient !== null) {
        this.stompClient.disconnect();
      }
      callcenter.setConnected(false);
      console.log("Disconnected");
    },
    setConnected:function(connected){
      if (connected) {
        $("#status").text("연결중");
      } else {
        $("#status").text("연결끊김");
      }
    },

    sendTo:function(){
      var msg = JSON.stringify({
        'sendid' : this.id,
        'receiveid' : $('#target').val(),
        'content1' : $('#totext').val()
      });
      this.stompClient.send('/receiveto', {}, msg);
    }
  };
  $(function(){
    callcenter.init();
  })

</script>

<%-- 고정탭바 --%>
<script>
  let chatbtn = {
    init:function(){
      const scrollBtn = document.createElement("button");
      scrollBtn.innerHTML = "나와어울리는꽃?";
      scrollBtn.setAttribute("id", "scroll-btn");
      document.body.appendChild(scrollBtn);
      scrollBtn.classList.add("show");
      scrollBtn.addEventListener("click", function(){
        location.href='/pic';
      });
      const scrollBtn2 = document.createElement("button");
      scrollBtn2.innerHTML = "급할땐 퀵!!";
      scrollBtn2.setAttribute("id", "scroll-btn2");
      document.body.appendChild(scrollBtn2);
      scrollBtn2.classList.add("show");
      scrollBtn2.addEventListener("click", function(){
        location.href='/map/map01';
      });
    }
  };
  $(function(){
    chatbtn.init();
  });
</script>
</head>

<!-- -------------------------------------------------------------------------------- -->
<body>
<%--===============================================1:1채팅 모달 시작==========================================--%>
<div class="modal fade" id="callcenter" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">

      <!-- Close -->
      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
        <i class="fe fe-x" aria-hidden="true"></i>
      </button>

      <!-- Content -->
      <div class="row gx-0">
        <div class="col-12 col-lg-6">
          <img src="/assets/img/callcenter.jpg" style="width: 400px" alt="채팅상담 이미지 출력 에러">
        </div>
        <div class="col-12 col-lg-6" style="padding: 0px">
          <!-- Body -->
          <div class="modal-body my-auto py-3">
            <h4 style="text-align: center">채팅 상담</h4>
            <h1 id="adm_id" hidden>${logincust.cust_id}</h1>
            <hr>
            <H8 id="status">대기중</H8>
            <div hidden>
              <button id="connect">연결중</button>
              <button id="disconnect">연결끊김</button>
            </div>

            <input type="text" id="target" value="유성진" hidden> <%--상담센터직원 이름 정해서 넣기--%>
            <input type="text" id="totext" style="margin-top: 10px; height: 55px">
            <button class="btn btn-outline-dark" id="sendto" >전송</button>
            <div id="to" col-lg-7 style="margin-top: 10px;"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<%--===============================================1:1채팅 모달 끝==========================================--%>

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
        <div class="col-12 col-lg-7 d-flex flex-column px-md-8">

          <!-- Body -->
          <div class="modal-body my-auto py-10">
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

<!-- -------------------------------------------------------------------------------- -->
<!-- 회색 상단 고정바 -->
<!-- NAVBAR -->
<div class="navbar navbar-topbar navbar-expand-xl navbar-light bg-light" style="top: 0px">
  <div class="container">

    <!-- Promo -->
    <div class="me-xl-8">
      <i class="fe fe-truck me-2"></i> <span class="heading-xxxs">Free shipping worldwide</span>
    </div>

    <!-- Toggler -->
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#topbarCollapse" aria-controls="topbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Collapse -->
    <div class="collapse navbar-collapse" id="topbarCollapse">

      <!-- Nav -->
      <ul class="nav nav-divided navbar-nav me-auto">
        <li class="nav-item dropdown">

          <!-- Toggle -->
          <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" style="padding: 0;">
            <img class="mb-1 me-1" src="/assets/img/flags/usa.svg" alt="..." /> United States
          </a>

          <!-- Menu -->
          <div class="dropdown-menu min-w-0">
            <a class="dropdown-item" href="#!">
              <img class="mb-1 me-2" src="/assets/img/flags/usa.svg" alt="USA">United States
            </a>
            <a class="dropdown-item" href="#!">
              <img class="mb-1 me-2" src="/assets/img/flags/canada.svg" alt="Canada">Canada
            </a>
            <a class="dropdown-item" href="#!">
              <img class="mb-1 me-2" src="/assets/img/flags/germany.svg" alt="Germany">Germany
            </a>
          </div>

        </li>
        <li class="nav-item dropdown">

          <!-- Toggle -->
          <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" style="padding: 0;">USD</a>

          <!-- Menu -->
          <div class="dropdown-menu min-w-0">
            <a class="dropdown-item" href="#!">USD</a>
            <a class="dropdown-item" href="#!">EUR</a>
          </div>

        </li>
        <li class="nav-item dropdown">

          <!-- Toggle -->
          <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" style="padding: 0;">English</a>

          <!-- Menu -->
          <div class="dropdown-menu min-w-0">
            <a class="dropdown-item" href="#">English</a>
            <a class="dropdown-item" href="#">French</a>
            <a class="dropdown-item" href="#">German</a>
          </div>
        </li>
      </ul>

      <!-- Nav -->
      <ul class="nav navbar-nav me-8">
        <li class="nav-item">
          <a class="nav-link" href="./shipping-and-returns.jsp" style="padding-top: 0;padding-bottom: 0">Shipping</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/faq" style="padding-top: 0;padding-bottom: 0">FAQ</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/contact-us" style="padding-top: 0;padding-bottom: 0">Contact</a>
        </li>
      </ul>

      <!-- Nav -->
      <ul class="nav navbar-nav flex-row">
        <li class="nav-item">
          <a class="nav-link text-gray-350" href="#!" style="padding-top: 0;padding-bottom: 0">
            <i class="fab fa-facebook-f"></i>
          </a>
        </li>
        <li class="nav-item ms-xl-n4">
          <a class="nav-link text-gray-350" href="#!" style="padding-top: 0;padding-bottom: 0">
            <i class="fab fa-twitter"></i>
          </a>
        </li>
        <li class="nav-item ms-xl-n4">
          <a class="nav-link text-gray-350" href="#!" style="padding-top: 0;padding-bottom: 0">
            <i class="fab fa-instagram"></i>
          </a>
        </li>
        <li class="nav-item ms-xl-n4">
          <a class="nav-link text-gray-350" href="#!" style="padding-top: 0;padding-bottom: 0">
            <i class="fab fa-medium"></i>
          </a>
        </li>
      </ul>

    </div>
  </div>
</div>

<!-- -------------------------------------------------------------------------------- -->
<!-- 흰색 상단네비 고정바 -->
<!-- NAVBAR -->
<nav class="sticky-nav navbar navbar-expand-lg navbar-light bg-white" style="position: sticky;top: 0px;background-color: white;z-index: 2;padding: 0">
  <div class="container">

    <!-- Brand -->
    <a class="navbar-brand" href="/">
      <img src="/uimg/logo1.png" class="main-logo" style="height: 80px;margin: 5px">
    </a>

    <!-- Toggler -->
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Collapse -->
    <div class="collapse navbar-collapse" id="navbarCollapse">

      <!-- Nav -->
      <ul class="navbar-nav mx-auto">

        <!-- ------------------------------------------------------------------- -->
        <li class="nav-item dropdown">
          <!-- Toggle -->
          <a class="nav-link"  href="/subs/subscribe">정기구독</a>
          <!-- Menu -->

        </li>

        <!-- ------------------------------------------------------------------- -->
        <li class="nav-item dropdown">
          <!-- Toggle -->
          <a class="nav-link"  href="/item/all">꽃선물</a>
        </li>

        <!-- ------------------------------------------------------------------- -->
        <li class="nav-item dropdown">
          <!-- Toggle -->
          <a class="nav-link"  href="/bipum/all">화병/비품</a>
        </li>

        <!-- ------------------------------------------------------------------- -->
        <li class="nav-item">
          <a class="nav-link" href="/flower-class">플라워클래스</a>
        </li>

        <!-- ------------------------------------------------------------------- -->
        <li class="nav-item">
          <a class="nav-link" href="/flowerdictionary/all">꽃사전</a>
        </li>

        <!-- ------------------------------------------------------------------- -->
        <li class="nav-item dropdown">
          <!-- Toggle -->
          <a class="nav-link" data-bs-toggle="dropdown" href="#">소개</a>

          <!-- Menu -->
          <div class="dropdown-menu">
            <div class="card card-lg">
              <div class="card-body">
                <ul class="list-styled fs-sm">
                  <li class="list-styled-item">
                    <a class="list-styled-link" href="/about">소개</a>
                  </li>
                  <li class="list-styled-item">
                    <a class="list-styled-link" href="/faq">FAQ</a>
                  </li>
                  <li class="list-styled-item">
                    <a class="list-styled-link" href="/contact-us">Contact Us</a>
                  </li>
                  <li class="list-styled-item">
                    <a class="list-styled-link" href="/coming-soon">Coming Soon</a>
                  </li>
                  <li class="list-styled-item">
                    <a class="list-styled-link" href="./store-locator.jsp">Store Locator</a>
                  </li>
                  <li class="list-styled-item">
                    <a class="list-styled-link" href="./404.jsp">404</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </li>
        <!-- ------------------------------------------------------------------- -->
      </ul>

      <!-- Nav -->
      <ul class="navbar-nav flex-row">
        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="modal" data-bs-target="#callcenter">
            <i class="fe fe-message-square"></i>
          </a>
        </li>

        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="offcanvas" href="#modalSearch">
            <i class="fe fe-search"></i>
          </a>
        </li>

        <li class="nav-item ms-lg-n4 dropdown">
          <c:choose>
            <c:when test="${logincust == null}">
              <!-- Toggle -->
              <a class="nav-link" data-bs-toggle="dropdown" href="/cust/login">
                <i class="fe fe-user"></i>
              </a>
              <!-- Menu -->
              <div class="dropdown-menu">
                <div class="card card-lg">
                  <div class="card-body">
                    <ul class="list-styled fs-sm">
                      <li class="list-styled-item">
                        <a class="list-styled-link" href="/cust/login">로그인</a>
                      </li>
                      <li class="list-styled-item">
                        <a class="list-styled-link" href="/cust/register">회원가입</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </c:when>
            <c:otherwise>
              <!-- Toggle -->
              <a class="nav-link" data-bs-toggle="dropdown" href="/cust/account-orders">
                <i class="fe fe-user"></i>
              </a>
              <!-- Menu -->
              <div class="dropdown-menu">
                <div class="card card-lg">
                  <div class="card-body">
                    <ul class="list-styled fs-sm">
                      <li class="list-styled-item">
                        <a class="list-styled-link" href="/cust/account-orders?cust_id=${logincust.cust_id}">My account</a>
                      </li>
                      <li class="list-styled-item">
                        <a class="list-styled-link" href="/cust/logout">로그아웃</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </c:otherwise>
          </c:choose>
        </li>


        <li class="nav-item ms-lg-n4">
          <a class="nav-link" href="/account-wishlist">
            <i class="fe fe-heart"></i>
          </a>
        </li>
        <li class="nav-item ms-lg-n4">
          <a class="nav-link" href="/cart/all?cust_id=${logincust.cust_id}">
            <%--          모달로 할꺼면..... data-bs-toggle="offcanvas" href="#modalShoppingCart"--%>
            <span id="cartcount" data-cart-items="0">
                  <i class="fe fe-shopping-cart"></i>
            </span>
          </a>
        </li>
      </ul>

    </div>

  </div>
</nav>

<!-- -------------------------------------------------------------------------------- -->
<!-- center  -->
<c:choose>
  <c:when test="${center == null}">
    <jsp:include page="/views/center.jsp"/>
  </c:when>
  <c:otherwise>
    <jsp:include page="${center}.jsp"/>
  </c:otherwise>
</c:choose>
<!--  Main Center End -->

<!-- --------------------------------------------------------------------------------- -->
<!-- FOOTER -->
<footer class="bg-dark bg-cover " style="background-image: url(/assets/img/patterns/pattern-2.svg)">
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
          <h4 class="mb-6 text-white">춘향전</h4>

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
            Shop
          </h6>

          <!-- Links -->
          <ul class="list-unstyled mb-7 mb-sm-0">
            <li>
              <a class="text-gray-300"  href="/subs/subscribe">정기구독</a>
            </li>
            <li>
              <a class="text-gray-300"  href="/item/all">꽃선물</a>
            </li>
            <li>
              <a class="text-gray-300"  href="/bipum/all">화병/비품</a>
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
              <a class="text-gray-300" href="/about">소개</a>
            </li>
            <li>
              <a class="text-gray-300" href="/faq">FAQ</a>
            </li>
            <li>
              <a class="text-gray-300" href="/contact-us">Contact Us</a>
            </li>
            <li>
              <a class="text-gray-300" href="./store-locator.jsp">Store Locator</a>
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
              <a class="text-gray-300" href="#!">1-201-577-1577</a>
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
          <img class="footer-payment" src="/assets/img/payment/mastercard.svg" alt="...">
          <img class="footer-payment" src="/assets/img/payment/visa.svg" alt="...">
          <img class="footer-payment" src="/assets/img/payment/amex.svg" alt="...">
          <img class="footer-payment" src="/assets/img/payment/paypal.svg" alt="...">
          <img class="footer-payment" src="/assets/img/payment/maestro.svg" alt="...">
          <img class="footer-payment" src="/assets/img/payment/klarna.svg" alt="...">

        </div>
      </div>
    </div>
  </div>
</footer>

<!-- JAVASCRIPT -->
<!-- Map (replace the API key to enable) -->
<%--<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCnKt8_N4-FKOnhI_pSaDL7g_g-XI1-R9E"></script>--%>

<!-- Vendor JS -->
<script src="/assets/js/vendor.bundle.js"></script>

<!-- Theme JS -->
<script src="/assets/js/theme.bundle.js"></script>

</body>
</html>