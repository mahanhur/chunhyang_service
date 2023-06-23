<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="mb-10 mb-md-0">
  <div class="list-group list-group-sm list-group-strong list-group-flush-x">
    <a class="list-group-item list-group-item-action dropend-toggle active" href="/order/all?cust_id=${logincust.cust_id}">
      주문 정보
    </a>
    <a class="list-group-item list-group-item-action dropend-toggle" href="/cust/account-subsinfo?cust_id=${logincust.cust_id}">
      구독신청 정보
    </a>
    <a class="list-group-item list-group-item-action dropend-toggle" href="/cust/account-subsdetail?cust_id=${logincust.cust_id}">
      구독상품 배송 정보
    </a>

    <a class="list-group-item list-group-item-action dropend-toggle " href="/cust/personalinfo?cust_id=${logincust.cust_id}">
      나의 정보 수정
    </a>
    <a class="list-group-item list-group-item-action dropend-toggle " href="/cust/addr">
      주소지 관리
    </a>
    <a class="list-group-item list-group-item-action dropend-toggle " href="/cust/point">
      포인트 내역
    </a>
    <a class="list-group-item list-group-item-action dropend-toggle " href="/cust/account-qna?cust_id=${logincust.cust_id}">
      1:1 문의
    </a>
    <a class="list-group-item list-group-item-action dropend-toggle" href="/cust/logout">
      로그아웃
    </a>
  </div>
</nav>