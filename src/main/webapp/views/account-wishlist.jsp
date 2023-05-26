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
        <h3 class="mb-10">My Account</h3>

      </div>
    </div>
    <div class="row">
      <div class="col-12 col-md-3">

        <!-- Nav -->
        <nav class="mb-10 mb-md-0">
          <div class="list-group list-group-sm list-group-strong list-group-flush-x">
            <a class="list-group-item list-group-item-action dropend-toggle " href="/account-orders">
              Orders
            </a>
            <a class="list-group-item list-group-item-action dropend-toggle active" href="/account-wishlist">
              Wishlist
            </a>
            <a class="list-group-item list-group-item-action dropend-toggle " href="/account-personal-info">
              Personal Info
            </a>
            <a class="list-group-item list-group-item-action dropend-toggle " href="/account-address">
              Addresses
            </a>
            <a class="list-group-item list-group-item-action dropend-toggle " href="account-payment.html">
              Payment Methods
            </a>
            <a class="list-group-item list-group-item-action dropend-toggle" href="#!">
              Logout
            </a>
          </div>
        </nav>

      </div>
      <div class="col-12 col-md-9 col-lg-8 offset-lg-1">

        <!-- Products -->
        <div class="row">

          <!-- Item -->
          <div class="col-6 col-md-4">
            <div class="card mb-7">

              <!-- Image -->
              <div class="card-img">

                <!-- Action -->
                <button class="btn btn-xs btn-circle btn-white-primary card-action card-action-end">
                  <i class="fe fe-x"></i>
                </button>

                <!-- Button -->
                <button class="btn btn-xs w-100 btn-dark card-btn" data-bs-toggle="modal" data-bs-target="#modalProduct">
                  <i class="fe fe-eye me-2 mb-1"></i> Quick View
                </button>

                <!-- Image -->
                <img class="card-img-top" src="assets/img/products/product-6.jpg" alt="...">

              </div>

              <!-- Body -->
              <div class="card-body fw-bold text-center">
                <a class="text-body" href="product.html">Cotton floral print Dress</a> <br>
                <span class="text-muted">$40.00</span>
              </div>

            </div>
          </div>

          <!-- Item -->
          <div class="col-6 col-md-4">
            <div class="card mb-7">

              <!-- Image -->
              <div class="card-img">

                <!-- Action -->
                <button class="btn btn-xs btn-circle btn-white-primary card-action card-action-end">
                  <i class="fe fe-x"></i>
                </button>

                <!-- Badge -->
                <span class="badge bg-dark card-badge card-badge-start text-uppercase">
                      Sale
                    </span>

                <!-- Button -->
                <button class="btn btn-xs w-100 btn-dark card-btn" data-bs-toggle="modal" data-bs-target="#modalProduct">
                  <i class="fe fe-eye me-2 mb-1"></i> Quick View
                </button>

                <!-- Image -->
                <img class="card-img-top" src="assets/img/products/product-10.jpg" alt="...">

              </div>

              <!-- Body -->
              <div class="card-body fw-bold text-center">
                <a class="text-body" href="product.html">Suede cross body Bag</a> <br>
                <span>
                      <span class="fs-xs text-gray-350 text-decoration-line-through">$85.00</span>
                      <span class="text-primary">$49.00</span>
                    </span>
              </div>

            </div>
          </div>

          <!-- Item -->
          <div class="col-6 col-md-4">
            <div class="card mb-7">

              <!-- Image -->
              <div class="card-img">

                <!-- Action -->
                <button class="btn btn-xs btn-circle btn-white-primary card-action card-action-end">
                  <i class="fe fe-x"></i>
                </button>

                <!-- Button -->
                <button class="btn btn-xs w-100 btn-dark card-btn" data-bs-toggle="modal" data-bs-target="#modalProduct">
                  <i class="fe fe-eye me-2 mb-1"></i> Quick View
                </button>

                <!-- Image -->
                <img class="card-img-top" src="assets/img/products/product-32.jpg" alt="...">

              </div>

              <!-- Body -->
              <div class="card-body fw-bold text-center">
                <a class="text-reset" href="product.html">Cotton leaf print Shirt</a>
                <span class="text-muted">$65.00</span>
              </div>

            </div>
          </div>

          <!-- Item -->
          <div class="col-6 col-md-4">
            <div class="card mb-7">

              <!-- Image -->
              <div class="card-img">

                <!-- Action -->
                <button class="btn btn-xs btn-circle btn-white-primary card-action card-action-end">
                  <i class="fe fe-x"></i>
                </button>

                <!-- Button -->
                <button class="btn btn-xs w-100 btn-dark card-btn" data-bs-toggle="modal" data-bs-target="#modalProduct">
                  <i class="fe fe-eye me-2 mb-1"></i> Quick View
                </button>

                <!-- Image -->
                <img class="card-img-top" src="assets/img/products/product-7.jpg" alt="...">

              </div>

              <!-- Body -->
              <div class="card-body fw-bold text-center">
                <a class="text-body" href="product.html">Leather Sneakers</a> <br>
                <a class="text-primary" href="#">Select Options</a>
              </div>

            </div>
          </div>

          <!-- Item -->
          <div class="col-6 col-md-4">
            <div class="card mb-7">

              <!-- Image -->
              <div class="card-img">

                <!-- Action -->
                <button class="btn btn-xs btn-circle btn-white-primary card-action card-action-end">
                  <i class="fe fe-x"></i>
                </button>

                <!-- Button -->
                <button class="btn btn-xs w-100 btn-dark card-btn" data-bs-toggle="modal" data-bs-target="#modalProduct">
                  <i class="fe fe-eye me-2 mb-1"></i> Quick View
                </button>

                <!-- Image -->
                <img class="card-img-top" src="assets/img/products/product-11.jpg" alt="...">

              </div>

              <!-- Body -->
              <div class="card-body fw-bold text-center">
                <a class="text-body" href="product.html">Another fine dress</a> <br>
                <span class="text-muted">$99.00</span>
              </div>

            </div>
          </div>

        </div>

        <!-- Pagination -->
        <nav class="d-flex justify-content-center justify-content-md-end">
          <ul class="pagination pagination-sm text-gray-400">
            <li class="page-item">
              <a class="page-link page-link-arrow" href="#">
                <i class="fa fa-caret-left"></i>
              </a>
            </li>
            <li class="page-item active">
              <a class="page-link" href="#">1</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">2</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">3</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">4</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">5</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">6</a>
            </li>
            <li class="page-item">
              <a class="page-link page-link-arrow" href="#">
                <i class="fa fa-caret-right"></i>
              </a>
            </li>
          </ul>
        </nav>

      </div>
    </div>
  </div>
</section>
