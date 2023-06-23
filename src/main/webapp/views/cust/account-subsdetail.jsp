<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script>
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
            구독상품 배송 정보
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
        <h3 class="mb-10">구독상품 배송 정보</h3>

      </div>
    </div>
    <div class="row">
      <div class="col-12 col-md-3">

        <!-- Nav -->
        <jsp:include page="/views/cust/leftnav.jsp"/>

      </div>



      <div class="col-12 col-md-9 col-lg-8 offset-lg-1">
        <c:if test="${empty slist}">
          <jsp:include page="/views/noinformation.jsp"/>
        </c:if>
        <c:forEach items="${slist}" var="obj" varStatus="status">
          <c:forEach items="${ilist}" var="iobj">
            <c:if test="${iobj.subsitem_id == obj.subsitem_id}">

          <!-- Order -->
          <div class="card card-lg mb-5 border">
            <div class="card-body pb-0">

              <!-- Info -->
              <div class="card card-sm">
                <div class="card-body bg-light">
                  <div class="row">
                    <div class="col-6 col-lg-3">

                      <!-- Heading -->
                      <h6 class="heading-xxxs text-muted">구독번호 :</h6>

                      <!-- Text -->
                      <p class="mb-lg-0 fs-sm fw-bold psubs_id">
                          ${obj.subs_id}
                      </p>

                    </div>
                    <div class="col-6 col-lg-3">

                      <!-- Heading -->
                      <h6 class="heading-xxxs text-muted">구독 신청일 :</h6>

                      <!-- Text -->
                      <p class="mb-lg-0 fs-sm fw-bold">
                        <time datetime="2019-10-01">
                            ${obj.subs_rdate}
                        </time>
                      </p>

                    </div>
                    <div class="col-6 col-lg-3">

                      <!-- Heading -->
                      <h6 class="heading-xxxs text-muted">사용포인트 :</h6>

                      <!-- Text -->
                      <p class="mb-0 fs-sm fw-bold">
                        <fmt:formatNumber value="${obj.minus_point}" pattern="#,### pt"/>
                      </p>

                    </div>
                    <div class="col-6 col-lg-3">

                      <!-- Heading -->
                      <h6 class="heading-xxxs text-muted">결제금액 :</h6>

                      <!-- Text -->
                      <p class="mb-0 fs-sm fw-bold">
                        <fmt:formatNumber value="${obj.subs_pay_amount}" pattern="#,###원"/>
                      </p>

                    </div>
                  </div>
                </div>
              </div>

            </div>
            <div class="card-footer">

              <!-- Heading -->
              <h6 class="mb-7">구독 건별 세부정보</h6>
              <h6 class="heading-xxs text-muted">ㅇ 수정 버튼 클릭 시 건별 배달일자 및 배달정보를 수정하실 수 있습니다.</h6>
              <form action="http://info.sweettracker.co.kr/tracking/4" method="post">
                <div class="form-group">
                  <input type="hidden" class="form-control" id="t_key" name="t_key" value="dctplXlVqmOW07OrDvmRTg">
                </div>
                <div class="form-group">
                  <input type="hidden" class="form-control" name="t_code" id="t_code" value="04"> <!--택배사 04대한통운 01우체국-->
                </div>
                <div class="form-group">
                  <input type="hidden" class="form-control" name="t_invoice" id="t_invoice" value="655649541321"> <!--운송장번호입력-->
                </div>
                <h6 class="heading-xxs text-muted">ㅇ 현재 배송중인 꽃 배송 확인</h6>
                <button type="submit" class="btn btn-success btn-xxs">조회하기</button>
              </form>

              <!-- Divider -->
              <hr class="my-5">
              <form class="modify_form">
              <table class="table table-bordered table-lg">
                <colgroup>
                  <col width="18%" />
                  <col width="15%" />
                  <col width="23%" />
                  <col width="25%" />
                  <col width="20%" />
                </colgroup>
                <thead>
                <tr>
                  <th>상품명</th>
                  <th>No</th>
                  <th>배송상태</th>
                  <th>배송일</th>
                  <th>수정</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${dlist}" var="subsdetailList">
                <c:forEach items="${subsdetailList}" var="dobj">
                  <c:if test="${obj.subs_id == dobj.subs_id}">
                    <c:forEach items="${dellist}" var="delobj">
                      <c:if test="${dobj.subsdetail_id == delobj.subsdetail_id}">
                    <tr>
                      <td>${iobj.subsitem_name}</td>
                      <td class="subsdetail_idtd">${dobj.subsdetail_id}</td>
                      <td>
                          ${delobj.del_state}
                      </td>
                      <td><fmt:formatDate  value="${dobj.subs_duedate}" pattern="yyyy-MM-dd" /></td>
                      <td>
                        <c:choose>
                          <c:when  test="${delobj.del_state == '배송대기'}">
                           <a href="/cust/delmodify?subsdetail_id=${dobj.subsdetail_id}" class="btn btn-outline-dark modify_btn">수정</a>
                          </c:when>
                          <c:otherwise>
                            <span style="color:red;">수정불가</span>
                          </c:otherwise>
                        </c:choose>
                      </td>
                    </tr>
                      </c:if>
                    </c:forEach>
                  </c:if>
                </c:forEach>
                </c:forEach>
                </tbody>
              </table>
              </form>
            </div>

          </div>
          <br/>
          </c:if>
          </c:forEach>
        </c:forEach>
      </div>
    </div>
  </div>
</section>