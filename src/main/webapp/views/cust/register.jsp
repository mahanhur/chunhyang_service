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
      $('#cust_id').keyup(function (){
        var txt_id = $(this).val();
        if (txt_id.length <= 3){
          return;
        }
        $.ajax({
          url:'/checkid',
          data:{'id':txt_id},
          success:function(result){
            if(result == 0){
              $('#check_cust_id').text('사용가능한 ID입니다.');
              $('#cust_pwd').focus();
            }else{
              $('#check_id').text('이미 사용중인 ID입니다.');
            }
          }
        });
      });

    },
    send:function(){
      var cust_id = $('#cust_id').val();
      var cust_name = $('#cust_name').val();
      var cust_pwd = $('#cust_pwd').val();
      if(cust_id.length <=  3){
        $('#check_cust_id').text('4자리 이상이어야 합니다.');
        $('#cust_id').focus();
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
                <input class="form-control form-control-sm" id="phone" type="text" name="phone" placeholder="전화번호를 숫자로만 입력하세요 *">
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
