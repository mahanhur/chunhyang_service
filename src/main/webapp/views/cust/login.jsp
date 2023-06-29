<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<script>
  let login_form = {
    init:function (){
      $('#login_btn').click(function (){
        login_form.send();
      });
    },
    send:function () {
      $('#login_form').attr({
        'action':'/cust/loginimpl',
        'method':'post'
      });
      $('#login_form').submit();
    }
  };

  $(function (){
    login_form.init();
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
            Login
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
        <h3 class="mb-10">Login</h3>

      </div>
    </div>
    <div class="row">
      <div class="col-12 col-md-3">
        <!-- Nav -->
        <jsp:include page="/views/cust/login-leftnav.jsp"/>
      </div>


      <div class="col-12 col-md-9 col-lg-8 offset-lg-1">

        <!-- Form -->
        <form id="login_form">
          <div class="row" >
            <div class="col-12 col-md-12">
              <!-- ID -->
              <div class="form-group">
                <label class="form-label" for="cust_id">
                  ID *
                </label>
                <input class="form-control form-control-sm" id="cust_id" name="cust_id" type="text" placeholder="아이디를 입력하세요 *" required>
              </div>
            </div>

            <div class="col-12 col-md-12" >
              <!-- PWD -->
              <div class="form-group">
                <label class="form-label" for="cust_pwd">
                  PASSWORD *
                </label>
                <input class="form-control form-control-sm" id="cust_pwd" name="cust_pwd" type="password" placeholder="비밀번호를 입력하세요 *" required>
              </div>

            </div>

            <div class="col-12">

              <!-- Button -->
              <button class="btn btn-dark" id="login_btn" type="button" >로그인</button>

              <a href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=0a9d14b3b112ee3f48ca206b470a2018&redirect_uri=https://40.50.160.198:8443/cust/kakao/callback">
                <img id="kakao_login_btn" src="/uimg/kakao_login_btn.png" style="margin:0px 20px;height: 56px"/>
              </a>

              <a class="btn btn-outline-border" id="register_btn" type="button" href="/cust/register">회원가입</a>
            </div>
          </div>
        </form>

      </div>
    </div>
  </div>
</section>
