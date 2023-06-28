<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>

  let personalinfo_form = {
    init:function(){
      $('#personalinfo_btn').click(function(){
        personalinfo_form.send();
      });

      // Phone, Age 입력 필드에 숫자만 입력되도록 제한
      $('#phone, #age').on('input', function() {
        var value = $(this).val();
        value = value.replace(/[^0-9]/g, ''); // 비 숫자 문자 제거
        $(this).val(value);
      });

    },
    send:function(){
      var cust_id = $('#cust_id').val();
      var cust_name = $('#cust_name').val();
      var cust_pwd = $('#cust_pwd').val();
      var phone = $('#phone').val();
      var age = $('#age').val();
      var email = $('#email').val();


      //공백일 땐 서버로 전송안된다
      if(cust_name == ''){
        $('#cust_name').focus();
        return;
      }

      if(cust_pwd == ''){
        $('#cust_pwd').focus();
        return;
      }

      $('#personalinfo_form').attr({
        'action':'/cust/personalinfoimpl',
        'method':'post'
      });
      $('#custinfo_form').submit();
    }
  };

  $(function(){
    personalinfo_form.init();
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
            나의 정보 수정
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
        <h3 class="mb-10">나의 정보 수정</h3>

      </div>
    </div>
    <div class="row">
      <div class="col-12 col-md-3">

        <!-- Nav -->
        <jsp:include page="/views/cust/leftnav.jsp"/>

      </div>
      <div class="col-12 col-md-9 col-lg-8 offset-lg-1">

        <!-- Form -->
        <form>
          <div class="row">
            <div class="col-12 col-md-6" id="personalinfo_form">
              <!-- ID -->
              <div class="form-group">
                <label class="form-label" for="cust_id">
                  ID *
                </label>
                <input class="form-control form-control-sm" id="cust_id" type="text" name="cust_id"  value="${personalinfo.cust_id}" readonly>
              </div>
            </div>

            <div class="col-12 col-md-6">
              <!-- PWD -->
              <div class="form-group">
                <label class="form-label" for="cust_pwd">
                  PASSWORD *
                </label>
                <input class="form-control form-control-sm" id="cust_pwd" type="password" name="cust_pwd" >
              </div>
            </div>

            <div class="col-12">
              <!-- Name -->
              <div class="form-group">
                <label class="form-label" for="cust_name">
                  NAME *
                </label>
                <input class="form-control form-control-sm" id="cust_name" type="text" name="cust_name" value="${personalinfo.cust_name}" >
              </div>
            </div>

            <div class="col-12 col-md-6">
              <!-- Phone -->
              <div class="form-group">
                <label class="form-label" for="phone">
                  PHONE *
                </label>
                <input class="form-control form-control-sm" id="phone" type="text" name="phone" value="${personalinfo.phone}">
              </div>
            </div>

            <div class="col-12 col-md-6">
              <!-- Phone -->
              <div class="form-group">
                <label class="form-label" for="age">
                  Age *
                </label>
                <input class="form-control form-control-sm" id="age" type="number" name="age"  value="${personalinfo.age}">
              </div>
            </div>

            <div class="col-12 col-md-12">
              <!-- Email -->
              <div class="form-group">
                <label class="form-label" for="email">
                  Email Address *
                </label>
                <input class="form-control form-control-sm" id="email" type="email" name="email" value="${personalinfo.email}">
              </div>
            </div>

            <div class="col-12">
              <!-- Button -->
              <div class="form-group">
                <button id="personalinfo_btn" type="button" class="btn btn-dark">정보수정</button>
              </div>
            </div>

          </div>
        </form>
      </div>
    </div>
  </div>
</section>