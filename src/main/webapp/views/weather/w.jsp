<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<style>
    @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700,800,900');

    :root{
        font-size: 20px;
    }
    body{
        font-family: 'Poppins', sans-serif;
        font-weight: 500;
        font-size: 15px;
        line-height: 1.7;
        color: #102770;
        background-color: white;
        overflow-x: hidden;
    }
    a {
        cursor: pointer;
        transition: all 200ms linear;
    }
    a:hover {
        text-decoration: none;
    }
    .link {
        color: #c4c3ca;
    }
    .link:hover {
        color: #ffeba7;
    }
    .over-hide {
        overflow: hidden;
    }
    .size-22{
        font-size: 22px;
    }
    .section{
        position: relative;
        width: 100%;
        z-index: 1;
        display: block;
    }
    .full-height{
        min-height: 100vh;
    }
    [type="checkbox"]:checked,
    [type="checkbox"]:not(:checked){
        position: absolute;
        left: -9999px;
    }
    .pricing:checked + label,
    .pricing:not(:checked) + label{
        position: relative;
        display: block;
        text-align: center;
        width: 260px;
        height: 44px;
        border-radius: 4px;
        padding: 0;
        margin: 0 auto;
        cursor: pointer;
        font-family: 'Poppins', sans-serif;
        font-weight: 600;
        text-transform: uppercase;
        font-size: 14px;
        letter-spacing: 1px;
        line-height: 44px;
        padding: 0 25px;
        padding-right: 27px;
        overflow: hidden;
        color: #fff;
        text-align: left;
    }
    .pricing:checked + label:before,
    .pricing:not(:checked) + label:before{
        position: absolute;
        content: '';
        z-index: -2;
        background-color: #102770;
        width: 100%;
        height: 100%;
        display: block;
        top: 0;
        left: 0;
    }
    .pricing:checked + label:after,
    .pricing:not(:checked) + label:after{
        position: absolute;
        content: '';
        z-index: -1;
        background-color: #ffeba7;
        width: 128px;
        height: 40px;
        display: block;
        top: 2px;
        left: 2px;
        border-radius: 2px;
        transition: left 300ms linear;
    }
    .pricing:checked + label:after {
        left: 130px;
    }
    .block-diff {
        display: block;
        mix-blend-mode: difference;
    }

    .card-3d-wrap {
        position: relative;
        width: 340px;
        max-width: calc(100% - 20px);
        height: 510px;
        -webkit-transform-style: preserve-3d;
        transform-style: preserve-3d;
        perspective: 1000px;
        margin-top: 90px;
    }
    .card-3d-wrapper {
        width: 100%;
        height: 100%;
        position:absolute;
        top: 0;
        left: 0;
        -webkit-transform-style: preserve-3d;
        transform-style: preserve-3d;
        transition: transform 700ms 400ms ease-out;
    }
    .card-front, .card-back {
        width: 100%;
        height: 100%;
        background-color: rgba(255, 255, 255, 1);
        position: absolute;
        border-radius: 6px;
        left: 0;
        top: 0;
        -webkit-transform-style: preserve-3d;
        transform-style: preserve-3d;
        -webkit-backface-visibility: hidden;
        -moz-backface-visibility: hidden;
        -o-backface-visibility: hidden;
        backface-visibility: hidden;
        box-shadow: 0 12px 35px 0 rgba(16, 39, 112,.07);
    }
    .card-back {
        transform: rotateY(180deg);
    }
    .pricing:checked ~ .card-3d-wrap .card-3d-wrapper {
        transform: rotateY(180deg);
        transition: transform 700ms 400ms ease-out;
    }
    .pricing-wrap{
        position: relative;
        padding-top: 160px;
        width: 100%;
        display: block;
        z-index: 1;
        -webkit-transform-style: preserve-3d;
        transform-style: preserve-3d;
        -webkit-backface-visibility: hidden;
        -moz-backface-visibility: hidden;
        -o-backface-visibility: hidden;
        backface-visibility: hidden;
    }
    .pricing-wrap h4{
        position: relative;
        width: 100%;
        display: block;
        text-align: center;
        font-family: 'Poppins', sans-serif;
        font-weight: 700;
        letter-spacing: 3px;
        font-size: 22px;
        line-height: 1.7;
        color: #102770;
        transform: translate3d(0, 0, 35px) perspective(100px);
    }
    .pricing-wrap h4:before{
        position: absolute;
        content: '';
        z-index: -1;
        background: linear-gradient(217deg, #448ad5, #b8eaf9);
        width: 70px;
        height: 70px;
        display: block;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        box-shadow: 0 6px 20px 0 rgba(16, 39, 112,.3);
        animation: border-transform 6s linear infinite;
    }
    .card-back .pricing-wrap h4:before{
        background: linear-gradient(217deg, #648946, #a3c984);
    }
    @keyframes border-transform{
        0%,100% { border-radius: 63% 37% 54% 46% / 55% 48% 52% 45%; }
        14% { border-radius: 40% 60% 54% 46% / 49% 60% 40% 51%; }
        28% { border-radius: 54% 46% 38% 62% / 49% 70% 30% 51%; }
        42% { border-radius: 61% 39% 55% 45% / 61% 38% 62% 39%; }
        56% { border-radius: 61% 39% 67% 33% / 70% 50% 50% 30%; }
        70% { border-radius: 50% 50% 34% 66% / 56% 68% 32% 44%; }
        84% { border-radius: 46% 54% 50% 50% / 35% 61% 39% 65%; }
    }
    .pricing-wrap h2{
        position: relative;
        width: 100%;
        display: block;
        text-align: center;
        font-family: 'Poppins', sans-serif;
        font-weight: 400;
        letter-spacing: 1px;
        font-size: 36px;
        line-height: 1.1;
        color: #102770;
        transform: translate3d(0, 0, 30px) perspective(100px);
    }
    .pricing-wrap h2 sup{
        font-size: 20px;
    }
    .pricing-wrap p{
        position: relative;
        width: 100%;
        display: block;
        text-align: center;
        font-family: 'Poppins', sans-serif;
        font-weight: 500;
        font-size: 14px;
        line-height: 1.2;
        letter-spacing: 1px;
        color: #102770;
        transform: translate3d(0, 0, 30px) perspective(100px);
    }
    .card-back h2,
    .card-back p,
    .card-back h4{
        color: #0c1c00;
    }
    .link {
        position: relative;
        padding: 10px 20px;
        border-radius: 4px;
        display: inline-block;
        text-align: center;
        color: #ffeba7;
        background-color: #102770;
        transition: all 200ms linear;
        font-family: 'Poppins', sans-serif;
        font-weight: 500;
        font-size: 14px;
        line-height: 1.2;
        transform: translate3d(0, 0, 30px) perspective(100px);
    }
    .link:hover {
        color: #102770;
        background-color: #ffeba7;
    }
    .card-back .link{
        background-color: #0c1c00;
    }
    .card-back .link:hover{
        color: #0c1c00;
        background-color: #ffeba7;
    }
    .img-wrap img{
        width: 100%;
        height: auto;
        display: block;
    }
    .img-1{
        position: absolute;
        display: block;
        left: -160px;
        top: -50px;
        z-index: 5;
        width: calc(80% + 160px);
        transform: translate3d(0, 0, 45px) perspective(100px);
        opacity: 1;
        pointer-events: auto;
        transition: transform 400ms 1200ms ease, opacity 400ms 1200ms ease;
    }
    .pricing:checked ~ .card-3d-wrap .card-3d-wrapper .img-1 {
        opacity: 0;
        transform: translate3d(-50px, 25px, 45px) perspective(100px);
        pointer-events: none;
        transition: transform 400ms ease, opacity 200ms 150ms ease;
    }
    .img-2 {
        position: absolute;
        display: block;
        left: 0;
        top: 0;
        z-index: 1;
        border-top-left-radius: 6px;
        border-top-right-radius: 6px;
        overflow: hidden;
        width: 100%;
        transform: translate3d(0, 0, 15px) perspective(100px);
    }
    .img-3{
        position: absolute;
        display: block;
        right: -20px;
        top: -40px;
        z-index: 5;
        width: calc(60% + 20px);
        transform: translate3d(0, 0, 55px) perspective(100px) scale(1);
        opacity: 1;
        pointer-events: auto;
        transition: transform 300ms 1300ms ease, opacity 200ms 1300ms ease;
    }
    .pricing:checked ~ .card-3d-wrap .card-3d-wrapper .img-3 {
        opacity: 0;
        transform: translate3d(-50px, 5px, 55px) perspective(100px) scale(0.4);
        pointer-events: none;
        transition: transform 400ms ease, opacity 200ms 150ms ease;
    }
    .img-6{
        position: absolute;
        display: block;
        right: 20px;
        bottom: -55px;
        z-index: 5;
        width: calc(20% + 30px);
        transform: translate3d(0, 0, 25px) perspective(100px) scale(1);
        opacity: 1;
        pointer-events: auto;
        transition: transform 300ms 1300ms ease, opacity 200ms 1300ms ease;
    }
    .pricing:checked ~ .card-3d-wrap .card-3d-wrapper .img-6 {
        opacity: 0;
        transform: translate3d(0, 0, 25px) perspective(100px) scale(0.4);
        pointer-events: none;
        transition: transform 400ms ease, opacity 200ms 150ms ease;
    }

    .img-4{
        position: absolute;
        display: block;
        left: -60px;
        top: -60px;
        z-index: 5;
        width: calc(65% + 60px);
        transform: translate3d(0, 0, 45px) perspective(100px) scale(0.5);
        opacity: 0;
        pointer-events: none;
        transition: transform 400ms ease, opacity 200ms 150ms ease;
    }
    .pricing:checked ~ .card-3d-wrap .card-3d-wrapper .img-4 {
        opacity: 1;
        pointer-events: auto;
        transform: translate3d(0, 0, 45px) perspective(100px) scale(1);
        transition: transform 400ms 1200ms ease, opacity 300ms 1200ms ease;
    }
    .img-5{
        position: absolute;
        display: block;
        right: -70px;
        top: -50px;
        z-index: 6;
        width: calc(60% + 70px);
        transform: translate3d(0, 0, 35px) perspective(100px) scale(0.5) rotate(0deg);
        opacity: 0;
        pointer-events: none;
        transition: transform 400ms 100ms ease, opacity 200ms 250ms ease;
    }
    .pricing:checked ~ .card-3d-wrap .card-3d-wrapper .img-5 {
        opacity: 1;
        pointer-events: auto;
        transform: translate3d(0, 0, 35px) perspective(100px) scale(1) rotate(10deg);
        transition: transform 400ms 1300ms ease, opacity 300ms 1300ms ease;
    }
    .img-7{
        position: absolute;
        display: block;
        right: -30px;
        bottom: -65px;
        z-index: 6;
        width: calc(25% + 30px);
        transform: translate3d(0, 0, 35px) perspective(100px) scale(0.5);
        opacity: 0;
        pointer-events: none;
        transition: transform 400ms 100ms ease, opacity 200ms 250ms ease;
    }
    .pricing:checked ~ .card-3d-wrap .card-3d-wrapper .img-7 {
        opacity: 1;
        pointer-events: auto;
        transform: translate3d(0, 0, 35px) perspective(100px) scale(1);
        transition: transform 400ms 1300ms ease, opacity 300ms 1300ms ease;
    }
    .logo {
        position: fixed;
        top: 30px;
        right: 30px;
        display: block;
        z-index: 100;
        transition: all 250ms linear;
    }
    .logo img {
        height: 26px;
        width: auto;
        display: block;
    }
</style>
<script>
    let w = {
        init:function (){
            window.onload=function(){
                getWeather();
            };
            const tempSection = document.querySelector('.temperature');
            const placeSection = document.querySelector('.place');
            const descSection = document.querySelector('.description');
            const humiditySection = document.querySelector('.humidity');
            const mainSection = document.querySelector('.main');
            const windSection = document.querySelector('.wind');
            const cloudsSection = document.querySelector('.clouds');
            const iconSection = document.querySelector('.icon')
            const citi ='seoul'
            const APIkey ='2a46eaaf77ed481752c3b3e338fd7a02'
            let url =`https://api.openweathermap.org/data/2.5/weather?q=\${citi}&APPID=\${APIkey}&units=metric`

            console.log(url)

            const getWeather = () => {
                w.init();
                fetch(url)
                .then((response) => {
                    return response.json();
                })
                .then((json) => {
                    const temperature = json.main.temp;
                    const place = json.name;
                    const description = json.weather[0].description;
                    const humidity = json.main.humidity;
                    const main = json.weather[0].main;
                    const wind = json.wind.speed;
                    const clouds = json.clouds.all;

                    tempSection.innerText = temperature;
                    placeSection.innerText = place;
                    descSection.innerText = description;
                    humiditySection.innerText = humidity;
                    mainSection.innerText = main;
                    windSection.innerText = wind;
                    cloudsSection.innerText = clouds;

                    const icon = json.weather[0].icon;
                    const iconURL = "http://openweathermap.org/img/wn/"+icon+".png";
                    iconSection.setAttribute('src', iconURL);
                })
            }
        },
    };
    $(function (){
        w.init();
    })
</script>
<!-- CONTENT -->
<body>
<dl>
    <dt>위치</dt>
<%--    <dd class="place"></dd>--%>
    <dt>메인</dt>
    <dd class="main"></dd>
    <dt>기온</dt>
<%--    <dd class="temperature"></dd>--%>
    <dt>습도</dt>
    <dd class="humidity"></dd>
    <dt>바람</dt>
    <dd class="wind"></dd>
    <dt>구름</dt>
    <dd class="clouds"></dd>
    <dt>설명</dt>
    <img class="icon"/>
    <dd class="description"></dd>
</dl>
<a href="https://front.codes/" class="logo" target="_blank">
    <img src="https://assets.codepen.io/1462889/fcb.png" alt="">
</a>

<div class="section over-hide">
    <div class="container">
        <div class="row full-height justify-content-center">
            <div class="col-12 text-center align-self-center py-5">
                <div class="section text-center py-5 py-md-0">
                    <input class="pricing" type="checkbox" id="pricing" name="pricing"/>
                    <label for="pricing"><span class="block-diff">SEOUL.KR<span class="float-right" style="margin-left: 50px">BUSAN.KR</span></span></label>
                    <div class="card-3d-wrap mx-auto">
                        <div class="card-3d-wrapper">
                            <div class="card-front">
                                <div class="pricing-wrap ">
                                    <h4 class="mb-5 place"></h4><br>
                                    <div class="temperature"></div>
                                    <h2 class="mb-2 temperature"></h2><sub>섭씨</sub>
                                    <p class="mb-4">per person</p>
                                    <p class="mb-1"><i class="uil uil-location-pin-alt size-22"></i></p>
                                    <p class="mb-4">Drina, Serbia</p>
                                    <a href="#0" class="link">Choose Date</a>
                                    <div class="img-wrap img-2">
                                        <img src="/uimg/1.jpg" alt="">
                                    </div>
                                    <div class="img-wrap img-1">
                                        <img src="https://assets.codepen.io/1462889/kayak.png" alt="">
                                    </div>
                                    <div class="img-wrap img-3">
                                        <img src="https://assets.codepen.io/1462889/water.png" alt="">
                                    </div>
                                    <div class="img-wrap img-6">
                                        <img src="/uimg/2.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                            <div class="card-back">
                                <div class="pricing-wrap">
                                    <h4 class="mb-5">Camping</h4>
                                    <h2 class="mb-2"><sup>$</sup>29 / 8<sup>hrs</sup></h2>
                                    <p class="mb-4">per person</p>
                                    <p class="mb-1"><i class="uil uil-location-pin-alt size-22"></i></p>
                                    <p class="mb-4">Tara, Serbia</p>
                                    <a href="#0" class="link">Choose Date</a>
                                    <div class="img-wrap img-2">
                                        <img src="https://assets.codepen.io/1462889/grass.png" alt="">
                                    </div>
                                    <div class="img-wrap img-4">
                                        <img src="https://assets.codepen.io/1462889/kayak.png" alt="">
                                    </div>
                                    <div class="img-wrap img-5">
                                        <img src="https://assets.codepen.io/1462889/water.png" alt="">
                                    </div>
                                    <div class="img-wrap img-7">
                                        <img src="https://assets.codepen.io/1462889/IvyRock.png" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>


