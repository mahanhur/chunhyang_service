<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script>
  let point = {
    init: function() {
      let presentpoint = 0;
      presentpoint = $('.tbody tr:first .presentpoint').html();
      if(presentpoint == undefined) {
        presentpoint = 0;
      }
      $('.present').html('　　ㅇ 고객님의 현재 보유 포인트 : ' + presentpoint);
    }
  }

  $(function() {
    point.init();
  })
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
            포인트 내역
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
      <div class="col-12">
        <!-- Heading -->
        <h3 class="mb-10" style="margin-left: 400px">포인트 내역</h3>

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
                <div class="mb-1" style="font-size: medium; text-align: left">
                  💐💐 포인트 적립/사용 내역을 확인하실 수 있습니다.
                </div>
                <div class="mb-1 present" style="font-size: smaller; text-align: left;color:gray">
                  　　ㅇ 고객님의 현재 보유 포인트 : 0
                </div>
              </div>

          <div class="card-footer">
            <!-- Heading -->
            <h6 class="mb-1">포인트 내역</h6>
            <!-- Divider -->
            <hr class="my-5">
            <!-- table -->
              <table class="table table-hover table-borderless">
                  <thead>
                  <tr>
                    <th>일자</th>
                    <th>포인트 적립</th>
                    <th>포인트 사용</th>
                    <th>누적포인트</th>
                  </tr>
                  </thead>
                  <tbody class="tbody">
                  <c:forEach var="obj" items="${plist}" varStatus="status">
                    <tr>
                      <td><fmt:formatDate  value="${obj.point_rdate}" pattern="yyyy-MM-dd" /></td>
                      <td>${obj.plus_point}</td>
                      <td>${obj.minus_point}</td>
                      <td class="presentpoint">${obj.point}</td>
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
</section>