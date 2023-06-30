<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
      <div class="col-12">
        <!-- Heading -->
        <h3 class="mb-10" style="margin-left: 400px">1:1 문의</h3>

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
                  운영시간(주말,공휴일 휴무) 10:00 - 18:00 점심시간 13:00 - 14:00<br>
                  - 운영 시간 내에는 2시간 이내에 답변을 드리나, 문의가 많을 때에는 다소 지연될 수 있습니다.<br>
                  - 실시간 채팅상담을 통한 문의 내역은 기록되지 않습니다.<br>
                  - 확인이 필요한 경우 1:1 문의하기 또는 고객센터 전화로 문의 부탁드립니다.<br>
                </div>
              </div>
            </br>
            <!-- Button -->
            <a class="btn btn-sm w-100 btn-outline-dark" href="/cust/account-question?cust_id=${logincust.cust_id}">
              문의하기
            </a>

          <div class="card-footer">
            <!-- Heading -->
            <h6 class="mb-1">문의내역</h6>
            <!-- Divider -->
            <hr class="my-5">
            <!-- table -->
              <table class="table table-hover table-borderless">
                  <thead>
                  <tr>
                    <th>질  문</th>
                    <th>등록 일자</th>
                    <th>답변여부</th>
                  </tr>
                  </thead>
                  <tbody>
                  <c:forEach var="obj" items="${qlist}">
                    <tr>
                      <td><a href="/cust/account-qnadetail?qna_id=${obj.qna_id}" style="color: black">${obj.qna_title}</a></td>
                      <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${obj.qna_wdate}"/></td>
                      <td><a href="/cust/account-qnadetail?qna_id=${obj.qna_id}">
                        <c:if test="${!empty obj.answer_id}">답변완료</c:if>
                          </a>
                      </td>
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

<%--이하 모달 디테일 조회를 모달로 하려고했으나...그냥...새창으로 함-------%>
<!-- Product -->
<%--
<div class="modal fade" id="modalQnA" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
    <div class="modal-content">

      <!-- Close -->
      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
        <i class="fe fe-x" aria-hidden="true"></i>
      </button>

      <!-- Content -->
      <div class="container-fluid px-xl-0">
        <div class="row align-items-center mx-xl-0">
          <div class="col-12 col-lg-6 col-xl-5 py-4 py-xl-0 px-xl-0">

            <!-- Image -->
            <img class="img-fluid" src="/assets/img/products/product-7.jpg" alt="...">

            <!-- Button -->
            <a class="btn btn-sm w-100 btn-primary" href="#">
            </a>

          </div>
          <div class="col-12 col-lg-6 col-xl-7 py-9 px-md-9">

            <!-- Heading -->
            <h4 class="mb-3">1:1문의 답변</h4>

            <!-- Price -->
            <div class="mb-7">
                <span class="h5">질문내용</span>
                <textarea>${gqna.qna_title}</textarea>

            </div>

            <!-- Form -->
            <form>
              <div class="form-group">

                <!-- Label -->
                <p>
                  Color: <strong id="modalProductColorCaption">White</strong>
                </p>

                <!-- Radio -->
                <div class="mb-8 ms-n1">
                  <div class="form-check form-check-inline form-check-img">
                    <input type="radio" class="form-check-input" id="modalProductColorOne" name="modalProductColor" data-toggle="form-caption" data-target="#modalProductColorCaption" value="White" style="background-image: url(/assets/img/products/product-7.jpg);" checked>
                  </div>
                  <div class="form-check form-check-inline form-check-img">
                    <input type="radio" class="form-check-input" id="modalProductColorTwo" name="modalProductColor" data-toggle="form-caption" data-target="#modalProductColorCaption" value="Black" style="background-image: url(/assets/img/products/product-49.jpg);">
                  </div>
                </div>

              </div>
              <div class="form-group">

                <!-- Label -->
                <p>
                  Size: <strong><span id="modalProductSizeCaption">7.5</span> US</strong>
                </p>

                <!-- Radio -->
                <div class="mb-2">
                  <div class="form-check form-check-inline form-check-size mb-2">
                    <input type="radio" class="form-check-input" name="modalProductSize" id="modalProductSizeOne" value="6" data-toggle="form-caption" data-target="#modalProductSizeCaption">
                    <label class="form-check-label" for="modalProductSizeOne">6</label>
                  </div>
                  <div class="form-check form-check-inline form-check-size mb-2">
                    <input type="radio" class="form-check-input" name="modalProductSize" id="modalProductSizeTwo" value="6.5" data-toggle="form-caption" data-target="#modalProductSizeCaption" disabled>
                    <label class="form-check-label" for="modalProductSizeTwo">6.5</label>
                  </div>
                  <div class="form-check form-check-inline form-check-size mb-2">
                    <input type="radio" class="form-check-input" name="modalProductSize" id="modalProductSizeThree" value="7" data-toggle="form-caption" data-target="#modalProductSizeCaption">
                    <label class="form-check-label" for="modalProductSizeThree">7</label>
                  </div>
                  <div class="form-check form-check-inline form-check-size mb-2">
                    <input type="radio" class="form-check-input" name="modalProductSize" id="modalProductSizeFour" value="7.5" data-toggle="form-caption" data-target="#modalProductSizeCaption" checked>
                    <label class="form-check-label" for="modalProductSizeFour">7.5</label>
                  </div>
                  <div class="form-check form-check-inline form-check-size mb-2">
                    <input type="radio" class="form-check-input" name="modalProductSize" id="modalProductSizeFive" value="8" data-toggle="form-caption" data-target="#modalProductSizeCaption">
                    <label class="form-check-label" for="modalProductSizeFive">8</label>
                  </div>
                  <div class="form-check form-check-inline form-check-size mb-2">
                    <input type="radio" class="form-check-input" name="modalProductSize" id="modalProductSizeSix" value="8.5" data-toggle="form-caption" data-target="#modalProductSizeCaption">
                    <label class="form-check-label" for="modalProductSizeSix">8.5</label>
                  </div>
                  <div class="form-check form-check-inline form-check-size mb-2">
                    <input type="radio" class="form-check-input" name="modalProductSize" id="modalProductSizeSeven" value="9" data-toggle="form-caption" data-target="#modalProductSizeCaption" disabled>
                    <label class="form-check-label" for="modalProductSizeSeven">9</label>
                  </div>
                  <div class="form-check form-check-inline form-check-size mb-2">
                    <input type="radio" class="form-check-input" name="modalProductSize" id="modalProductSizeEight" value="9.5" data-toggle="form-caption" data-target="#modalProductSizeCaption" disabled>
                    <label class="form-check-label" for="modalProductSizeEight">9.5</label>
                  </div>
                  <div class="form-check form-check-inline form-check-size mb-2">
                    <input type="radio" class="form-check-input" name="modalProductSize" id="modalProductSizeNine" value="10" data-toggle="form-caption" data-target="#modalProductSizeCaption">
                    <label class="form-check-label" for="modalProductSizeNine">10</label>
                  </div>
                  <div class="form-check form-check-inline form-check-size mb-2">
                    <input type="radio" class="form-check-input" name="modalProductSize" id="modalProductSizeTen" value="10.5" data-toggle="form-caption" data-target="#modalProductSizeCaption">
                    <label class="form-check-label" for="modalProductSizeTen">10.5</label>
                  </div>
                  <div class="form-check form-check-inline form-check-size mb-2">
                    <input type="radio" class="form-check-input" name="modalProductSize" id="modalProductSizeEleven" value="11" data-toggle="form-caption" data-target="#modalProductSizeCaption">
                    <label class="form-check-label" for="modalProductSizeEleven">11</label>
                  </div>
                  <div class="form-check form-check-inline form-check-size mb-2">
                    <input type="radio" class="form-check-input" name="modalProductSize" id="modalProductSizeTwelve" value="12" data-toggle="form-caption" data-target="#modalProductSizeCaption">
                    <label class="form-check-label" for="modalProductSizeTwelve">12</label>
                  </div>
                  <div class="form-check form-check-inline form-check-size mb-2">
                    <input type="radio" class="form-check-input" name="modalProductSize" id="modalProductSizeThirteen" value="13" data-toggle="form-caption" data-target="#modalProductSizeCaption">
                    <label class="form-check-label" for="modalProductSizeThirteen">13</label>
                  </div>
                  <div class="form-check form-check-inline form-check-size mb-2">
                    <input type="radio" class="form-check-input" name="modalProductSize" id="modalProductSizeFourteen" value="14" data-toggle="form-caption" data-target="#modalProductSizeCaption">
                    <label class="form-check-label" for="modalProductSizeFourteen">14</label>
                  </div>
                </div>

              </div>
              <div class="form-group mb-0">
                <div class="row gx-5">
                  <div class="col-12 col-lg-auto">

                    <!-- Quantity -->
                    <select class="form-select mb-2">
                      <option value="1" selected>1</option>
                      <option value="2">2</option>
                      <option value="3">3</option>
                      <option value="4">4</option>
                      <option value="5">5</option>
                    </select>

                  </div>
                  <div class="col-12 col-lg">

                    <!-- Submit -->
                    <button type="submit" class="btn w-100 btn-dark mb-2">
                      Add to Cart <i class="fe fe-shopping-cart ms-2"></i>
                    </button>

                  </div>
                  <div class="col-12 col-lg-auto">

                    <!-- Wishlist -->
                    <button class="btn btn-outline-dark w-100 mb-2" data-toggle="button">
                      Wishlist <i class="fe fe-heart ms-2"></i>
                    </button>

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
--%>
