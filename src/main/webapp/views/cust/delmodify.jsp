<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="/assets/css/datepick.css" />

<script>
    let delmodify = {
        init: function() {
            $('.modify_btn').click( function() {
                $('.delmodify_form').attr({
                    action:'/cust/delmodifyimpl',
                    method:'post'
                });
                $('.delmodify_form').submit();
            });
        }
    };

    $(function () {
        delmodify.init();
        $.datepicker.setDefaults({
            dateFormat: 'yy-mm-dd',
            prevText: '이전 달',
            nextText: '다음 달',
            monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
            monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
            dayNames: ['일', '월', '화', '수', '목', '금', '토'],
            dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
            dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
            showMonthAfterYear: true,
            yearSuffix: '년'
        });
        $('.datepicker').datepicker({});
    });


    //다음 주소입력 api
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById("sample4_roadAddress").value = roadAddr;

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }


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
                        구독상품 배송정보 변경
                    </li>
                </ol>

            </div>
        </div>
    </div>
</nav>

<section class="pt-7 pb-12">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">

                <!-- Heading -->
                <h3 class="mb-10">구독상품 배송정보 변경</h3>

            </div>
        </div>
        <div class="row">
            <div class="col-12 col-md-3">

                <!-- Nav -->
                <jsp:include page="/views/cust/leftnav.jsp"/>

            </div>
            <div class="col-12 col-md-9 col-lg-8 offset-lg-1">

                <!-- Heading -->
                <h6 class="mb-7">
                    구독상품 배송정보 변경
                </h6>
                <hr/>

                <!-- Form -->
                <form class="delmodify_form">
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label class="form-label">구독상세 번호 *</label>
                                <input class="form-control" type="text" name="subsdetail_id" value="${obj.subsdetail_id}" readonly>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label class="form-label" >수령인</label>
                                <input class="form-control" name="receiver" type="text" value="${obj.receiver}">
                            </div>
                        </div>
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label class="form-label">수령인 전화번호</label>
                                <input class="form-control" name="receiver_phone" type="text" value="${obj.receiver_phone}">
                            </div>
                        </div>
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label class="form-label" >수령 기본주소</label>
                                <input class="form-control" id="sample4_roadAddress" name="rec_add1" type="text" value="${obj.rec_add1}">
                                <span id="guide" style="color:#999;display:none"></span>
                            </div>
                        </div>
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label class="form-label" >수령 상세주소</label>
                                <input class="form-control" id="sample4_datailAddress" name="rec_add2" type="text" value="${obj.rec_add2}">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-4">
                            <input class="form-control btn-outline-secondary" type="button" onclick="sample4_execDaumPostcode()" value="주소 변경하기">
                        </div>
                    </div><br/>
                        <div class="col-12">
                            <div class="form-group">
                                <label class="form-label" >배송메모</label>
                                <input class="form-control"  name="subs_memo" type="text" value="${obj.subs_memo}"/>
                            </div>
                        </div>
                        <div class="col-8">
                            <div class="form-group">
                                <label class="form-label" >배송예정일</label>
                                <input class="form-control datepicker" name="subs_duedate" type="text" value="<fmt:formatDate  value="${obj.subs_duedate}" pattern="yyyy-MM-dd" />">
                            </div>
                        </div>


                    <!-- Button -->
                    <button class="btn btn-dark modify_btn" id="modify_btn" type="button">
                        수정
                    </button>
                </form>
            </div>

        </div>


        </div>
</section>