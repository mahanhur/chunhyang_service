<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<script>
  let register_form = {
    init: function() {
      $('#register_btn').addClass('disabled');
      $('#register_btn').click(function() {
        register_form.send();
      });
      $('#cust_name').keyup(function() {
        var cust_id = $('#cust_id').val();
        var cust_name = $('#cust_name').val();
        var cust_pwd = $('#cust_pwd').val();

        if (cust_id != '' && cust_name != '' && cust_pwd != '') {
          $('#register_btn').removeClass('disabled');
        }
      });

      // Enter키 이벤트 처리
      $('input').keypress(function(event) {
        if (event.keyCode === 13) {
          event.preventDefault();
          var inputs = $('input');
          var currentInput = $(this);
          var currentIndex = inputs.index(currentInput);
          var nextIndex = currentIndex + 1;

          if (nextIndex < inputs.length) {
            var nextInput = inputs[nextIndex];
            nextInput.focus();
          } else {
            register_form.send();
          }
        }
      });

      // id 4자리 이상. 중복체크
      $('#cust_id').keyup(function() {
        var txt_id = $(this).val();
        if (txt_id.length <= 3) {
          $('#check_id').html('ID는 영문소문자, 숫자 4자리 이상입니다.');
          $('#check_id').css('color', 'red');
          return;
        }
        $.ajax({
          url: '/checkid',
          data: { 'cust_id': txt_id },
          success: function(result) {
            if (result == 0) {
              $('#check_id').html('사용 가능한 ID입니다.');
              $('#check_id').css('color', 'rgb(0, 0, 255)');
              // $('#cust_pwd').focus();
            } else {
              $('#check_id').html('이미 사용 중인 ID입니다.');
              $('#check_id').css('color', 'rgb(255, 0, 0)');
            }
          }
        });
        if (event.keyCode === 13) {
          event.preventDefault();
          $('#cust_pwd').focus();
        }
      });

      // ID 입력 필드에 영어가 들어오면 무조건 소문자로 변환
      // ID에는 한글 입력 안됨
      $('#cust_id').on('input', function() {
        var value = $(this).val();
        value = value.toLowerCase();
        value = value.replace(/[ㄱ-ㅎㅏ-ㅣ가-힣]/g, '');
        $(this).val(value);
      });

      // 성별 라디오 버튼 변경 이벤트
      const maleRadio = document.getElementById("inlineRadio1");
      const femaleRadio = document.getElementById("inlineRadio2");
      const registerForm = {}; // register_form 객체

      maleRadio.addEventListener("change", function() {
        if (maleRadio.checked) {
          registerForm.gender = "1";
        }
      });
      femaleRadio.addEventListener("change", function() {
        if (femaleRadio.checked) {
          registerForm.gender = "2";
        }
      });

      // Phone, Age 입력 필드에 숫자만 입력되도록 제한
      $('#phone, #age').on('input', function() {
        var value = $(this).val();
        value = value.replace(/[^0-9]/g, ''); // 비 숫자 문자 제거
        $(this).val(value);
      });

      $('#phone').keyup(function () {
        var phone = $('#phone').val();
        if (phone.length < 10 || phone.length>=12) {
          $('#check_phone').html('올바른 휴대폰 번호를 입력하세요.');
          $('#check_phone').css('color', 'red');
          return;
        }
        $.ajax({
          url: '/checkphone',
          data: {'phone': phone},
          success: function (result) {
            if (result == 0) {
              $('#check_phone').html('사용 가능한 휴대폰번호 입니다.');
              $('#check_phone').css('color', 'rgb(0, 0, 255)');
            } else {
              $('#check_phone').html('이미 사용 중인 휴대폰번호 입니다.');
              $('#check_phone').css('color', 'rgb(255, 0, 0)');
            }
          }
        })
      });

      $('#email').keyup(function () {
        var email = $('#email').val();

        $.ajax({
          url: '/checkemail',
          data: {'email': email},
          success: function (result) {
            if (result == 0) {
              $('#check_email').html('');
              $('#check_email').css('color', 'rgb(0, 0, 255)');
            } else {
              $('#check_email').html('이미 사용 중인 이메일주소 입니다.');
              $('#check_email').css('color', 'rgb(255, 0, 0)');
            }
          }
        })
      });
    },
    send: function() {
      var cust_id = $('#cust_id').val();
      var cust_name = $('#cust_name').val();
      var cust_pwd = $('#cust_pwd').val();
      var phone = $('#phone').val();
      var age = $('#age').val();
      var email = $('#email').val();
      var gender = $('input[name="gender"]:checked').val() === '남자' ? '1' : '2';

      // Check if ID가 빨간색인 경우 전송 안됨
      if ($('#check_id').css('color') == 'rgb(255, 0, 0)') {
        $('#register_btn').addClass('disabled');
        return;
      }
      if (cust_name == '') {
        $('#cust_name').focus();
        return;
      }
      if (cust_pwd == '') {
        $('#cust_pwd').focus();
        return;
      } // 공백일 때 서버로 전송되지 않습니다
      $('#register_form').attr({
        'action':'/cust/registerimpl',
        'method':'post'
      });
      $('#register_form').submit();

      // toastr.success("회원가입이 완료되었습니다.");

    }
  };

  $(function(){
    register_form.init();
  });
</script>


<!-- BREADCRUMB -->
<nav class="py-5">
  <div class="container">
    <div class="row">
      <div class="col-12">

        <!-- Breadcrumb -->
        <ol class="breadcrumb mb-0 fs-xs text-gray-400">
          <li class="breadcrumb-item">
            <a class="text-gray-400" href="/">Home</a>
          </li>
          <li class="breadcrumb-item active">
            회원가입
          </li>
        </ol>

      </div>
    </div>
  </div>
</nav>

<!-- CONTENT -->
<section class="pt-7 pb-12">
  <div class="container">
    <div class="row">
      <div class="col-12 text-center">

        <!-- Heading -->
        <h3 class="mb-10">회원가입</h3>

      </div>
    </div>
    <div class="row">
      <div class="col-12 col-md-3">
        <!-- Nav -->
        <jsp:include page="/views/cust/login-leftnav.jsp"/>
      </div>

      <div class="col-12 col-md-9 col-lg-8 offset-lg-1">
        <!-- Form -->
        <form id="register_form">
          <div class="row">
            <div class="col-12 col-md-6">
              <!-- ID -->
              <div class="form-group">
                <label class="form-label">
                  ID *
                </label>
                <input class="form-control form-control-sm" id="cust_id" type="text" name="cust_id" placeholder="아이디를 입력하세요 *" required>
              </div>

            </div>

            <div class="col-12 col-md-6">
              <!-- PWD -->
              <div class="form-group">
                <label class="form-label">
                  PASSWORD *
                </label>
                <input class="form-control form-control-sm" id="cust_pwd" type="password" name="cust_pwd" placeholder="비밀번호를 입력하세요 *" required>
              </div>
            </div>

            <div style="font-size:12px;padding-bottom: 10px" id="check_id"></div>

            <div class="col-12 col-md-6">
              <!-- Name -->
              <div class="form-group">
                <label class="form-label" >
                  NAME *
                </label>
                <input class="form-control form-control-sm" id="cust_name" type="text" name="cust_name" placeholder="이름을 입력하세요 *" required>
              </div>
            </div>

            <div class="col-12 col-md-6">
              <!-- 성별 -->
              <div class="form-group">
                <label class="form-label mb-4">
                  성별 *
                </label>
                <br/>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="gender" id="inlineRadio1" value="1">
                  <label class="form-check-label" for="inlineRadio1">남자</label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="gender" id="inlineRadio2" value="2">
                  <label class="form-check-label" for="inlineRadio2">여자</label>
                </div>
              </div>
            </div>

            <div class="col-12 col-md-6">
              <!-- 휴대폰 -->
              <div class="form-group">
                <label class="form-label">
                  PHONE *
                </label>
                <input class="form-control form-control-sm" id="phone" type="text" name="phone" placeholder="전화번호를 입력하세요 *">
                <div style="font-size:12px;padding-bottom: 10px" id="check_phone"></div>
              </div>
            </div>

            <div class="col-12 col-md-6">
              <!-- 나이 -->
              <div class="form-group">
                <label class="form-label">
                  Age *
                </label>
                <input class="form-control form-control-sm" id="age" type="int" name="age" placeholder="나이를 입력하세요 *">
              </div>
            </div>



            <div class="col-12 col-md-12">
              <!-- 이메일 -->
              <div class="form-group">
                <label class="form-label">
                  Email Address *
                </label>
                <input class="form-control form-control-sm" id="email" type="email" name="email" placeholder="이메일을 입력하세요 *" required autofocus>
                <div style="font-size:12px;padding-bottom: 10px" id="check_email"></div>
              </div>
            </div>

            <div class="col-12">
              <!-- Button -->
              <div class="form-group">
                <button id="register_btn" type="button" class="btn btn-dark">회원가입</button>

                <a href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=0a9d14b3b112ee3f48ca206b470a2018&redirect_uri=https://40.50.160.198:8443/cust/kakao/callback">
                  <img id="kakao_register_btn" src="/uimg/kakao_register_btn.png" style="margin:0px 20px;height: 56px"/>
                </a>

              </div>
            </div>
          </div>
        </form>

      </div>
    </div>
  </div>
</section>
