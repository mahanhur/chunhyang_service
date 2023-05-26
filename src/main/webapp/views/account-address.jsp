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
            <a class="list-group-item list-group-item-action dropend-toggle " href="account-orders.html">
              Orders
            </a>
            <a class="list-group-item list-group-item-action dropend-toggle " href="account-wishlist.html">
              Widhlist
            </a>
            <a class="list-group-item list-group-item-action dropend-toggle " href="account-personal-info.html">
              Personal Info
            </a>
            <a class="list-group-item list-group-item-action dropend-toggle active" href="account-address.html">
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
        <div class="row">
          <div class="col-12 col-lg-6">

            <!-- Card -->
            <div class="card card-lg bg-light mb-8">
              <div class="card-body">

                <!-- Heading -->
                <h6 class="mb-6">
                  Shipping Address
                </h6>

                <!-- Text -->
                <p class="text-muted mb-0">
                  Daniel Robinson <br>
                  3997 Raccoon Run <br>
                  Kingston <br>
                  45644 <br>
                  United States <br>
                  6146389574
                </p>

                <!-- Action -->
                <div class="card-action card-action-end">

                  <!-- Button -->
                  <a class="btn btn-xs btn-circle btn-white-primary" href="account-address-edit.html">
                    <i class="fe fe-edit-2"></i>
                  </a>

                  <!-- Button -->
                  <button class="btn btn-xs btn-circle btn-white-primary">
                    <i class="fe fe-x"></i>
                  </button>

                </div>

              </div>
            </div>

          </div>
          <div class="col-12 col-lg-6">

            <!-- Card -->
            <div class="card card-lg bg-light mb-8">
              <div class="card-body">

                <!-- Heading -->
                <h6 class="mb-6">
                  Billing Address
                </h6>

                <!-- Text -->
                <p class="text-muted mb-0">
                  Daniel Robinson <br>
                  3997 Raccoon Run <br>
                  Kingston <br>
                  45644 <br>
                  United States <br>
                  6146389574
                </p>

                <!-- Action -->
                <div class="card-action card-action-end">

                  <!-- Button -->
                  <a class="btn btn-xs btn-circle btn-white-primary" href="/account-address-edit">
                    <i class="fe fe-edit-2"></i>
                  </a>

                  <!-- Button -->
                  <button class="btn btn-xs btn-circle btn-white-primary">
                    <i class="fe fe-x"></i>
                  </button>

                </div>

              </div>
            </div>

          </div>
          <div class="col-12">

            <!-- Button -->
            <a class="btn w-100 btn-lg btn-outline-border" href="/account-address-edit">
              Add Address <i class="fe fe-plus"></i>
            </a>

          </div>
        </div>
      </div>
    </div>
  </div>
</section>
