<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%--카카오맵--%>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=da86c8457c75372952796f5bbc52cb25"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=da86c8457c75372952796f5bbc52cb25&libraries=services,clusterer,drawing"></script>

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

  <%-- font --%>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Gowun+Batang:wght@400;700&family=Nanum+Gothic:wght@400;700;800&display=swap" rel="stylesheet">

  <%-- fixed-tab icon --%>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<%--  <link href="https://cdn.jsdelivr.net/gh/sunn-us/SUIT/fonts/variable/woff2/SUIT-Variable.css" rel="stylesheet">--%>

  <style>
    * {
      font-family: 'Nanum Gothic', sans-serif;
    }
  </style>

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

    /* 고정탭 ----------------------------------*/
    #scroll-btn {
      display: inline-block;
      margin: 0 auto;
      padding: 0;
      width: 70px;
      height: 70px;
      float: left;
      background: white;
      border-radius: 50px;
      cursor: pointer;
      display: flex;
      box-shadow: 0px 10px 10px rgba(0,0,0,0.1);
      bottom: 165px;
      right: 3%;
      position: fixed;
      border:none;
      z-index: 9999;
      transition: all 0.3s ease-out;
      overflow: hidden;
    }
    #scroll-btn:hover{
      width: 210px;
      align-items: center;
    }
    #scroll-btn div {
      width: 70px;
      height: 70px;
      text-align: center;
      align-items: center;
      border-radius: 50px;
      box-sizing: border-box;
      line-height: 70px;
    }
    #scroll-btn div img{
      width: 60px;
      height: 60px;
      margin: 5px;
      text-align: center;
      align-items: center;
      /*line-height: 70px;*/
    }
    #scroll-btn span{
      font-size: 15px;
      margin-left: 5px;
      white-space: nowrap;
      align-items: center;
      overflow: hidden;
      line-height: 70px;
    }

    #scroll-btn2 {
      display: inline-block;
      margin: 0 auto;
      padding: 0;
      width: 70px;
      height: 70px;
      float: left;
      background: white;
      border-radius: 50px;
      cursor: pointer;
      display: flex;
      box-shadow: 0px 10px 10px rgba(0,0,0,0.1);
      bottom: 90px;
      right: 3%;
      position: fixed;
      border:none;
      z-index: 9999;
      transition: all 0.3s ease-out;
      overflow: hidden;
    }
    #scroll-btn2:hover{
      width: 210px;
      align-items: center;
    }
    #scroll-btn2 div {
      width: 70px;
      height: 70px;
      text-align: center;
      align-items: center;
      border-radius: 50px;
      box-sizing: border-box;
      line-height: 70px;
    }
    #scroll-btn2 div img{
      width: 60px;
      height: 60px;
      margin: 5px;
      text-align: center;
      align-items: center;
      /*line-height: 70px;*/
    }
    #scroll-btn2 span{
      font-size: 15px;
      margin-left: 5px;
      white-space: nowrap;
      align-items: center;
      overflow: hidden;
      line-height: 70px;
    }
    #scroll-btn3 {
      display: inline-block;
      margin: 0 auto;
      padding: 0;
      width: 70px;
      height: 70px;
      float: left;
      background: white;
      border-radius: 50px;
      cursor: pointer;
      display: flex;
      box-shadow: 0px 10px 10px rgba(0,0,0,0.1);
      bottom: 15px;
      right: 3%;
      position: fixed;
      border:none;
      z-index: 9999;
    }
    #scroll-btn3 div {
      width: 70px;
      height: 70px;
      text-align: center;
      align-items: center;
      border-radius: 50px;
      box-sizing: border-box;
      line-height: 70px;
    }
    #scroll-btn3 div img{
      width: 60px;
      height: 60px;
      margin: 5px;
      text-align: center;
      align-items: center;
    }
    #scroll-btn3 div img:hover {
      width: 70px;
      height: 70px;
      margin: 0px;
    }
    /* 고정탭 end----------------------------------*/

    .callcentericon:hover img {
      transform: scale(1.1);
      transition: transform 0.3s ease;
    }
    .sunicon:hover i {
      transform: scale(1.1);
      transition: transform 0.3s ease;
      text-shadow: 0 0 10px #ffc107;
    }

  </style>
<%-----------------------------------------------  챗봇--%>
  <style>
    .chatbot-content {
      display: flex;
      flex-direction: column;
      height: 100%;
    }

    .chatbot-header {
      padding: 15px;
      background-color: #f8f9fa;
      border-bottom: 1px solid #dee2e6;
    }

    .chatbot-title {
      margin: 0;
      font-size: 18px;
      font-weight: bold;
    }

    .chatbot-body {
      flex: 1;
      overflow-y: auto;
      padding: 15px;
      background-color: #ffffff;
    }

    .chatbot-messages {
      border: 2px solid gray;
      margin-bottom: 15px;
      height: 300px;
      overflow-y: auto;
      padding: 10px;
    }

    .chatbot-input {
      display: flex;
      align-items: center;
    }

    .chatbot-input input {
      flex: 1;
      margin-right: 10px;
    }

    .chatbot-input button {
      flex-shrink: 0;
    }

    #communicate > tr > td {
      font-weight: bold;
    }
  </style>
  <script>
    var stompClient = null;

    function cbsetConnected(connected) {
      $("#cbconnect").prop("disabled", connected);
      $("#cbdisconnect").prop("disabled", !connected);
      $("#cbsend").prop("disabled", !connected);
      if (connected) {
        $("#conversation").show();
      }
      else {
        $("#conversation").hide();
      }
      $("#cbmsg").html("");
    }

    function cbconnect() {
      var socket = new SockJS('/ws');
      stompClient = Stomp.over(socket);
      stompClient.connect({}, function (frame) {
        cbsetConnected(true);
        console.log('Connected: ' + frame);
        stompClient.subscribe('/topic/public', function (message) {
          cbshowMessage("<tr><td><img src='/uimg/flower.png' alt='도우미AI' style='width:20px;'>" +"도우미AI: " + message.body + "<tr><td>"); //서버에 메시지 전달 후 리턴받는 메시지
        });
      });
    }

    function cbdisconnect() {
      if (stompClient !== null) {
        stompClient.disconnect();
      }
      cbsetConnected(false);
      console.log("Disconnected");
    }

    function cbsendMessage() {
      let message = $("#cbmsg").val()
      cbshowMessage("보낸 메시지: " + message);

      stompClient.send("/app/sendMessage", {}, JSON.stringify(message)); //서버에 보낼 메시지
    }

    function cbshowMessage(message) {
      $("#communicate").append(message);
    }

    $(function () {
      $("form").on('submit', function (e) {
        e.preventDefault();
      });
      // $( "#cbconnect" ).click(function() { cbconnect(); });
      cbconnect();
      $('#communicate').append("<tr><td><img src='/uimg/flower.png' alt='도우미AI' style='width:20px;'>" + "도우미AI: 안녕하세요? 봄의 향기, 춘향전의 도우미AI입니다." + "</td></tr>")
      $('#communicate').append("<tr><td><img src='/uimg/flower.png' alt='도우미AI' style='width:20px;'>" + "도우미AI: 무엇을 도와드릴까요?" + "</td></tr>")
      $( "#cbdisconnect" ).click(function() { cbdisconnect(); });
      $( "#cbsend" ).click(function() { cbsendMessage(); });
    });

  </script>
<%-------------------------------------------------------  챗봇end--%>

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
        // 버튼 1
        const scrollBtn = document.createElement("button");
        scrollBtn.setAttribute("id", "scroll-btn");
        document.body.appendChild(scrollBtn);
        scrollBtn.classList.add("show");

        const div = document.createElement("div");
        div.setAttribute("id", "fix_icon");
        scrollBtn.appendChild(div);

        const img = document.createElement("img");
        img.setAttribute("src", "/uimg/flower.png");
        div.appendChild(img);

        const span = document.createElement("span");
        span.innerHTML = "나와 어울리는 꽃은?";
        scrollBtn.appendChild(span);

        scrollBtn.addEventListener("click", function(){
          location.href='/pic';
        });
        // 버튼 2
        const scrollBtn2 = document.createElement("button");
        scrollBtn2.setAttribute("id", "scroll-btn2");
        document.body.appendChild(scrollBtn2);
        scrollBtn2.classList.add("show");

        const div2 = document.createElement("div");
        div2.setAttribute("id", "fix_icon");
        scrollBtn2.appendChild(div2);

        const img2 = document.createElement("img");
        img2.setAttribute("src", "/uimg/rocket.png");
        div2.appendChild(img2);

        const span2 = document.createElement("span");
        span2.innerHTML = "🚨 급할땐 퀵!🚨";
        scrollBtn2.appendChild(span2);

        scrollBtn2.addEventListener("click", function(){
          location.href='/quick/order';
        });
        // 버튼 3
        const scrollBtn3 = document.createElement("button");
        scrollBtn3.setAttribute("id", "scroll-btn3");
        document.body.appendChild(scrollBtn3);
        scrollBtn3.classList.add("show");

        const div3 = document.createElement("div");
        div2.setAttribute("id", "fix_icon");
        scrollBtn3.appendChild(div3);

        const img3 = document.createElement("img");
        img3.setAttribute("src", "/uimg/top.png");
        div3.appendChild(img3);

        scrollBtn3.addEventListener("click", function(){
          window.scrollTo({
            top: 0,
            behavior: "smooth"
          });
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
          <img src="/assets/img/callcenter.jpg" style="width: 100%" alt="채팅상담 이미지 출력 에러">
        </div>
        <div class="col-12 col-lg-6" style="padding: 0px">
          <!-- Body -->
          <div class="modal-body my-auto py-3">
            <h4 style="text-align: center;margin-top: 12px">🤖채팅 상담</h4>
            <h1 id="adm_id" hidden>${logincust.cust_id}</h1>
            <hr>
            <!-- 연결상태 -->
          <div style="background-image: url('/uimg/chat_bg.png');">
            <div id="status" style="display:flex;align-items: center;">
              <video autoplay loop muted style="width: 50px">
                <source src="/uimg/connect_ing.mp4" type="video/mp4">
              </video>
              <h8>연결대기중</h8>
            </div>
            <div hidden>
              <button id="connect"><img src="/uimg/connect_ok.png" alt="연결중">연결</button>
              <button id="disconnect"><img src="/uimg/connect_fail.png" alt="연결끊김">연결끊김</button>
            </div>
            <!-- 입력창 -->
            <div id="to" col-lg-7 style="margin-top: 10px;"></div>
            <div>
              <input type="text" id="target" value="유성진" hidden> <%--상담센터직원 이름 정해서 넣기--%>
              <input type="text" id="totext" style="margin-top: 10px; height: 55px">
              <button class="btn btn-outline-dark" id="sendto" >전송</button>
            </div>
          </div>

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

<%--===============================================챗봇 시작==========================================--%>
<div id="main-content">
  <div class="modal fade" id="chatbot" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
      <div class="modal-content">

        <!-- Close -->
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
          <i class="fe fe-x" aria-hidden="true"></i>
        </button>

        <!-- Content -->
        <div class="chatbot-content">
          <div class="chatbot-header">
            <h4 class="chatbot-title">챗봇</h4>
          </div>
          <div class="chatbot-body">
            <div class="chatbot-messages" id="communicate"></div>
            <div class="chatbot-input">
              <input type="text" id="cbmsg" class="form-control" placeholder="내용을 입력하세요....">
              <button id="cbsend" class="btn btn-primary" disabled type="submit">보내기</button>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
</div>
<%--===============================================챗봇 끝==========================================--%>

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
      <img src="/uimg/logo1.png" class="main-logo" style="height: 70px;margin: 5px">
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
      <ul class="navbar-nav flex-row" style="align-items: center;">
        <li class="nav-item" style="align-items: center;">
          <a class="nav-link callcentericon" data-bs-toggle="modal" data-bs-target="#callcenter" style="padding: 0 16px">
            <img src="/uimg/callcenter.png" style="width: 40px;cursor: pointer;">
          </a>
        </li>

          <li class="nav-item ms-lg-n4" style="align-items: center;">
              <a class="nav-link sunicon" href="/weather/weather" style="font-size: 30px;padding: 0 16px;">
                <i class="fe fe-sun"></i>
              </a>
          </li>

        <li class="nav-item ms-lg-n4" style="align-items: center;">
          <a class="nav-link" data-bs-toggle="offcanvas" href="#modalSearch">
            <i class="fe fe-search"></i>
          </a>
        </li>

        <li class="nav-item ms-lg-n4 dropdown" style="align-items: center;">
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


        <li class="nav-item ms-lg-n4" style="align-items: center;">
          <a class="nav-link" href="/account-wishlist">
            <i class="fe fe-heart"></i>
          </a>
        </li>
        <li class="nav-item ms-lg-n4" style="display: flex; align-items: center;">
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

<!-- Search -->
<div class="offcanvas offcanvas-end" id="modalSearch" tabindex="-1" role="dialog" aria-hidden="true">

  <!-- Close -->
  <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close">
    <i class="fe fe-x" aria-hidden="true"></i>
  </button>

  <!-- Header-->
  <div class="offcanvas-header lh-fixed fs-lg">
    <strong class="mx-auto">상품 검색</strong>
  </div>

  <!-- Body: Form -->
  <div class="offcanvas-body">
    <form>
      <div class="form-group">
        <label class="visually-hidden" for="modalSearchCategories">카테고리:</label>
        <select class="form-select" id="modalSearchCategories" name="category" id="category">
          <option value="all" <c:if test="${search.category == 'all'}">selected</c:if>>전체</option>
          <option value="100" <c:if test="${search.category == '꽃다발'}">selected</c:if>>꽃다발</option>
          <option value="200" <c:if test="${search.category == '꽃'}">selected</c:if>>꽃</option>
          <option value="300" <c:if test="${search.category == '화병'}">selected</c:if>>화병</option>
          <option value="400" <c:if test="${search.category == '비품'}">selected</c:if>>비품</option>
        </select>
      </div>
      <div class="input-group input-group-merge">
        <input class="form-control" type="search" name="searchtext" id="searchtext" placeholder="찾으시는 상품의 이름, 색상, 종류 등을 입력해 주세요."
               <c:if test="${search.searchtext != null}">value="${search.searchtext}"</c:if>>
        <div class="input-group-append">
          <button id="searchbtn" class="btn btn-outline-border">
            <i class="fe fe-search"></i>
          </button>
        </div>
      </div>
    </form>
  </div>

  <!-- Body: Results (add `.d-none` to disable it) -->
  <div class="offcanvas-body border-top fs-sm">

    <!-- Heading -->
    <p>Search Results:</p>

    <!-- Items -->
    <div class="row align-items-center position-relative mb-5">
      <div class="col-4 col-md-3">

        <!-- Image -->
        <img class="img-fluid" src="./assets/img/products/product-5.jpg" alt="...">

      </div>
      <div class="col position-static">

        <!-- Text -->
        <p class="mb-0 fw-bold">
          <a class="stretched-link text-body" href="./product.html">Leather mid-heel Sandals</a> <br>
          <span class="text-muted">$129.00</span>
        </p>

      </div>
    </div>
    <div class="row align-items-center position-relative mb-5">
      <div class="col-4 col-md-3">

        <!-- Image -->
        <img class="img-fluid" src="./assets/img/products/product-6.jpg" alt="...">

      </div>
      <div class="col position-static">

        <!-- Text -->
        <p class="mb-0 fw-bold">
          <a class="stretched-link text-body" href="./product.html">Cotton floral print Dress</a> <br>
          <span class="text-muted">$40.00</span>
        </p>

      </div>
    </div>
    <div class="row align-items-center position-relative mb-5">
      <div class="col-4 col-md-3">

        <!-- Image -->
        <img class="img-fluid" src="./assets/img/products/product-7.jpg" alt="...">

      </div>
      <div class="col position-static">

        <!-- Text -->
        <p class="mb-0 fw-bold">
          <a class="stretched-link text-body" href="./product.html">Leather Sneakers</a> <br>
          <span class="text-primary">$85.00</span>
        </p>

      </div>
    </div>
    <div class="row align-items-center position-relative mb-5">
      <div class="col-4 col-md-3">

        <!-- Image -->
        <img class="img-fluid" src="./assets/img/products/product-8.jpg" alt="...">

      </div>
      <div class="col position-static">

        <!-- Text -->
        <p class="mb-0 fw-bold">
          <a class="stretched-link text-body" href="./product.html">Cropped cotton Top</a> <br>
          <span class="text-muted">$29.00</span>
        </p>

      </div>
    </div>
    <div class="row align-items-center position-relative mb-5">
      <div class="col-4 col-md-3">

        <!-- Image -->
        <img class="img-fluid" src="./assets/img/products/product-9.jpg" alt="...">

      </div>
      <div class="col position-static">

        <!-- Text -->
        <p class="mb-0 fw-bold">
          <a class="stretched-link text-body" href="./product.html">Floral print midi Dress</a> <br>
          <span class="text-muted">$50.00</span>
        </p>

      </div>
    </div>

    <!-- Button -->
    <a class="btn btn-link px-0 text-reset" href="/item/all">
      전체 상품 보러가기 <i class="fe fe-arrow-right ms-2"></i>
    </a>

  </div>

  <!-- Body: Empty (remove `.d-none` to enable it) -->
  <div class="offcanvas-body d-none">

    <!-- Text -->
    <p class="mb-3 fs-sm text-center">
      Nothing matches your search
    </p>

    <!-- Smiley -->
    <p class="mb-0 fs-sm text-center">
      😞
    </p>

  </div>

</div>