<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

  <style>
    .bodymovin-wrap {
      margin: 0;
      display: flex;
      align-items: flex-end;
      justify-content: center;
      height: 100%;
      background: #fbd6c0;
    }

    #bodymovin {
      height: 100%;
      display: block;
      display: flex;
      align-items: center;
    }
    #bodymovin svg {
      /*width: 150%;*/
      /*height: auto !important;*/
      border-radius: 30px;
      cursor: pointer;
    }
    .bodymovin-tooltip {
      width: 150px;
      position: absolute;
      top: 0px;
      background: #ffffff;
      font-size: 17px;
      padding: 10px;
      border-radius: 20px;
      box-shadow: 0 10px 10px rgba(0, 0, 0, 0.1);
      opacity: 0;
      pointer-events: none;
      transition: all 0.4s cubic-bezier(0.68, -0.55, 0.265, 1.55);
    }
    .bodymovin-wrap:hover .bodymovin-tooltip {
      top: -70px;
      opacity: 1;
      pointer-events: auto;
    }
    .bodymovin-tooltip:before {
      position: absolute;
      content: "";
      height: 15px;
      width: 15px;
      background: #fff;
      bottom: -8px;
      left: 50%;
      transform: translateX(-50%) rotate(45deg);
    }
    @media (max-width: 992px) {
      .bodymovin-wrap{
        display: none;
      }
    }
  </style>

  <script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/49240/lottie.js"></script>
  <script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/49240/lottie_api.js"></script>


  <div class="bodymovin-wrap" id="animation-container"
       style="display: inline-block;
            margin: 0 auto;
            padding: 0;
            width: 150px;
            height: 150px;
            float: left;
            background: transparent;
            border-radius: 30px;
            display: flex;
            /*box-shadow: 0px 10px 5px rgba(0,0,0,0.05);*/
            bottom: 5px;
            left: 2%;
            position: fixed;
            border:none;
            z-index: 9999;">
    <div class="bodymovin-tooltip text-center">무엇을<br/>도와드릴까요?</div>
    <div id="bodymovin" data-bs-toggle="modal" data-bs-target="#chatbot"
         style="width: 150px;
              height: 150px;
              text-align: center;
              align-items: center;
              border-radius: 30px;
              box-sizing: border-box;
              line-height: 100px;"
              cursor: pointer;>
    </div>
  </div>
<script>
  // -----------
  // Defenitions
  // -----------

  var elem = document.getElementById('bodymovin');
  var anim, animationAPI;
  var scale = 1;
  var windowSize = {
    w: window.innerWidth,
    h: window.innerHeight
  };
  var elemSize = {
    w: elem.clientWidth,
    h: elem.clientHeight
  };

  // ---------
  // Animation
  // ---------

  function init() {
    animationAPI = lottie_api.createAnimationApi(anim);

    // -----
    // Blink
    // -----

    var blinkSlider = animationAPI.getKeyPath('Slider Control,Transform,X Position');
    var blinkDirection = 'down';
    var blinkRange = 0;

    var blink = function() {
      var interval = setInterval(function blinkInterval() {
        if (blinkDirection === 'down') blinkRange += 25;
        if (blinkDirection === 'up') blinkRange -= 25;

        if (blinkRange >= 100 && blinkDirection === 'down') blinkDirection = 'up';
        if (blinkRange <= 0 && blinkDirection === 'up') blinkDirection = 'down';

        if (blinkRange === 0) clearInterval(interval);
      }, 10);
    };

    setInterval(blink, 4500);

    animationAPI.addValueCallback(blinkSlider, function(currentValue) {
      return blinkRange;
    });

    // -------------
    // Face movement
    // -------------

    var mousePosition = [0,0];
    var joystickSize = {w: null, h: null};
    var joystickPosition = animationAPI.getKeyPath('JoyStkCtrl01,Transform,Position');
    var joystickBounds = animationAPI.getKeyPath('JoyStkCtrl01 Origin,Contents,Group 1, Rectangle Path 1, Size');

    animationAPI.addValueCallback(joystickBounds, function(currentValue) {
      joystickSize.w = currentValue[0];
      joystickSize.h = currentValue[1];

      return [joystickSize.w, joystickSize.h];
    });


    animationAPI.addValueCallback(joystickPosition, function(currentValue) {
      return mousePosition;
    });

    window.addEventListener("mousemove", function(e) {
      const mousePercent = {
        w: e.pageX/windowSize.w,
        h: e.pageY/windowSize.h
      }

      mousePosition[0] = (mousePercent.w * joystickSize.w) - joystickSize.w/2;
      mousePosition[1] = (mousePercent.h * joystickSize.h) - joystickSize.h/2;
    });
  }

  // ---------------
  // Setup animation
  // ---------------

  var animData = {
    container: elem,
    renderer: 'svg',
    loop: true,
    autoplay: true,
    rendererSettings: {
      preserveAspectRatio: 'xMidYMid meet'
    },
    path: 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/49240/face-animation.json'
  };
  anim = lottie.loadAnimation(animData);
  anim.addEventListener('DOMLoaded', init);
</script>

