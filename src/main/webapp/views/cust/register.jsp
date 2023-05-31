<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<script>

  let register_form = {
    init:function(){
      $('#register_btn').addClass('disabled');
      $('#register_btn').click(function(){
        register_form.send();
      });
      $('#cust_name').keyup(function (){
        var cust_id = $('#cust_id').val();
        var cust_name = $('#cust_name').val();
        var cust_pwd = $('#cust_pwd').val();`1`

        if(cust_id != '' && cust_name != '' && cust_pwd != ''){
          $('#register_btn').removeClass('disabled');
        }
      });

      //id 4자리 이상. 중복체크
      $('#cust_id').keyup(function (){
        var txt_id = $(this).val();
        if (txt_id.length <= 3){
          $('#check_id').html('ID는 영문소문자, 숫자 4자리이상 입니다.');
          $('#check_id').css('color','red');
          return;
        }
        $.ajax({
          url:'/checkid',
          data:{'cust_id':txt_id},
          success:function(result){
            if(result == 0){
              $('#check_id').html('사용가능한 ID입니다.');
              $('#check_id').css('color','rgb(0, 0, 255)');
              $('#cust_pwd').focus();
            }else{
              $('#check_id').html('이미 사용중인 ID입니다.');
              $('#check_id').css('color','rgb(255, 0, 0)');

            }
          }
        });
      });

      // ID 입력 필드에 영어가 들어오면 무조건 소문자로 변환
      // ID에는 한글 입력 안됨
      $('#cust_id').on('input', function(){
        var value = $(this).val();
        value = value.toLowerCase();
        value = value.replace(/[ㄱ-ㅎㅏ-ㅣ가-힣]/g, '');
        $(this).val(value);
      });


      // Phone, Age 입력 필드에 숫자만 입력되도록 제한
      $('#phone, #age').on('input', function(){
        var value = $(this).val();
        value = value.replace(/[^0-9]/g, ''); // 비 숫자 문자 제거
        $(this).val(value);
      });

    },
    send:function(){
      var cust_id = $('#cust_id').val();
      var cust_name = $('#cust_name').val();
      var cust_pwd = $('#cust_pwd').val();

      // Check if ID가 빨간색인 경우 전송 안됨
      if ($('#check_id').css('color') == 'rgb(255, 0, 0)') {
        $('#register_btn').addClass('disabled');
        return;
      }
      if(cust_name == ''){
        $('#cust_name').focus();
        return;
      }
      if(cust_pwd == ''){
        $('#cust_pwd').focus();
        return;
      } //공백일 땐 서버로 전송안된다
      $('#register_form').attr({
        'action':'/cust/registerimpl',
        'method':'post'
      });
      $('#register_form').submit();
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
            Register
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
        <h3 class="mb-10">Register</h3>

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

            <div class="col-12">
              <!-- Name -->
              <div class="form-group">
                <label class="form-label" >
                  NAME *
                </label>
                <input class="form-control form-control-sm" id="cust_name" type="text" name="cust_name" placeholder="이름을 입력하세요 *" required>
              </div>
            </div>

            <div class="col-12 col-md-6">
              <!-- Phone -->
              <div class="form-group">
                <label class="form-label">
                  PHONE *
                </label>
                <input class="form-control form-control-sm" id="phone" type="text" name="phone" placeholder="전화번호를 입력하세요 *">
              </div>
            </div>

            <div class="col-12 col-md-6">
              <!-- Phone -->
              <div class="form-group">
                <label class="form-label">
                  Age *
                </label>
                <input class="form-control form-control-sm" id="age" type="int" name="age" placeholder="나이를 입력하세요 *">
              </div>
            </div>

            <div class="col-12 col-md-12">
              <!-- Email -->
              <div class="form-group">
                <label class="form-label">
                  Email Address *
                </label>
                <input class="form-control form-control-sm" id="email" type="email" name="email" placeholder="이메일을 입력하세요 *">
              </div>
            </div>

            <div class="col-12">
              <!-- Button -->
              <div class="form-group">
                <button id="register_btn" type="button" class="btn btn-dark">회원가입</button>
              </div>
            </div>
          </div>
        </form>

      </div>
    </div>
  </div>
</section>