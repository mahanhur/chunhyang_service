<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

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
            1:1 문의내역
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
        <h3 class="mb-10">1:1 문의</h3>

      </div>
    </div>
    <div class="row">
      <div class="col-12 col-md-3">

        <!-- Nav -->
        <jsp:include page="/views/cust/leftnav.jsp"/>

      </div>
      <div class="col-12 col-md-9 col-lg-8 offset-lg-1">

        <!-- Order -->
        <div class="card card-lg mb-5 border">
          <div class="card-body pb-0">

            <!-- Info -->
              <div class="card-body bg-light">
                <div class="mb-1" style="font-size: smaller; text-align: left">
                  운영시간(주말,공휴일 휴무) 10:00 - 18:00 점심시간 13:00 - 14:00
                  - 운영 시간 내에는 2시간 이내에 답변을 드리나, 문의가 많을 때에는 다소 지연될 수 있습니다.
                  - 실시간 채팅상담을 통한 문의 내역은 기록되지 않습니다.
                  - 확인이 필요한 경우 1:1 문의하기 또는 고객센터 전화로 문의 부탁드립니다.
                </div>
              </div>
            </br>
            <!-- Button -->
            <a class="btn btn-sm w-100 btn-outline-dark" href="/cust/account-question">
              문의하기
            </a>

          <div class="card-footer">
            <!-- Heading -->
            <h6 class="mb-7">문의내역</h6>

            <!-- Divider -->
            <hr class="my-5">

            <!-- List group -->

              <table class="table table-hover table-borderless">
                  <thead>
                  <tr>
                    <th>질  문</th>
                    <th>등록 일자</th>
                  </tr>
                  </thead>
                  <tbody>
                  <c:forEach var="obj" items="${qlist}">
                    <tr>
                      <td>${obj.qna_title}</td>
                      <td>${obj.qna_wdate}</td>
                    </tr>
                  </c:forEach>
                  </tbody>
                </table>
          </div>
            </div>

              </div>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
</section>