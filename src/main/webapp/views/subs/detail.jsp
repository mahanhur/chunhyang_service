<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<link rel="stylesheet" href="/assets/css/datepick.css" />

<script>

  let subsdetail = {
    init: () => {
    }
  }


  $(function () {
    subsdetail.init();
    $('.datepicker').datepicker( ()=> {
      format: 'yyyy-MM-dd'
    });
  });
</script>


    <!-- PRODUCT -->
    <section>
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="row">

              <div class="col-12 col-md-6">
                <!-- Image -->
                <a class="d-block mb-4" href="#" data-bigpicture='{ "imgSrc": "assets/img/products/product-157.jpg"}'>
                  <img class="img-fluid" src="/uimg/${obj.subsitem_img}" alt="...">
                </a>

                <!-- Image -->
                <a class="d-block mb-4" href="#" data-bigpicture='{ "imgSrc": "assets/img/products/product-158.jpg"}'>
                  <img class="img-fluid" src="/uimg/${obj.subsitem_img}" alt="...">
                </a>

                <!-- Image -->
                <a class="d-block" href="#" data-bigpicture='{ "imgSrc": "assets/img/products/product-159.jpg"}'>
                  <img class="img-fluid" src="/uimg/${obj.subsitem_img}" alt="...">
                </a>
              </div>

              <div class="col-12 col-md-6 ps-lg-10">
                <div class="position-sticky" style="top: 62px;">

                  <!-- Header -->
                  <div class="row mb-1">
                    <div class="col">

                      <!-- Preheading -->
                      <a class="text-muted" href="/subs/all">목록으로</a>

                    </div>
                  </div>

                  <!-- Heading -->
                  <h3 class="mb-2">춘향전, ${obj.subsitem_name}</h3>

                  <!-- Price -->
                  <div class="mb-7">
                    <span class="ms-1 fs-5 fw-bolder"><fmt:formatNumber value="${obj.subsitem_price}" pattern="#,###원"/></span>
                  </div>

                  <!-- Form -->
                  <form class="mb-9">
                    <div class="form-group">

                      <!-- Label -->
                      <p class="mb-5">
                        <strong id="colorCaption">${obj.subsitem_content}</strong>
                      </p>
                      <hr/>


                      <!-- Text -->
                      <p>캘린더들어갈자리
                      </p>
                      <input type="text" class="datepicker subs_duedate" name="subs_duedate" inline/>
                    </div>


                    <div class="form-group">

                      <div class="row gx-5 mb-7">
                        <div class="col-12 col-lg-auto">
                        </div>
                        <div class="col-12 col-lg">

                          <div class="card mb-7 bg-light">
                            <div class="card-body">
                              <ul class="list-group list-group-sm list-group-flush-y list-group-flush-x">
                                <li class="list-group-item d-flex">
                                  <span>결제금액</span> <span class="ms-auto fs-sm"><fmt:formatNumber value="${obj.subsitem_price}" pattern="#,###원"/></span>
                                </li>
                                <li class="list-group-item d-flex">
                                  <span>배송횟수</span> <span class="ms-auto fs-sm">${obj.subsitem_cnt}</span>
                                </li>
                                <li class="list-group-item d-flex fs-lg fw-bold">
                                  <span>1회당 금액</span> <span class="ms-auto fs-sm"><fmt:formatNumber value="${obj.subsitem_price/obj.subsitem_cnt}" pattern="#,###원"/></span>
                                </li>
                              </ul>
                            </div>
                          </div>


                          <!-- Submit -->
                          <button type="submit" class="btn w-100 btn-dark mb-2">
                            구독 신청 <i class="fe fe-shopping-cart ms-2"></i>
                          </button>

                        </div>
                        <div class="col-12 col-lg-auto">
                        </div>
                      </div>

                    </div>
                  </form>

                  <!-- Description -->
                  <div class="list-group list-group-sm list-group-flush-x" id="productCollapseParent">
                    <div class="list-group-item">

                      <!-- Toggle -->
                      <a class="d-block dropdown-toggle text-body" data-bs-toggle="collapse" href="#productCollapseDetails">
                        <strong>확인 부탁드려요!</strong>
                      </a>

                      <!-- Collapse -->
                      <div class="collapse" id="productCollapseDetails" data-bs-parent="#productCollapseParent">
                        <div class="pt-5 fs-sm text-gray-500">

                          <!-- Text -->


                          <!-- List -->
                          <ul class="list-unstyled mb-0">
                            <li class="text-gray-400">- 공휴일에 배송되는 정기구독 상품은 자동적으로 2주 뒤로 조정됩니다.</li>
                            <li class="text-gray-300">(공휴일 기준: 설 명절, 추석 명절을 포함한 모든 법정 공휴일)</li>
                            <li class="text-gray-400">- 택배사의 물량이 많은 설, 추석 주간에는 춘향전의 배송일이 구매시에 자동 변경지정 됩니다. 변경된 날짜는 [마이페이지-정기구독] 탭에서 확인 가능합니다.</li>
                            <li class="text-gray-400">- -9ºC 이하의 날씨에는 꽃의 냉해 방지를 위해 배송이 미뤄질 수 있습니다.</li>
                            <li class="text-gray-400">- 택배 배송 특성상 정확한 배송 시간 안내와 배송 시간 조정이 어렵습니다.</li>
                            <li class="text-gray-400">- 춘향전은 더 온전한 상태의 꽃이 배송 되기 위해 기온에 따라서 갑작스럽게 배송일이 변경 될 수 있다는 점 양해 부탁드립니다.</li>
                          </ul>

                        </div>
                      </div>

                    </div>
                    <div class="list-group-item">

                      <!-- Toggle -->
                      <a class="d-block dropdown-toggle text-body" data-bs-toggle="collapse" href="#productCollapseSize">
                        <strong>Size & Fit</strong>
                      </a>

                      <!-- Collapse -->
                      <div class="collapse" id="productCollapseSize" data-bs-parent="#productCollapseParent">
                        <div class="pt-5 fs-sm">

                          <!-- Heading -->
                          <p class="text--body">
                            <strong>Fitting information:</strong>
                          </p>

                          <!-- List -->
                          <ul>
                            <li>
                              Upon seas hath every years have whose subdue creeping
                              they're it were.
                            </li>
                            <li>
                              Make great day bearing.
                            </li>
                            <li>
                              For the moveth is days don't said days.
                            </li>
                          </ul>

                          <!-- Heading -->
                          <p class="text-body">
                            <strong>Model measurements:</strong>
                          </p>

                          <!-- List -->
                          <ul class="list-unstyled">
                            <li>Height: 1.80 m</li>
                            <li>Bust/Chest: 89 cm</li>
                            <li>Hips: 91 cm</li>
                            <li>Waist: 65 cm</li>
                            <li>Model size: M</li>
                          </ul>

                          <!-- Size chart -->
                          <p class="mb-0">
                            <img src="assets/img/icons/icon-ruler.svg" alt="..." class="img-fluid"> <a class="text-reset text-decoration-underline ms-3" data-bs-toggle="modal" href="#modalSizeChart">Size chart</a>
                          </p>

                        </div>
                      </div>

                    </div>
                    <div class="list-group-item">

                      <!-- Toggle -->
                      <a class="d-block dropdown-toggle text-body" data-bs-toggle="collapse" href="#productCollapseShipping">
                        <strong>Shipping & Returns</strong>
                      </a>

                      <!-- Collapse -->
                      <div class="collapse" id="productCollapseShipping" data-bs-parent="#productCollapseParent">
                        <div class="pt-5 fs-sm text-gray-500">

                          <!-- Table -->
                          <div class="table-responsive">
                            <table class="table table-bordered table-sm table-hover">
                              <thead>
                                <tr>
                                  <th>Shipping Options</th>
                                  <th>Delivery Time</th>
                                  <th>Price</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td>Standard Shipping</td>
                                  <td>Delivery in 5 - 7 working days</td>
                                  <td>$8.00</td>
                                </tr>
                                <tr>
                                  <td>Express Shipping</td>
                                  <td>Delivery in 3 - 5 working days</td>
                                  <td>$12.00</td>
                                </tr>
                                <tr>
                                  <td>1 - 2 day Shipping</td>
                                  <td>Delivery in 1 - 2 working days</td>
                                  <td>$12.00</td>
                                </tr>
                                <tr>
                                  <td>Free Shipping</td>
                                  <td>
                                    Living won't the He one every subdue meat replenish
                                    face was you morning firmament darkness.
                                  </td>
                                  <td>$0.00</td>
                                </tr>
                              </tbody>
                            </table>
                          </div>

                          <!-- Caption -->
                          <p class="mb-0 text-gray-500">
                            May, life blessed night so creature likeness their, for. <a class="text-body text-decoration-underline" href="#!">Find out more</a>
                          </p>

                        </div>
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

    <!-- PRODUCTS -->
    <section class="pt-11">
      <div class="container">
        <div class="row">
          <div class="col-12">

            <!-- Heading -->
            <h4 class="mb-10 text-center">춘향전의 꽃, 이렇게 준비됩니다.</h4>

            <p>쏼라쏼라</p>
            <p>이미지도 들어가주고</p>
            <p>공통된 내용</p>
            <img src="/uimg/subs02.jpg">

          </div>
        </div>
      </div>
    </section>

