<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- Product -->
<div tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
    <div class="modal-content">

      <!-- Content -->
      <div class="container-fluid px-xl-0">
        <div class="row align-items-center mx-xl-0">
          <div class="col-12 col-lg-6 col-xl-5 py-4 py-xl-0 px-xl-0">

            <!-- Image -->
            <img class="img-fluid" src="/assets/img/qna.jpg" alt="...">

          </div>

          <div class="col-12 col-lg-6 col-xl-7 py-9 px-md-9">
                <div class="mb-7">
                    <span class="h5">질문제목</span></br>
                    ${gqna.qna_title}
                </div>
                <div class="mb-7">
                  <span class="h5">질문내용</span></br>
                  ${gqna.qna_contents}
                </div>
              <div class="col-12 col-lg-6 col-xl-7">
                <c:if test="${gqna.qna_image1 != null}">
                <a href="#" data-bigpicture='{ "imgSrc": "/uimg/${gqna.qna_image1}"}'>
                  <img src="/uimg/${gqna.qna_image1}" alt="..." width="50px">
                </a>
                </c:if>
                <c:if test="${gqna.qna_image2 != null}">
                <a href="#" data-bigpicture='{ "imgSrc": "/uimg/${gqna.qna_image2}"}'>
                  <img src="/uimg/${gqna.qna_image2}" alt="..." width="50px">
                </a>
                </c:if>
              </div>
            <hr>
            <br>
            <div class="mb-7">
              <span class="h5">답변</span></br>
              ${gqna.answer_contents}
            </div>
            <br>
            <!-- 만족도 조사 form -->
            <form>
              <div class="form-group">

                <!-- Label -->
                <p></p>

              </div>
              <div class="form-group">

              </div>
              <div class="form-group mb-0">
                <div class="row gx-5">
                  <div class="col-12 col-lg-auto">
                    <!-- 만족도 점수 -->
                    <select class="form-select mb-2">
                      <option value="1">1 점</option>
                      <option value="2">2 점</option>
                      <option value="3">3 점</option>
                      <option value="4">4 점</option>
                      <option value="5">5 점</option>
                    </select>
                  </div>
                  <div class="col-12 col-lg">
                    <!-- Submit -->
                    <button type="submit" class="btn w-100 btn-dark mb-2" disabled >
                      답변만족도 제출<i class="fe fe-heart ms-2"></i>
                    </button>
                  </div>
                  <!-- 채팅상담 -->
                  <a data-bs-toggle="modal" data-bs-target="#callcenter"><div class="alert alert-danger">
                    <strong> 답변이 만족스럽지 못하신가요? ☞ 1:1채팅상담 하기</strong>
                  </div></a>
                  <div class="col-12 col-lg-auto">
                  </div>
                </div>
              </div>
            </form>

          </div>
        </div>
      </div>
    </div>
  </div>
</div>

