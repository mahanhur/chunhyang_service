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
<%--toastr library--%>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" integrity="sha512-3pIirOrwegjM6erE5gPSwkUzO+3cTjpnV9lexlNZqvupR64iZBnOOTiiLPb9M36zpMScbmUNIcHUqKD47M719g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

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
      height: 180px;
      border: 2px solid gray;
      overflow: auto;
    }

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
          cbshowMessage("<tr><td><img src='/uimg/flower.png' alt='꽃집사' style='width:20px;'>" +"꽃집사AI: " + message.body + "<tr><td>"); //서버에 메시지 전달 후 리턴받는 메시지
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
      // $( "#cbconnect" ).click(function() { cbconnect(); });
      cbconnect();
      $('#communicate').append("<tr><td><img src='/uimg/flower.png' alt='꽃집사' style='width:20px;'>" + "꽃집사: 안녕하세요? 봄의 향기, 춘향전의 도우미AI, '꽃집사'입니다." + "</td></tr>")
      $('#communicate').append("<tr><td><img src='/uimg/flower.png' alt='꽃집사' style='width:20px;'>" + "꽃집사: 무엇을 도와드릴까요?" + "</td></tr>")
      $( "#cbdisconnect" ).click(function() { cbdisconnect(); });
      $( "#cbsend" ).click(function() { cbsendMessage();$('#cbmsg').val(''); });
      $('#cbmsg').keypress(function(event) {
        if (event.keyCode === 13) {
            cbsendMessage();
            $('#cbmsg').val('');
        }
      });
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

<%--1:1채팅 상담 자바스크립트--%>
<script>
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

    if($('.pp').html() == 0) {
      $('.pp').html(0);
      $('.btn-spin').attr('disabled', true);
    }
    $('.btn-spin').click( function() {
      toastr.info("100포인트를 사용하였습니다.");
      $.ajax({
        url:"/btnspin",
        method:"post",
        success: function(data) {
          $('.pp').html(data);
        },
        error: function() {

        }
      })
    })
  })
</script>

<%--  &lt;%&ndash;  카카오공유하기&ndash;%&gt;--%>
<%--<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.2.0/kakao.min.js"--%>
<%--          integrity="sha384-x+WG2i7pOR+oWb6O5GV5f1KN2Ko6N7PTGPS7UlasYWNxZMKQA63Cj/B2lbUmUfuC" crossorigin="anonymous"></script>--%>

<%--<script>--%>

<%--    $( function() {--%>
<%--      Kakao.init('c91de3a9ba7f48da3cb562c2fc973026');--%>
<%--      Kakao.Share.createDefaultButton({--%>
<%--        container: '#kakaotalk-sharing-btn',--%>
<%--        objectType: 'feed',--%>
<%--        content: {--%>
<%--          title: '오늘의 꽃 - ${todayFlower.flowerName}',--%>
<%--          description: '꽃말: ${todayFlower.flowerMeaning}',--%>
<%--          imageUrl:--%>
<%--                  '${todayFlower.imgUrl1}',--%>
<%--          link: {--%>
<%--            // [내 애플리케이션] > [플랫폼] 에서 등록한 사이트 도메인과 일치해야 함--%>
<%--            mobileWebUrl: 'http://49.50.160.198/flowerdictionary/detail?dataNo=${todayFlower.dataNo}',--%>
<%--            webUrl: 'http://49.50.160.198/flowerdictionary/detail?dataNo=${todayFlower.dataNo}',--%>
<%--          },--%>
<%--        },--%>
<%--        buttons: [--%>
<%--          {--%>
<%--            title: '자세히 보기',--%>
<%--            link: {--%>
<%--              mobileWebUrl: 'http://49.50.160.198/flowerdictionary/detail?dataNo=${todayFlower.dataNo}',--%>
<%--              webUrl: 'http://49.50.160.198/flowerdictionary/detail?dataNo=${todayFlower.dataNo}',--%>
<%--            },--%>
<%--          },--%>
<%--        ],--%>
<%--      });--%>
<%--    })--%>
<%--</script>--%>

<script>

    let search = {
      init: function(){
        $('#searchbtn').click(function() {
          $('#searchResult').empty();
          let category = $("#category").val();
          let searchtext = $("#searchtext").val();
          $.ajax({
            method : 'post',
            url : '/item/searchimpl',
            data : {
              category: category, searchtext: searchtext
            },
            // $('#searchform').serialize()
            success: function (data) {
              // alert(data);
              search.result(data);
            }
          })
        })
      },
      result: function(data) {
        let tags = "";
        for (let i = 0; i < data.length; i++) {
          tags = '<div class="row align-items-center position-relative mb-5"><div class="col-4 col-md-3">';
          tags += '<img class="img-fluid" src="/uimg/';
          tags += data[i].item_img;
          tags += '">';
          tags += '</div>';
          tags += ' <div class="col position-static"><p class="mb-0 fw-bold"><a class="stretched-link text-body" href="/item/detail?item_id=';
          tags += data[i].item_id;
          tags += '">';
          tags += data[i].item_name;
          tags += '</a> <br>';
          tags += '<td>';
          tags += ' <span class="text-muted">';
          tags += data[i].item_price.toLocaleString() + '원';
          tags += '</span></p></div></div>';
          $('#searchResult').append(tags);
        }
      }
    }

    $(function () {
      search.init()

    });
</script>

<style>
  @media (max-width: 992px) {
    .chatbot-icon {
      display: none;
    }
  }
</style>

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
        <div class="col-12 col-lg-6" style="height: 100%">
          <img src="/assets/img/callcenter.jpg" style="width: 100%" alt="채팅상담 이미지 출력 에러">
        </div>
        <div class="col-12 col-lg-6" style="padding: 0px">
          <!-- Body -->
          <div class="modal-body my-auto py-3">
            <h4 style="text-align: center;margin-top: 12px">🤖채팅 상담</h4>
            <h1 id="adm_id" hidden>${logincust.cust_id}</h1>
            <hr>
            <!-- 연결상태 -->
<%--          <div style="background-image: url('/uimg/chat_bg.png');">--%>
            <div id="status" style="display:flex;align-items: center;">
              <video autoplay loop muted style="width: 50px">
<%--                <source src="/uimg/connect_ing.mp4" type="video/mp4">--%>
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
              <input type="text" id="totext" style="margin-top: 2%; height: 40px">
              <button class="btn btn-outline-dark" id="sendto" style="height: 40px;" >전송</button>
            </div>
          </div>

          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<%--===============================================1:1채팅 모달 끝==========================================--%>


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
            <h4 class="chatbot-title">춘향전 도우미AI 꽃집사</h4>
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

<div class="chatbot-icon">
  <jsp:include page="/views/chatbot-icon.jsp"/>
</div>

<%--===============================================챗봇 끝==========================================--%>


<%--=============================================== 게임 모달 버튼 ==========================================--%>
<!-- 게임 modal -->
<div id="main-content">
  <div class="modal fade" id="game" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
      <div class="modal-content">
        <!-- Close -->
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" style="padding:.9375rem 1.25rem;position:absolute;right:0;top:0;z-index:2">
          <i class="fe fe-x" aria-hidden="true"></i>
        </button>

        <!-- Content -->
        <div class="game-content" style="display: flex; flex-direction: column; height: 100%">
          <div class="game-header align-items-center" style="padding: 10px; background-color: #f8f9fa; border-bottom: 1px solid #dee2e6;">
            <h6 class="game-title mb-0">룰렛 게임</h6>
          </div>

          <div class="game-body" style="flex: 1; overflow-y: auto; padding: 15px; background-color: #ffffff;">
            <!-- 룰렛 ---------------------------------------------->
            <div style="box-sizing: border-box" >
              <div style="display: grid;place-items: center;overflow: hidden;">
                <div class="deal-wheel">
                  <ul class="spinner"></ul>
                  <figure class="cap" style="position: relative;">
                    <svg class="grim-reaper" viewBox="0 0 582 653" style="position: absolute;top: 0;left: 0;z-index: 1;}">
                      <circle id="BG" cx="295.6" cy="286.3" r="288" fill="#fff"/>
                    </svg>
                    <svg class="my-svg" viewBox="-20 -85 582 453" style="position: absolute;top: 0;left: 0;z-index: 2;">
<%--                      <svg xmlns="http://www.w3.org/2000/svg" width="549.31" height="367.99" version="1.1" viewBox="0 0 549.3125 367.98749">--%>
                        <defs>
                          <clipPath id="a">
                            <path d="m0 294.39h439.45v-294.39h-439.45v294.39z"/>
                          </clipPath>
                        </defs>
                        <g transform="matrix(1.25 0 0 -1.25 0 367.99)">
                          <g clip-path="url(#a)"><g transform="translate(291.61 74.1)">
                            <path d="m0 0c12.566-4e-3 24.723-4.474 34.3-12.61 0.226-0.192 0.443-0.396 0.649-0.61l49.151-51.259c0.15-0.151 0.299-0.301 0.46-0.451 15.29-14 39.54-11.75 51.669 5.11 30.55 42.46-4.5 145.09-43.609 235.94-0.845 1.916-2.417 3.417-4.37 4.17l-2.521 1c-2.458 0.96-4.272 3.089-4.83 5.67-1.569 7.229-6.358 13.343-13 16.6-40.389 19.86-65.7 21.27-79.109 8.13-1.479-1.499-3.485-2.36-5.591-2.4h-110.17c-2.127 0.035-4.154 0.908-5.64 2.43-13.4 13.14-38.71 11.73-79.1-8.13-6.642-3.257-11.431-9.371-13-16.6-0.542-2.585-2.345-4.726-4.8-5.7l-2.52-1c-1.963-0.765-3.537-2.285-4.37-4.22-39.1-90.78-74.15-193.43-43.6-235.89 12.13-16.89 36.39-19.09 51.669-5.11 0.161 0.14 0.31 0.29 0.461 0.451l49.15 51.259c0.206 0.214 0.423 0.418 0.65 0.61 9.576 8.136 21.733 12.606 34.299 12.61h143.77z" fill="#1f1f21"/>
                          </g>
                            <g transform="translate(278.88 161.81)">
                              <path d="m0 0c13.481 0 24.41-10.929 24.41-24.41 0-13.482-10.929-24.41-24.41-24.41s-24.41 10.928-24.41 24.41c0 13.481 10.929 24.41 24.41 24.41" fill="#383838"/>
                            </g>
                            <g transform="translate(278.88 112.99)">
                              <path d="m0 0c-13.481 0-24.41 10.929-24.41 24.41 0 13.482 10.929 24.41 24.41 24.41s24.41-10.928 24.41-24.41v-0.01c-6e-3 -13.477-10.932-24.4-24.41-24.4m0 51.92c-15.193 0-27.51-12.316-27.51-27.51 0-15.193 12.317-27.51 27.51-27.51 15.189 0 27.505 12.311 27.51 27.5 6e-3 15.194-12.307 27.515-27.5 27.52h-0.01z" fill="#191919"/>
                            </g>
                            <g transform="translate(166.26 170.55)">
                              <path d="m0 0c19.452 0 35.22-15.769 35.22-35.22 0-19.452-15.768-35.22-35.22-35.22-19.451 0-35.22 15.768-35.22 35.22 0 19.451 15.769 35.22 35.22 35.22" fill="#383838"/>
                            </g>
                            <g transform="translate(166.26 100.11)">
                              <path d="m0 0c-19.451 0-35.22 15.769-35.22 35.221 0 19.451 15.769 35.219 35.22 35.219 19.452 0 35.22-15.768 35.22-35.219 0-19.452-15.768-35.221-35.22-35.221m0 74.521c-21.705 0-39.3-17.596-39.3-39.3 0-21.705 17.595-39.301 39.3-39.301s39.3 17.596 39.3 39.301c0 21.704-17.595 39.3-39.3 39.3" fill="#191919"/>
                            </g>
                            <g transform="translate(188.51 145.71)">
                              <path d="m0 0h-11.88v11.87c0 3.314-2.686 6-6 6h-8.79c-3.313 0-6-2.686-6-6v-11.87h-11.84c-3.313 0-6-2.687-6-6v-8.79c0-3.314 2.687-6 6-6h11.87v-11.87c0-3.314 2.686-6 6-6h8.79c3.314 0 6 2.686 6 6v11.899h11.87c3.314 0 6 2.687 6 6v8.79c-0.016 3.311-2.71 5.982-6.02 5.971" fill="#898989"/>
                            </g><g transform="translate(189.68 213.72)">
                              <path d="m0 0c5.225 0 9.46-4.235 9.46-9.46s-4.235-9.46-9.46-9.46-9.46 4.235-9.46 9.46 4.235 9.46 9.46 9.46" fill="#383838"/>
                            </g>
                            <g transform="translate(219.72 273.37)">
                              <path d="m0 0c11.151 0 20.19-9.04 20.19-20.19 0-11.151-9.039-20.19-20.19-20.19s-20.19 9.039-20.19 20.19c0 11.15 9.039 20.19 20.19 20.19" fill="#fff"/>
                            </g>
                            <g transform="translate(254.48 213.72)">
                              <path d="m0 0c5.225 0 9.46-4.235 9.46-9.46s-4.235-9.46-9.46-9.46-9.461 4.235-9.461 9.46 4.236 9.46 9.461 9.46" fill="#383838"/>
                            </g>
                            <g transform="translate(111.34 230.94)">
                              <path d="m0 0c14.735 0 26.68-11.945 26.68-26.68s-11.945-26.68-26.68-26.68-26.68 11.945-26.68 26.68 11.945 26.68 26.68 26.68" fill="#191919"/>
                            </g>
                            <g transform="translate(111.34 228.31)">
                              <path d="m0 0c13.283 0 24.05-10.768 24.05-24.05 0-13.283-10.767-24.05-24.05-24.05-13.282 0-24.05 10.767-24.05 24.05 0 13.282 10.768 24.05 24.05 24.05" fill="#383838"/>
                            </g>
                            <g transform="translate(306.39 219)">
                              <path d="m0 0c8.141 0 14.74-6.599 14.74-14.74 0-8.14-6.599-14.74-14.74-14.74s-14.739 6.6-14.739 14.74c0 8.141 6.598 14.74 14.739 14.74" fill="#16b7ef"/></g><g transform="translate(335.87 189.37)"><path d="m0 0c8.141 0 14.74-6.599 14.74-14.74s-6.599-14.74-14.74-14.74-14.74 6.599-14.74 14.74 6.599 14.74 14.74 14.74" fill="#00e530"/></g><g transform="translate(335.87 248.63)"><path d="m0 0c8.141 0 14.74-6.6 14.74-14.74 0-8.141-6.599-14.74-14.74-14.74s-14.74 6.599-14.74 14.74c0 8.14 6.599 14.74 14.74 14.74" fill="#ffef22"/></g><g transform="translate(365.35 219)"><path d="m0 0c8.141 0 14.74-6.599 14.74-14.74 0-8.14-6.599-14.74-14.74-14.74s-14.739 6.6-14.739 14.74c0 8.141 6.598 14.74 14.739 14.74" fill="#ea3b3b"/>
                            </g>
                          </g>
                        </g>
                      </svg>

                  </figure>
                  <div class="ticker"></div>
                  <button class="btn-spin">
                    게임시작!
                  </button>
                </div>
              </div>
              <div>
                <span>${logincust.cust_id}의 현재 보유 포인트 : </span><span class="pp">${pp}</span>
              </div>
            </div>
            <!-- 룰렛 end ---------------------------------------------->
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<%--===============================================게임 모달 버튼 끝==========================================--%>

<!-- -------------------------------------------------------------------------------- -->
<!-- 회색 상단 고정바 -->
<!-- NAVBAR -->
<div class="navbar navbar-topbar navbar-expand-xl navbar-light bg-light" style="top: 0px">
  <div class="container">

    <!-- Promo -->
    <div class="me-xl-8">
      <i class="fe fe-truck me-2"></i> <span class="heading-xxxs">Free shipping</span>
    </div>

    <!-- Toggler -->
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#topbarCollapse" aria-controls="topbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Collapse -->
    <div class="collapse navbar-collapse" id="topbarCollapse">

      <!-- Nav -->
      <ul class="nav nav-divided navbar-nav me-auto">

        </li>
        <li class="nav-item dropdown" style="margin-left: 20px">
          <!-- Toggle -->
          <a id="selectedLanguage" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" style="padding: 0;">한국어</a>

          <!-- Menu -->
          <div class="dropdown-menu min-w-0">
            <a class="dropdown-item" href="#" data-value="ko_KR" onclick="changeLang(this)">한국어</a>
            <a class="dropdown-item" href="#" data-value="en_US" onclick="changeLang(this)">English</a>
            <a class="dropdown-item" href="#" data-value="ja" onclick="changeLang(this)">日本語</a>
            <a class="dropdown-item" href="#" data-value="ch" onclick="changeLang(this)">فارسى</a>
          </div>
        </li>
      </ul>

      <!-- Nav -->
      <ul class="nav navbar-nav me-8">
<%--        <li class="nav-item">--%>
<%--          <a class="nav-link" href="./shipping-and-returns.jsp" style="padding-top: 0;padding-bottom: 0">Shipping</a>--%>
<%--        </li>--%>
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
          <a class="nav-link lang_target"  href="/subs/subscribe">정기구독</a>
          <!-- Menu -->

        </li>

        <!-- ------------------------------------------------------------------- -->
        <li class="nav-item dropdown">
          <!-- Toggle -->
          <a class="nav-link lang_target"  href="/item/all">꽃선물</a>
        </li>

        <!-- ------------------------------------------------------------------- -->
        <li class="nav-item dropdown">
          <!-- Toggle -->
          <a class="nav-link lang_target"  href="/bipum/all">화병/비품</a>
        </li>

        <!-- ------------------------------------------------------------------- -->
        <li class="nav-item">
          <a class="nav-link lang_target" href="/flower-class">플라워클래스</a>
        </li>

        <!-- ------------------------------------------------------------------- -->
        <li class="nav-item">
          <a class="nav-link lang_target" href="/flowerdictionary/all">꽃사전</a>
        </li>

        <!-- ------------------------------------------------------------------- -->
        <li class="nav-item dropdown">
          <!-- Toggle -->
          <a class="nav-link lang_target" href="/about">소개</a>

          <!-- Menu -->
          <div class="dropdown-menu">
            <div class="card card-lg">
              <div class="card-body">
                <ul class="list-styled fs-sm">
                  <li class="list-styled-item">
                    <a class="list-styled-link lang_target" href="/about">소개</a>
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
        <c:if test="${logincust != null}"> <%--로그인커스트(로그인한경우) 에만 보이게 해라--%>
        <li class="nav-item" style="align-items: center;">
          <a class="nav-link callcentericon" data-bs-toggle="modal" data-bs-target="#callcenter" style="padding: 0 16px">
            <img src="/uimg/callcenter.png" style="width: 20px;cursor: pointer;">
          </a>
        </li>
        </c:if>
          <li class="nav-item ms-lg-n4" style="align-items: center;">
              <a class="nav-link sunicon" href="/weather/weather" style="font-size: 20px;padding: 0 16px;">
                <i class="fe fe-sun"></i>
              </a>
          </li>

        <li class="nav-item ms-lg-n4" style="align-items: center;">
          <a class="nav-link" data-bs-toggle="offcanvas" href="#modalSearch">
            <i class="fe fe-search"></i>
          </a>
        </li>
        <c:if test="${logincust != null}"> <%--로그인커스트(로그인한경우) 에만 보이게 해라--%>
        <li class="nav-item ms-lg-n4" style="display: flex; align-items: center;">
          <a class="nav-link" href="/cart/all?cust_id=${logincust.cust_id}">
            <%--          모달로 할꺼면..... data-bs-toggle="offcanvas" href="#modalShoppingCart"--%>
            <span id="cartcount" data-cart-items="0">
                  <i class="fe fe-shopping-cart"></i>
            </span>
          </a>
        </li>
        </c:if>
        <%--        <li class="nav-item ms-lg-n4" style="align-items: center;">--%>
        <%--          <a class="nav-link" href="/account-wishlist">--%>
        <%--            <i class="fe fe-heart"></i>--%>
        <%--          </a>--%>
        <%--        </li>--%>

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
                        <a class="list-styled-link lang_target" href="/cust/login">로그인</a>
                      </li>
                      <li class="list-styled-item">
                        <a class="list-styled-link lang_target" href="/cust/register">회원가입</a>
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
                        <a class="list-styled-link lang_target" href="/order/all?cust_id=${logincust.cust_id}">마이페이지</a>
                      </li>
                      <li class="list-styled-item">
                        <a class="list-styled-link lang_target" href="/cust/logout">로그아웃</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </c:otherwise>
          </c:choose>
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

<!-- 다국어 JS -->
<script src="/assets/js/language.js"></script>

<!-- 메인 고정버튼 JS -->
<script src="/assets/js/fixed_btn.js"></script>
<link rel="stylesheet" href="/assets/css/fixed_btn.css" />

<!-- 메인 게임 모달 JS -->
<%--toastr library--%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" integrity="sha512-3pIirOrwegjM6erE5gPSwkUzO+3cTjpnV9lexlNZqvupR64iZBnOOTiiLPb9M36zpMScbmUNIcHUqKD47M719g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="/assets/js/game_modal.js"></script>
<link rel="stylesheet" href="/assets/css/game_modal.css" />

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
    <%--<form>--%>
      <div class="form-group">
        <label class="visually-hidden" for="category">카테고리:</label>
        <select class="form-select" name="category" id="category">
          <option value="all" <c:if test="${search.category == 'all'}">selected</c:if>>전체</option>
          <option value="100" <c:if test="${search.category == '100'}">selected</c:if>>꽃다발</option>
          <option value="200" <c:if test="${search.category == '200'}">selected</c:if>>꽃</option>
          <option value="300" <c:if test="${search.category == '300'}">selected</c:if>>화병</option>
          <option value="400" <c:if test="${search.category == '400'}">selected</c:if>>비품</option>
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
<%--    </form>--%>
  </div>

  <!-- Body: Results (add `.d-none` to disable it) -->
  <div class="offcanvas-body border-top fs-sm">

    <!-- Heading -->
    <p>검색 결과:</p>
    <div id="searchResult">

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