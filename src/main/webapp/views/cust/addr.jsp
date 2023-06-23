<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<script>
    let addr = {
        init:function (){
            $('#addrdel_btn').click(function (){
                confirm("정말 해당 주소를 삭제하시겠습니까?", () => {
                    location.href
                })
            });
        },
        send:function(){
            $('#addr_form').attr({
                method:'post',
                action:'/cust/addraddimpl',
            });
            $('#addr_form').submit();
        }
    };


    $(function() {
        addradd.init();
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
                        주소지 관리
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
                <h3 class="mb-10">주소지 관리</h3>

            </div>
        </div>
        <div class="row">
            <div class="col-12 col-md-3">

                <!-- Nav -->
                <jsp:include page="/views/cust/leftnav.jsp"/>

            </div>
            <div class="col-12 col-md-9 col-lg-8 offset-lg-1">
                <div class="row">
                    <c:forEach items="${addrlist}" var="obj">
                    <div class="col-12 col-lg-6">

                        <!-- Card -->
                        <div class="card card-lg bg-light mb-8">
                            <div class="card-body">

                                <!-- Heading -->
                                <h6 class="mb-6">
                                    ${obj.addr_name}
                                </h6>

                                <!-- Text -->
                                <p class="mb-5">
                                    <strong>기본주소 :</strong> <br>
                                    <span class="text-muted">${obj.def_addr1}</span>
                                </p>                                <!-- Text -->
                                <p class="mb-5">
                                    <strong>상세주소 :</strong> <br>
                                    <span class="text-muted">${obj.def_addr2}</span>
                                </p>

                                <!-- Action -->
                                <div class="card-action card-action-end">

                                    <!-- Button -->
                                    <a class="btn btn-xs btn-circle btn-white-primary" href="/cust/addrupdate?addr_id=${obj.addr_id}">
                                        <i class="fe fe-edit-2"></i>
                                    </a>

                                    <!-- Button -->
                                    <button class="btn btn-xs btn-circle btn-white-primary addrdel_btn" type="button" onclick="if (confirm('정말 해당 주소를 삭제하시겠습니까?')) { location.href='/cust/addrdel?addr_id=${obj.addr_id}'; }")>
                                        <i class="fe fe-x"></i>
                                    </button>

                                </div>

                            </div>
                        </div>


                    </div>
                        </c:forEach>
                    <div class="col-12">

                        <!-- Button -->
                        <a class="btn w-100 btn-lg btn-outline-border" href="/cust/addradd">
                            주소 추가하기 <i class="fe fe-plus"></i>
                        </a>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>