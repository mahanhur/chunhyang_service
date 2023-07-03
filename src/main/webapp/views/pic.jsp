<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/react/16.6.3/umd/react.production.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/react-dom/16.6.3/umd/react-dom.production.min.js"></script>

<style>
    /* CSS 코드 */
    @import url('https://fonts.googleapis.com/css?family=Teko');

    .App {
        background: #131F2F;
        font-family: 'Teko', serif;
        height: 50vh;
        /*width: 100vw;*/
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .Loader {
        color: white;
        font-size: 10vw;
        letter-spacing: 0.01em;
        transition: transform 0.125s ease;
    }

    .Loader sup {
        font-size: 50%;
        vertical-align: baseline;
    }
</style>

<script>
    let pic = {
        myVideoStream:null,
        init:function(){
            let yourage = $("#yourage").val();
            if(yourage == ""){
            $("#yourflower").css("display" ,"none");
            $("#smallimg").css("display" ,"none");
            }

            $('#cfr_btn').click(function () {
                renderApp();
                $("#yourflower").css("display" ,"none");
                $("#smallimg").css("display" ,"none");
                setTimeout(() => {
                    $("#yourflower").css("display", "block");
                    $("#smallimg").css("display" ,"block");
                    $("#root").css("display", "none");
                }, 5000)
            });

            this.myVideoStream = document.querySelector('#myVideo');
            pic.getVideo();

            function Loader({ number }) {
                let numberString = number;
                if (number < 10) {
                    numberString = '0' + number;
                }
                const loaderDiv = document.createElement('div');
                loaderDiv.className = 'Loader';
                loaderDiv.setAttribute('data-size', number);
                loaderDiv.innerHTML = `\${numberString}<sup>%</sup>`;
                return loaderDiv;
            }
            function renderApp() {
                const appDiv = document.createElement('div');
                appDiv.className = 'App';
                const loader = new Loader({ number: 0 });
                appDiv.appendChild(loader);
                const rootElement = document.getElementById('root');
                rootElement.appendChild(appDiv);
                let number = 0;
                let interval = setInterval(() => {
                    if (number < 100) {
                        number++;
                        loader.setAttribute('data-size', number);
                        const numberString = number < 10 ? '0' + number : number.toString();
                        loader.innerHTML = `\${numberString}<sup>%</sup>`;
                    } else {
                        clearInterval(interval);
                    }
                }, 50);
            }
        },

        getVideo:function(){
            navigator.getMedia = navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia || navigator.msGetUserMedia;
            navigator.getMedia(
                {video: true, audio: false},
                function(stream) {
                    pic.myVideoStream.srcObject = stream
                    pic.myVideoStream.play();
                },
                function(error) {
                    alert('webcam not working');
                });
        },
         takeSnapshot:function(){
            var myCanvasElement = document.querySelector('#myCanvas');
            var myCTX = myCanvasElement.getContext('2d');
            myCTX.drawImage(this.myVideoStream, 0, 0, myCanvasElement.width, myCanvasElement.height);
        },

        send:function(){
                const canvas = document.querySelector('#myCanvas');
                const imgBase64 = canvas.toDataURL('image/jpeg', 'image/octet-stream');
                const decodImg = atob(imgBase64.split(',')[1]);
                let array = [];
                for (let i = 0; i < decodImg.length; i++) {
                    array.push(decodImg.charCodeAt(i));
                }
                const file = new Blob([new Uint8Array(array)], {type: 'image/jpeg'});
                const fileName = 'snapshot_' + new Date().getMilliseconds() + '.jpg';
                let formData = new FormData();
                formData.append('file', file, fileName);
                $.ajax({
                    type: 'post',
                    url: '/saveimg/',
                    enctype: 'multipart/form-data',
                    cache: false,
                    data: formData,
                    processData: false,
                    contentType: false,
                    success: function (data) {
                        $('#imgname').val(data);
                    }
                });
        },

    };
    $(function(){
        pic.init();
    });
</script>

<div class="container">

    <div class="row">
        <div class="col-12">
            <div class="row">
                <div class="col-12 col-md-6">
                    <!-- 왼쪽 상단 Card 시작-->
                    <div class="card">

                        <!-- 큰 이미지 시작 -->
                        <div class="mb-4" data-flickity='{"draggable": false, "fade": true}' id="productSlider">

                            <!-- main Itemimg -->
                            <video  id="myVideo" style="height: 350px"></video>
                            <!-- sub Itemimg -->
                            <a href="#" data-bigpicture='{"imgSrc": "${yourlower.imgUrl1}"}'>
                                <img src="${yourlower.imgUrl1}" alt="..." class="card-img-top">
                            </a>
                            <a href="#" data-bigpicture='{"imgSrc": "${yourlower.imgUrl2}"}'>
                                <img src="${yourlower.imgUrl2}" alt="..." class="card-img-top">
                            </a>
                            <a href="#" data-bigpicture='{"imgSrc": "${yourlower.imgUrl3}"}'>
                                <img src="${yourlower.imgUrl3}" alt="..." class="card-img-top">
                            </a>
                        </div>
                        <!-- 큰 이미지 끝 -->
                    </div>
                    <!-- 왼쪽 상단 Card 끝-->

                    <!-- 작은 이미지 Slider 시작-->
                    <div id="smallimg" class="flickity-nav mx-n2 mb-10 mb-md-0" data-flickity='{"asNavFor": "#productSlider", "contain": true, "wrapAround": false}'>

                        <!-- main Item -->
                        <div class="col-12 px-2" style="max-width: 113px; align-items: center">
                            <!-- main Image -->
                            <div style="background:black; color: white; width: 100px; height: 100px; text-align:center">카메라 보기</div>
                        </div>
                        <!-- sub Item  -->
                        <div class="col-12 px-2" style="max-width: 113px;">
                            <!-- sub Image -->
                            <div class="ratio ratio-1x1 bg-cover"><img src="${yourlower.imgUrl1}"></div>
                        </div>
                        <div class="col-12 px-2" style="max-width: 113px;">
                            <!-- sub Image -->
                            <div class="ratio ratio-1x1 bg-cover"><img src="${yourlower.imgUrl2}"></div>
                        </div>
                        <div class="col-12 px-2" style="max-width: 113px;">
                            <!-- sub Image -->
                            <div class="ratio ratio-1x1 bg-cover"><img src="${yourlower.imgUrl3}"></div>
                        </div>
                    </div>
                    <!-- 작은 이미지 Slider 끝-->
                    <canvas class="py-3" id="myCanvas" style="margin: 0px"></canvas><br>
                </div>
                <!-- 오른쪽 부분 시작 -->
                <div class="col-12 col-md-6 ps-lg-10">
                    <!-- Header -->
                    <div class="row mb-1">
                        <div class="row">
                            <div class="col-2">
                                <input type=button value="사진 찍기"  onclick="pic.takeSnapshot(); pic.send()">
                            </div>
                            <div class="col-6">
                                <form class="col" id="cfr_form" action="/mycfr" method="get">
                                    <button id="cfr_btn">나의 꽃 확인</button>
                                    <input type="text" name="imgname" id="imgname" hidden><br>
                                </form>
                            </div>
                        </div>
                    </div>

                    <div id="root"></div>

                    <div id="yourflower">
                        <input hidden id="yourage" value=${result.age}>
                        <h6 class="mb-2" >당신의 성별은 [${result.gender}]</h6>
                        <h6 class="mb-2">나이는 [${result.age}] 세 시군요</h6>
                        <h8>꽃번호:${yourlower.dataNo}</h8><br>
                        <h8>꽃번호 로직: [성별이 남자 1, 여자 2, 어린이 3] + 나이의 작은 값</h8>
                        <hr>
                        <h3 class="mb-2">꽃이름 [${yourlower.flowerName}]</h3></br>
                        <h5 class="mb-2">꽃말 <${yourlower.flowerMeaning}></h5>
                        <!-- Badge -->
                        <hr>
                        <div class="mb-7">
                            ${yourlower.fContent}<br>
                            ${yourlower.fUse}
                            <hr>
                            키우는 방법<br>
                            ${yourlower.fGrow}
                        </div>

                        <!-- 공유하기 -->
                        <p style="margin-bottom: 20px">
                            <a id="kakaotalk-sharing-btn" href="javascript:">
                                <img src="https://developers.kakao.com/assets/img/about/logos/kakaotalksharing/kakaotalk_sharing_btn_medium.png"
                                     alt="카카오톡 공유 보내기 버튼" style="width:8%;"/>
                            </a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>