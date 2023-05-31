<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
  let addquestion = {
    init:function(){
      $('#question_btn').click(function(){
        addquestion.send();
      });

    },
    send:function(){
      var post_type = $('#post_type').val();
      var qna_title = $('#qna_title').val();
      var qna_contents = $('#qna_contents').val();

      //공백일 땐 서버로 전송안된다
      if(post_type == ''){
        $('#post_type').focus();
        return;
      }
      if(qna_title == ''){
        $('#qna_title').focus();
        return;
      }
      if(qna_contents == ''){
        $('#qna_contents').focus();
        return;
      }

      $('#question_form').attr({
        method:'post',
        action:'/cust/account-addquestion',
        enctype:'multipart/form-data'
      });
      $('#question_form').submit();
    }
  };

  $(function(){
    addquestion.init();
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
            My Account
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
        <h6 class="mb-10">1:1문의 작성하기</h6>

      </div>
    </div>
    <div class="row">
      <div class="col-12 col-md-3">

        <!-- Nav -->
        <jsp:include page="/views/cust/leftnav.jsp"/>

      </div>
      <div class="col-12 col-md-9 col-lg-8 offset-lg-1">

        <!-- Form -->
        <form  id="question_form">
          <input id="cust_id" type="hidden" name="cust_id" value="${logincust.cust_id}">
          <div class="row">

            <div class="col-12 col-md-6">
              <!-- 문의타입 -->
              <div class="form-group">
                <label class="form-label" for="post_type">
                  문의내용 *
                </label>
                <input class="form-control form-control-sm" id="post_type" type="text" name="post_type">
              </div>
            </div>

            <div class="col-12 col-md-6">
              <!-- 상품번호 -->
              <div class="form-group">
                <label class="form-label" for="subsitem_id">
                  문의상품(번호)
                </label>
                <input class="form-control form-control-sm" id="subsitem_id" type="text" name="subsitem_id" >
              </div>
            </div>

            <div class="col-12">
              <!-- 제목 -->
              <div class="form-group">
                <label class="form-label" for="qna_title">
                  제  목 *
                </label>
                <input class="form-control form-control-sm" id="qna_title" type="text" name="qna_title">
              </div>
            </div>

            <div class="col-12 col-md-12">
              <!-- 내용 -->
              <div class="form-group">
                <label class="form-label" for="qna_contents">
                  문의내용 *
                </label>
                <textarea class="form-control" id="qna_contents" type="text" name="qna_contents">
                </textarea>
              </div>
            </div>

            <div class="col-12 col-md-6">
              <!-- 파일1 -->
              <div class="form-group">
                <label class="form-label" for="img1">
                  사진1 *
                </label>
                <input class="form-control form-control-sm" id="img1" type="file" name="img1">
              </div>
            </div>

            <div class="col-12 col-md-6">
              <!-- 파일2 -->
              <div class="form-group">
                <label class="form-label" for="img2">
                  사진1 *
                </label>
                <input class="form-control form-control-sm" id="img2" type="file" name="img2">
              </div>
            </div>

            <div class="col-12">
              <!-- Button -->
              <div class="form-group">
                <button id="question_btn" type="button" class="btn btn-dark">등 록</button>
              </div>
            </div>

          </div>
        </form>
      </div>
    </div>
  </div>
</section>