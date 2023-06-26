<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCnKt8_N4-FKOnhI_pSaDL7g_g-XI1-R9E"></script>
<script src="./assets/js/vendor.bundle.js"></script>
<script src="./assets/js/theme.bundle.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<style>
    @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700,800,900');

    /*:root{*/
    /*    font-size: 20px;*/
    /*}*/
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
        right: 20px;
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
    //제이쿼리사용
    $.getJSON('https://api.openweathermap.org/data/2.5/weather?q=Seoul,kr&appid=2a46eaaf77ed481752c3b3e338fd7a02&units=metric',
        function (WeatherResult) {
            //기온출력
            $('.SeoulNowtemp').append(WeatherResult.main.temp);
            $('.SeoulLowtemp').append(WeatherResult.main.temp_min);
            $('.SeoulHightemp').append(WeatherResult.main.temp_max);
            $('.Seoulname').append(WeatherResult.name);
            $('.Seoulmain').append(WeatherResult.weather[0].main);
            $('.Seouldescription').append(WeatherResult.weather[0].description);
            $('.Seoulhumidity').append(WeatherResult.main.humidity);
            $('.Seoulwind').append(WeatherResult.wind.speed);
            $('.Seoulclouds').append(WeatherResult.clouds.all);

            //날씨아이콘출력
            //WeatherResult.weater[0].icon
            var weathericonUrl =
                '<img src= "http://openweathermap.org/img/wn/'
                + WeatherResult.weather[0].icon +
                '.png" alt="' + WeatherResult.weather[0].description + '"/>'
            $('.SeoulIcon').html(weathericonUrl);
        });

    $.getJSON('https://api.openweathermap.org/data/2.5/weather?q=Busan,kr&appid=2a46eaaf77ed481752c3b3e338fd7a02&units=metric',
        function (WeatherResult) {
            //기온출력
            $('.BusanNowtemp').append(WeatherResult.main.temp);
            $('.BusanLowtemp').append(WeatherResult.main.temp_min);
            $('.BusanHightemp').append(WeatherResult.main.temp_max);
            $('.Busanname').append(WeatherResult.name);
            $('.Busanmain').append(WeatherResult.weather[0].main);
            $('.Busandescription').append(WeatherResult.weather[0].description);
            $('.Busanhumidity').append(WeatherResult.main.humidity);
            $('.Busanwind').append(WeatherResult.wind.speed);
            $('.Busanclouds').append(WeatherResult.clouds.all);

            //날씨아이콘출력
            //WeatherResult.weater[0].icon
            var weathericonUrl =
                '<img src= "http://openweathermap.org/img/wn/'
                + WeatherResult.weather[0].icon +
                '.png" alt="' + WeatherResult.weather[0].description + '"/>'
            $('.SeoulIcon').html(weathericonUrl);
        });
</script>

<body>
<%--    <div>--%>
<%--        <div class="row">--%>
<%--            <div class="col">--%>
<%--                <span style="font-size: smaller">${weatherinfo}</span>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>


<div class="section over-hide">
    <div class="container">
        <div class="row full-height justify-content-center">
            <div class="col-12 text-center align-self-center py-0">
                <div class="section text-center py-0 py-md-0">
                    <input class="pricing" type="checkbox" id="pricing" name="pricing"/>
                    <label for="pricing"><span class="block-diff">SEOUL.KR<span class="float-right" style="margin-left: 50px">BUSAN.KR</span></span></label>
<%--                    <h8 class="SeoulIcon"></h8>--%>
                    <div class="card-3d-wrap mx-auto">
                        <div class="card-3d-wrapper">
                            <div class="card-front">
                                <div class="pricing-wrap ">
                                    <h4 class="mb-5 Seoulname"></h4><br>
                                    <div class="row">
                                        <div class="col-6" style="padding-right: 0px"><h6 class="mb-2 col6"><div class="SeoulNowtemp">기온 :</div></h6></div>
                                        <div class="col-6" style="padding-left: 0px"><h6 class="mb-2 col6"><div class="Seoulmain">날씨 :</div>
                                            <sub>(</sub><sub class="Seouldescription"></sub><sub>)</sub>
                                        </h6></div>
                                    </div><br>
                                    <div class="row">
                                        <div class="col-6" style="padding-right: 0px">
                                            <img src="/uimg/wi-thermometer-exterior.svg" width="20px"><h8 class="mb-2"><div class="SeoulNowtemp">최저기온 :</div></h8>
                                            <img src="/uimg/wi-thermometer.svg" width="20px"><h8 class="mb-2"><div class="SeoulNowtemp">최고기온 :</div></h8>
                                        </div>
                                        <div class="col-6" style="padding-left: 0px">
                                            <img src="/uimg/wi-humidity.svg" width="20px"><h8 class="mb-2"><div class="Seoulhumidity">습도 :</div></h8>
                                            <img src="/uimg/wi-strong-wind.svg" width="20px"><h8 class="mb-2"><div class="Seoulwind">바람 :</div></h8>
                                        </div>
                                    </div>
                                    <div class="img-wrap img-2">
                                        <img src="/uimg/1.jpg" alt="">
                                    </div>
<%--                                    <div class="img-wrap img-1">--%>
<%--                                        <img src="/uimg/3.png" alt="" width="50px">--%>
<%--                                    </div>--%>
<%--                                    <div class="img-wrap img-3">--%>
<%--                                        <img src="https://assets.codepen.io/1462889/water.png" alt="">--%>
<%--                                    </div>--%>
                                    <div class="img-wrap img-6">
                                        <img src="/uimg/2.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                            <div class="card-back">
                                <div class="pricing-wrap">
                                    <h4 class="mb-5 Busanname" style="color: navy"></h4><br>
                                    <div class="row">
                                        <div class="col-6" style="padding-right: 0px"><h6 class="mb-2 col6"><div class="BusanNowtemp">기온 :</div></h6></div>
                                        <div class="col-6" style="padding-left: 0px"><h6 class="mb-2 col6"><div class="Busanmain">날씨 :</div>
                                            <sub>(</sub><sub class="Busandescription"></sub><sub>)</sub>
                                        </h6></div>
                                    </div><br>
                                    <div class="row">
                                        <div class="col-6" style="padding-right: 0px">
                                            <img src="/uimg/wi-thermometer-exterior.svg" width="20px"><h8 class="mb-2"><div class="BusanNowtemp">최저기온 :</div></h8>
                                            <img src="/uimg/wi-thermometer.svg" width="20px"><h8 class="mb-2"><div class="BusanNowtemp">최고기온 :</div></h8>
                                        </div>
                                        <div class="col-6" style="padding-left: 0px">
                                            <img src="/uimg/wi-humidity.svg" width="20px"><h8 class="mb-2"><div class="Busanhumidity">습도 :</div></h8>
                                            <img src="/uimg/wi-strong-wind.svg" width="20px"><h8 class="mb-2"><div class="Busanwind">바람 :</div></h8>
                                        </div>
                                    </div>
                                    <div class="img-wrap img-2">
                                        <img src="/uimg/4.jpg" alt="">
                                    </div>
<%--                                    <div class="img-wrap img-4">--%>
<%--                                        <img src="https://assets.codepen.io/1462889/kayak.png" alt="">--%>
<%--                                    </div>--%>
<%--                                    <div class="img-wrap img-5">--%>
<%--                                        <img src="https://assets.codepen.io/1462889/water.png" alt="">--%>
<%--                                    </div>--%>
                                    <div class="img-wrap img-7">
                                        <img src="/uimg/6.jpg" alt="">
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


