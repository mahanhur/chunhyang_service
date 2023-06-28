<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" integrity="sha512-3pIirOrwegjM6erE5gPSwkUzO+3cTjpnV9lexlNZqvupR64iZBnOOTiiLPb9M36zpMScbmUNIcHUqKD47M719g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script>
  $(function(){
      toastr.success("회원가입이 완료되었습니다😍😍😍");
  })
</script>

    <!-- CONTENT -->
    <section class="py-12">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-12 col-md-10 col-lg-8 col-xl-6 text-center">

            <!-- Icon -->
            <img src="/uimg/icon_flower.png" style="width:30%;">
            <br/>
            <br/>

            <!-- Heading -->
            <h2 class="mb-5">회원가입이 완료되었습니다!</h2>
            <!-- Text -->
            <p class="mb-7 text-gray-500">
              봄의 향기를 전달하는 <span style="font-weight: bold; color:mediumvioletred">춘향전</span>의 회원이 되신것을 환영합니다!
            </p>

            <!-- Button -->
            <a class="btn btn-dark" href="/">
              메인으로 이동
            </a>

          </div>
        </div>
      </div>
    </section>
