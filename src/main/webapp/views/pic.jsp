<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<script>
    let pic = {
        myVideoStream:null,
        init:function(){
            this.myVideoStream = document.querySelector('#myVideo');
            pic.getVideo();
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
            for (let i = 0; i < decodImg .length; i++) {
                array.push(decodImg .charCodeAt(i));
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
        takeAuto:function(interval){
            this.getVideo();
            myStoredInterval = setInterval(function(){
                pic.takeSnapshot();
                pic.send();
            }, interval);
        }
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
                    <div class="flickity-nav mx-n2 mb-10 mb-md-0" data-flickity='{"asNavFor": "#productSlider", "contain": true, "wrapAround": false}'>

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
                    <canvas id="myCanvas" style="margin: 20px"></canvas><br>
                </div>
                <!-- 오른쪽 부분 시작 -->

                <div class="col-12 col-md-6 ps-lg-10">
                    <!-- Header -->
                    <div class="row mb-1">
                        <div class="row">
                            <div class="col"><input type=button value="사진 찍기"  onclick="pic.takeSnapshot(); pic.send()"></div>
                            <form class="col" id="cfr_form" action="/mycfr" method="get">
                                <button id="cfr_btn">나의 꽃 확인</button>
                                <input type="text" name="imgname" id="imgname" hidden><br>
                            </form>
                        </div>
                        <h6 class="mb-2">성별 [${result.gender}]</h6>
                        <h6 class="mb-2">너의나이 [${result.age}]</h6>
                    </div>
                    <hr>
                    <h3 class="mb-2">꽃이름 [${yourlower.flowerName}]</h3></br>
                    <h5 class="mb-2">꽃말 <${yourlower.flowerMeaning}></h5><h8>꽃번호:${yourlower.dataNo}</h8>
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