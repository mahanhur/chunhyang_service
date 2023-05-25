<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    
    <!-- Favicon -->
    <link rel="shortcut icon" href="./assets/favicon/favicon.ico" type="image/x-icon" />
    
    <!-- Libs CSS -->
    <link rel="stylesheet" href="./assets/css/libs.bundle.css" />
    
    <!-- Theme CSS -->
    <link rel="stylesheet" href="./assets/css/theme.bundle.css" />
    
    <!-- Title -->
    <title>Shopper</title>
  </head>
  <body>

    <!-- MODALS -->
    <!-- Newsletter: Horizontal -->
    <div class="modal fade" id="modalNewsletterHorizontal" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
    
          <!-- Close -->
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
            <i class="fe fe-x" aria-hidden="true"></i>
          </button>
    
          <!-- Content -->
          <div class="row gx-0">
            <div class="col-12 col-lg-5">
    
              <!-- Image -->
              <img class="img-fluid" src="./assets/img/covers/cover-25.jpg" alt="...">
    
            </div>
            <div class="col-12 col-lg-7 d-flex flex-column px-md-8">
    
              <!-- Body -->
              <div class="modal-body my-auto py-10">
    
                <!-- Heading -->
                <h4>Subscribe to Newsletter and get 15% Discount</h4>
    
                <!-- Text -->
                <p class="mb-7 fs-lg">
                  On your next purchase
                </p>
    
                <!-- Form -->
                <form>
                  <div class="row gx-5">
                    <div class="col">
    
                      <!-- Input -->
                      <label class="visually-hidden" for="modalNewsletterHorizontalEmail">Enter Email *</label>
                      <input class="form-control form-control-sm" id="modalNewsletterHorizontalEmail" type="email" placeholder="Enter Email *">
    
                    </div>
                    <div class="col-auto">
    
                      <!-- Button -->
                      <button class="btn btn-sm btn-dark" type="submit">
                        <i class="fe fe-send"></i>
                      </button>
    
                    </div>
                  </div>
                </form>
    
              </div>
    
              <!-- Footer -->
              <div class="modal-footer pt-0">
    
                <!-- Checkbox -->
                <div class="form-check">
    
                  <!-- Input -->
                  <input class="form-check-input" id="modalNewsletterHorizontalCheckbox" type="checkbox">
    
                  <!-- Label -->
                  <label class="form-check-label fs-xs" for="modalNewsletterHorizontalCheckbox">
                    Prevent this Pop-up
                  </label>
    
                </div>
    
              </div>
    
            </div>
          </div>
    
        </div>
    
      </div>
    </div>
    
    <!-- Newsletter: Vertical -->
    <div class="modal fade" id="modalNewsletterVertical" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
    
          <!-- Close -->
          <button type="button" class="btn-close text-white" data-bs-dismiss="modal" aria-label="Close">
            <i class="fe fe-x" aria-hidden="true"></i>
          </button>
    
          <!-- Body -->
          <div class="modal-body mt-2 me-2 ms-2 py-10 bg-cover text-center text-white" style="background-image: url(./assets/img/covers/cover-26.jpg);">
    
            <!-- Heading -->
            <h4>Subscribe to Newsletter and get 15% Discount</h4>
    
            <!-- Text -->
            <p class="mb-0 fs-lg">
              On your next purchase
            </p>
    
          </div>
    
          <!-- Body -->
          <div class="modal-body py-9">
    
            <!-- Form -->
            <form>
              <div class="row gx-5">
                <div class="col">
    
                  <!-- Input -->
                  <label class="visually-hidden" for="modalNewsletterVerticalEmail">Enter Email *</label>
                  <input class="form-control form-control-sm" id="modalNewsletterVerticalEmail" type="email" placeholder="Enter Email *">
    
                </div>
                <div class="col-auto">
    
                  <!-- Button -->
                  <button class="btn btn-sm btn-dark" type="submit">
                    Subscribe
                  </button>
    
                </div>
              </div>
            </form>
    
          </div>
    
          <!-- Footer -->
          <div class="modal-footer justify-content-center pt-0">
    
            <!-- Checkbox -->
            <div class="form-check">
    
              <!-- Input -->
              <input class="form-check-input" id="modalNewsletterVerticalCheckbox" type="checkbox">
    
              <!-- Label -->
              <label class="form-check-label fs-xs" for="modalNewsletterVerticalCheckbox">
                Prevent this Pop-up
              </label>
    
            </div>
    
          </div>
    
        </div>
    
      </div>
    </div>
    
    <!-- Password Reset -->
    <div class="modal fade" id="modalPasswordReset" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
    
          <!-- Close -->
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
            <i class="fe fe-x" aria-hidden="true"></i>
          </button>
    
          <!-- Header-->
          <div class="modal-header lh-fixed fs-lg">
            <strong class="mx-auto">Forgot Password?</strong>
          </div>
    
          <!-- Body -->
          <div class="modal-body text-center">
    
            <!-- Text -->
            <p class="mb-7 fs-sm text-gray-500">
              Please enter your Email Address. You will receive a link
              to create a new password via Email.
            </p>
    
            <!-- Form -->
            <form>
    
              <!-- Email -->
              <div class="form-group">
                <label class="visually-hidden" for="modalPasswordResetEmail">
                  Email Address *
                </label>
                <input class="form-control form-control-sm" id="modalPasswordResetEmail" type="email" placeholder="Email Address *" required>
              </div>
    
              <!-- Button -->
              <button class="btn btn-sm btn-dark">
                Reset Password
              </button>
    
            </form>
    
          </div>
    
        </div>
    
      </div>
    </div>
    
    <!-- Product -->
    <div class="modal fade" id="modalProduct" tabindex="-1" role="dialog" aria-hidden="true">
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
                <img class="img-fluid" src="./assets/img/products/product-7.jpg" alt="...">
    
                <!-- Button -->
                <a class="btn btn-sm w-100 btn-primary" href="./product.html">
                  More Product Info <i class="fe fe-info ms-2"></i>
                </a>
    
              </div>
              <div class="col-12 col-lg-6 col-xl-7 py-9 px-md-9">
    
                <!-- Heading -->
                <h4 class="mb-3">Leather Sneakers</h4>
    
                <!-- Price -->
                <div class="mb-7">
                  <span class="h5">$85.00</span>
                  <span class="fs-sm">(In Stock)</span>
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
                        <input type="radio" class="form-check-input" id="modalProductColorOne" name="modalProductColor" data-toggle="form-caption" data-target="#modalProductColorCaption" value="White" style="background-image: url(./assets/img/products/product-7.jpg);" checked>
                      </div>
                      <div class="form-check form-check-inline form-check-img">
                        <input type="radio" class="form-check-input" id="modalProductColorTwo" name="modalProductColor" data-toggle="form-caption" data-target="#modalProductColorCaption" value="Black" style="background-image: url(./assets/img/products/product-49.jpg);">
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
    
    <!-- Search -->
    <div class="offcanvas offcanvas-end" id="modalSearch" tabindex="-1" role="dialog" aria-hidden="true">
    
      <!-- Close -->
      <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close">
        <i class="fe fe-x" aria-hidden="true"></i>
      </button>
    
      <!-- Header-->
      <div class="offcanvas-header lh-fixed fs-lg">
        <strong class="mx-auto">Search Products</strong>
      </div>
    
      <!-- Body: Form -->
      <div class="offcanvas-body">
        <form>
          <div class="form-group">
            <label class="visually-hidden" for="modalSearchCategories">Categories:</label>
            <select class="form-select" id="modalSearchCategories">
              <option selected>All Categories</option>
              <option>Women</option>
              <option>Men</option>
              <option>Kids</option>
            </select>
          </div>
          <div class="input-group input-group-merge">
            <input class="form-control" type="search" placeholder="Search">
            <div class="input-group-append">
              <button class="btn btn-outline-border" type="submit">
                <i class="fe fe-search"></i>
              </button>
            </div>
          </div>
        </form>
      </div>
    
      <!-- Body: Results (add `.d-none` to disable it) -->
      <div class="offcanvas-body border-top fs-sm">
    
        <!-- Heading -->
        <p>Search Results:</p>
    
        <!-- Items -->
        <div class="row align-items-center position-relative mb-5">
          <div class="col-4 col-md-3">
    
            <!-- Image -->
            <img class="img-fluid" src="./assets/img/products/product-5.jpg" alt="...">
    
          </div>
          <div class="col position-static">
    
            <!-- Text -->
            <p class="mb-0 fw-bold">
              <a class="stretched-link text-body" href="./product.html">Leather mid-heel Sandals</a> <br>
              <span class="text-muted">$129.00</span>
            </p>
    
          </div>
        </div>
        <div class="row align-items-center position-relative mb-5">
          <div class="col-4 col-md-3">
    
            <!-- Image -->
            <img class="img-fluid" src="./assets/img/products/product-6.jpg" alt="...">
    
          </div>
          <div class="col position-static">
    
            <!-- Text -->
            <p class="mb-0 fw-bold">
              <a class="stretched-link text-body" href="./product.html">Cotton floral print Dress</a> <br>
              <span class="text-muted">$40.00</span>
            </p>
    
          </div>
        </div>
        <div class="row align-items-center position-relative mb-5">
          <div class="col-4 col-md-3">
    
            <!-- Image -->
            <img class="img-fluid" src="./assets/img/products/product-7.jpg" alt="...">
    
          </div>
          <div class="col position-static">
    
            <!-- Text -->
            <p class="mb-0 fw-bold">
              <a class="stretched-link text-body" href="./product.html">Leather Sneakers</a> <br>
              <span class="text-primary">$85.00</span>
            </p>
    
          </div>
        </div>
        <div class="row align-items-center position-relative mb-5">
          <div class="col-4 col-md-3">
    
            <!-- Image -->
            <img class="img-fluid" src="./assets/img/products/product-8.jpg" alt="...">
    
          </div>
          <div class="col position-static">
    
            <!-- Text -->
            <p class="mb-0 fw-bold">
              <a class="stretched-link text-body" href="./product.html">Cropped cotton Top</a> <br>
              <span class="text-muted">$29.00</span>
            </p>
    
          </div>
        </div>
        <div class="row align-items-center position-relative mb-5">
          <div class="col-4 col-md-3">
    
            <!-- Image -->
            <img class="img-fluid" src="./assets/img/products/product-9.jpg" alt="...">
    
          </div>
          <div class="col position-static">
    
            <!-- Text -->
            <p class="mb-0 fw-bold">
              <a class="stretched-link text-body" href="./product.html">Floral print midi Dress</a> <br>
              <span class="text-muted">$50.00</span>
            </p>
    
          </div>
        </div>
    
        <!-- Button -->
        <a class="btn btn-link px-0 text-reset" href="./shop.html">
          View All <i class="fe fe-arrow-right ms-2"></i>
        </a>
    
      </div>
    
      <!-- Body: Empty (remove `.d-none` to enable it) -->
      <div class="offcanvas-body d-none">
    
        <!-- Text -->
        <p class="mb-3 fs-sm text-center">
          Nothing matches your search
        </p>
    
        <!-- Smiley -->
        <p class="mb-0 fs-sm text-center">
          😞
        </p>
    
      </div>
    
    </div>
    
    <!-- Shopping Cart -->
    <div class="offcanvas offcanvas-end" id="modalShoppingCart" tabindex="-1" role="dialog" aria-hidden="true">
    
      <!-- Full cart (add `.d-none` to disable it) -->
    
      <!-- Close -->
      <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close">
        <i class="fe fe-x" aria-hidden="true"></i>
      </button>
    
      <!-- Header-->
      <div class="offcanvas-header lh-fixed fs-lg">
        <strong class="mx-auto">Your Cart (2)</strong>
      </div>
    
      <!-- List group -->
      <ul class="list-group list-group-lg list-group-flush">
        <li class="list-group-item">
          <div class="row align-items-center">
            <div class="col-4">
    
              <!-- Image -->
              <a href="./product.html">
                <img class="img-fluid" src="./assets/img/products/product-6.jpg" alt="...">
              </a>
    
            </div>
            <div class="col-8">
    
              <!-- Title -->
              <p class="fs-sm fw-bold mb-6">
                <a class="text-body" href="./product.html">Cotton floral print Dress</a> <br>
                <span class="text-muted">$40.00</span>
              </p>
    
              <!--Footer -->
              <div class="d-flex align-items-center">
    
                <!-- Select -->
                <select class="form-select form-select-xxs w-auto">
                  <option value="1">1</option>
                  <option value="1">2</option>
                  <option value="1">3</option>
                </select>
    
                <!-- Remove -->
                <a class="fs-xs text-gray-400 ms-auto" href="#!">
                  <i class="fe fe-x"></i> Remove
                </a>
    
              </div>
    
            </div>
          </div>
        </li>
        <li class="list-group-item">
          <div class="row align-items-center">
            <div class="col-4">
    
              <!-- Image -->
              <a href="./product.html">
                <img class="img-fluid" src="./assets/img/products/product-10.jpg" alt="...">
              </a>
    
            </div>
            <div class="col-8">
    
              <!-- Title -->
              <p class="fs-sm fw-bold mb-6">
                <a class="text-body" href="./product.html">Suede cross body Bag</a> <br>
                <span class="text-muted">$49.00</span>
              </p>
    
              <!--Footer -->
              <div class="d-flex align-items-center">
    
                <!-- Select -->
                <select class="form-select form-select-xxs w-auto">
                  <option value="1">1</option>
                  <option value="1">2</option>
                  <option value="1">3</option>
                </select>
    
                <!-- Remove -->
                <a class="fs-xs text-gray-400 ms-auto" href="#!">
                  <i class="fe fe-x"></i> Remove
                </a>
    
              </div>
    
            </div>
          </div>
        </li>
      </ul>
    
      <!-- Footer -->
      <div class="offcanvas-footer justify-between lh-fixed fs-sm bg-light mt-auto">
        <strong>Subtotal</strong> <strong class="ms-auto">$89.00</strong>
      </div>
    
      <!-- Buttons -->
      <div class="offcanvas-body">
        <a class="btn w-100 btn-dark" href="./checkout.html">Continue to Checkout</a>
        <a class="btn w-100 btn-outline-dark mt-2" href="./shopping-cart.html">View Cart</a>
      </div>
    
      <!-- Empty cart (remove `.d-none` to enable it) -->
      <div class="d-none">
    
        <!-- Close -->
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close">
          <i class="fe fe-x" aria-hidden="true"></i>
        </button>
    
        <!-- Header-->
        <div class="offcanvas-header lh-fixed fs-lg">
          <strong class="mx-auto">Your Cart (0)</strong>
        </div>
    
        <!-- Body -->
        <div class="offcanvas-body flex-grow-0 my-auto">
    
          <!-- Heading -->
          <h6 class="mb-7 text-center">Your cart is empty 😞</h6>
    
          <!-- Button -->
          <a class="btn w-100 btn-outline-dark" href="#!">
            Continue Shopping
          </a>
    
        </div>
    
      </div>
    
    </div>
    
    <!-- Sidebar -->
    <div class="offcanvas offcanvas-end" id="modalSidebar" tabindex="-1" role="dialog" aria-hidden="true">
    
      <!-- Close -->
      <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close">
        <i class="fe fe-x" aria-hidden="true"></i>
      </button>
    
      <!-- Body -->
      <div class="offcanvas-body px-10 my-auto">
    
        <!-- Nav -->
        <ul class="nav nav-vertical nav-unstyled fs-2" id="sidebarNav">
          <li class="nav-item">
    
            <!-- Toggle -->
            <a class="nav-link dropdown-toggle" data-bs-toggle="collapse" href="#sidebarHome">
              Home
            </a>
    
            <!-- Collapse -->
            <div class="collapse" id="sidebarHome" data-bs-parent="#sidebarNav">
              <ul class="list-styled fs-lg py-3 mb-0">
                <li class="list-styled-item">
                  <a class="list-styled-link" href="./index.html">Default</a>
                </li>
                <li class="list-styled-item">
                  <a class="list-styled-link" href="./index-classic.html">Classic</a>
                </li>
                <li class="list-styled-item">
                  <a class="list-styled-link" href="./index-fashion.html">Fashion</a>
                </li>
                <li class="list-styled-item">
                  <a class="list-styled-link" href="./index-boxed.html">Boxed</a>
                </li>
                <li class="list-styled-item">
                  <a class="list-styled-link" href="./index-simple.html">Simple</a>
                </li>
                <li class="list-styled-item">
                  <a class="list-styled-link" href="./index-asymmetric.html">Asymmetric</a>
                </li>
                <li class="list-styled-item">
                  <a class="list-styled-link" href="./index-sidenav.html">Sidenav</a>
                </li>
                <li class="list-styled-item">
                  <a class="list-styled-link" href="./index-landing.html">Landing</a>
                </li>
              </ul>
            </div>
    
          </li>
          <li class="nav-item">
    
            <!-- Toggle -->
            <a class="nav-link dropdown-toggle" data-bs-toggle="collapse" href="#sidebarCatalog">
              Catalog
            </a>
    
            <!-- Collapse -->
            <div class="collapse" id="sidebarCatalog" data-bs-parent="#sidebarNav">
              <div class="row">
                <div class="col-12 py-3">
    
                  <!-- Heading -->
                  <h6 class="mb-5 fw-bold">Clothing</h6>
    
                  <!-- Links -->
                  <ul class="list-styled fs-lg py-3">
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop.html">All Clothing</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop.html">Blouses & Shirts</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop.html">Coats & Jackets</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop.html">Dresses</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop.html">Hoodies & Sweats</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop.html">Denim</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop.html">Jeans</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop.html">Jumpers & Cardigans</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop.html">Leggings</a>
                    </li>
                  </ul>
    
                </div>
                <div class="col-12 py-3">
    
                  <!-- Heading -->
                  <h6 class="mb-5 fw-bold">Shoes & Boots</h6>
    
                  <!-- Links -->
                  <ul class="list-styled fs-lg">
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop.html">All Shoes & Boots</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop.html">Branded Shoes</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop.html">Boots</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop.html">Heels</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop.html">Trainers</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop.html">Sandals</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop.html">Shoes</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop.html">Wide Fit Shoes</a>
                    </li>
                  </ul>
    
                </div>
                <div class="col-12 py-3">
    
                  <!-- Heading -->
                  <h6 class="mb-5 fw-bold">Bags & Accessories</h6>
    
                  <!-- Links -->
                  <ul class="list-styled fs-lg">
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop.html">All Bags & Accessories</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop.html">Accessories</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop.html">Bags & Purses</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop.html">Luggage</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop.html">Belts</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop.html">Hats</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop.html">Hair Accessories</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop.html">Jewellery</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop.html">Travel Accessories</a>
                    </li>
                  </ul>
    
                </div>
              </div>
            </div>
    
          </li>
          <li class="nav-item">
    
            <!-- Toggle -->
            <a class="nav-link dropdown-toggle" data-bs-toggle="collapse" href="#sidebarShop">
              Shop
            </a>
    
            <!-- Collapse -->
            <div class="collapse" id="sidebarShop" data-bs-parent="#sidebarNav">
              <div class="row">
                <div class="col-12 py-3">
    
                  <!-- Heading -->
                  <h6 class="mb-5">Shop</h6>
    
                  <!-- Links -->
                  <ul class="list-styled fs-lg">
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop.html">Default</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop-topbar.html">Topbar</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop-collapse.html">Collapse</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop-simple.html">Simple</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shop-masonry.html">Masonry</a>
                    </li>
                  </ul>
    
                </div>
                <div class="col-12 py-3">
    
                  <!-- Heading -->
                  <h6 class="mb-5">Product</h6>
    
                  <!-- Links -->
                  <ul class="list-styled fs-lg">
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./product.html">Default</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./product-images-left.html">Images Left</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./product-image-grid.html">Image Grid</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./product-image-slider.html">Image Slider</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./product-images-stacked.html">Images Stacked</a>
                    </li>
                  </ul>
    
                </div>
                <div class="col-12 py-3">
    
                  <!-- Heading -->
                  <h6 class="mb-5">Support</h6>
    
                  <!-- Links -->
                  <ul class="list-styled fs-lg">
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shopping-cart.html">Shopping Cart</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./checkout.html">Checkout</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./order-completed.html">Order Completed</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./shipping-and-returns.html">Shipping & Returns</a>
                    </li>
                  </ul>
    
                </div>
                <div class="col-12 py-3">
    
                  <!-- Heading -->
                  <h6 class="mb-5">Account</h6>
    
                  <!-- Links -->
                  <ul class="list-styled fs-lg">
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./account-order.html">Order</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./account-orders.html">Orders</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./account-wishlist.html">Wishlist</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./account-personal-info.html">Personal Info</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./account-address.html">Addresses</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./account-address-edit.html">Addresses: New</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./account-payment.html">Payment</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./account-payment-edit.html">Payment: New</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./account-payment-choose.html">Payment: Choose</a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" href="./auth.html">Auth</a>
                    </li>
                  </ul>
    
                </div>
                <div class="col-12 py-3">
    
                  <!-- Heading -->
                  <h6 class="mb-5">Modals</h6>
    
                  <!-- Links -->
                  <ul class="list-styled fs-lg">
                    <li class="list-styled-item">
                      <a class="list-styled-link" data-bs-toggle="modal" href="#modalNewsletterHorizontal">
                        Newsletter: Horizontal
                      </a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" data-bs-toggle="modal" href="#modalNewsletterVertical">
                        Newsletter: Vertical
                      </a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" data-bs-toggle="modal" href="#modalProduct">
                        Product
                      </a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" data-bs-toggle="offcanvas" href="#modalSearch">
                        Search
                      </a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" data-bs-toggle="offcanvas" href="#modalShoppingCart">
                        Shopping Cart
                      </a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" data-bs-toggle="modal" href="#modalSizeChart">
                        Size Chart
                      </a>
                    </li>
                    <li class="list-styled-item">
                      <a class="list-styled-link" data-bs-toggle="modal" href="#modalWaitList">
                        Wait List
                      </a>
                    </li>
                  </ul>
    
                </div>
              </div>
            </div>
    
          </li>
          <li class="nav-item">
    
            <!-- Toggle -->
            <a class="nav-link dropdown-toggle" data-bs-toggle="collapse" href="#sidebarPages">
              Pages
            </a>
    
            <!-- Collapse -->
            <div class="collapse" id="sidebarPages" data-bs-parent="#sidebarNav">
              <ul class="list-styled fs-lg py-3 mb-0">
                <li class="list-styled-item">
                  <a class="list-styled-link" href="./about.html">About</a>
                </li>
                <li class="list-styled-item">
                  <a class="list-styled-link" href="./contact-us.html">Contact Us</a>
                </li>
                <li class="list-styled-item">
                  <a class="list-styled-link" href="./store-locator.html">Store Locator</a>
                </li>
                <li class="list-styled-item">
                  <a class="list-styled-link" href="./faq.html">FAQ</a>
                </li>
                <li class="list-styled-item">
                  <a class="list-styled-link" href="./coming-soon.html">Coming Soon</a>
                </li>
                <li class="list-styled-item">
                  <a class="list-styled-link" href="./404.html">404</a>
                </li>
              </ul>
            </div>
    
          </li>
          <li class="nav-item">
    
            <!-- Toggle -->
            <a class="nav-link dropdown-toggle" data-bs-toggle="collapse" href="#sidebarBlog">
              Blog
            </a>
    
            <!-- Collapse -->
            <div class="collapse" id="sidebarBlog" data-bs-parent="#sidebarNav">
              <ul class="list-styled fs-lg py-3 mb-0">
                <li class="list-styled-item">
                  <a class="list-styled-link" href="./blog.html">Blog</a>
                </li>
                <li class="list-styled-item">
                  <a class="list-styled-link" href="./blog-post.html">Blog Post</a>
                </li>
              </ul>
            </div>
    
          </li>
          <li class="nav-item">
            <a class="nav-link" href="./docs/getting-started.html">Docs</a>
          </li>
        </ul>
    
      </div>
    
      <!-- Body -->
      <div class="moda-body px-10 py-9">
    
        <!-- Social links -->
        <ul class="list-inline">
          <li class="list-inline-item">
            <a class="text-gray-350" href="#!">
              <i class="fab fa-facebook-f"></i>
            </a>
          </li>
          <li class="list-inline-item">
            <a class="text-gray-350" href="#!">
              <i class="fab fa-youtube"></i>
            </a>
          </li>
          <li class="list-inline-item">
            <a class="text-gray-350" href="#!">
              <i class="fab fa-twitter"></i>
            </a>
          </li>
          <li class="list-inline-item">
            <a class="text-gray-350" href="#!">
              <i class="fab fa-instagram"></i>
            </a>
          </li>
          <li class="list-inline-item">
            <a class="text-gray-350" href="#!">
              <i class="fab fa-medium-m"></i>
            </a>
          </li>
        </ul>
    
        <!-- Footer -->
        <div class="fs-xxs text-gray-350">
          © 2019 All rights reserved. Designed by Unvab.
        </div>
    
      </div>
    
    </div>
    
    <!-- Size Chart -->
    <div class="modal fade" id="modalSizeChart" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
    
          <!-- Close -->
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
            <i class="fe fe-x" aria-hidden="true"></i>
          </button>
    
          <!-- Header-->
          <div class="modal-header lh-fixed fs-lg">
            <strong class="mx-auto">Size Chart</strong>
          </div>
    
          <!-- Body -->
          <div class="modal-body border-bottom">
    
            <!-- Header -->
            <div class="d-flex mb-7">
    
              <!-- Heading -->
              <h5 class="mb-0">Clothing</h5>
    
              <!-- Inputs -->
              <div class="ms-auto">
    
                <!-- IN -->
                <input type="radio" class="btn-check" name="modalSizeChartUnitOne" id="inOne" checked>
                <label class="btn btn-xxs btn-circle btn-outline-dark fs-xxxs rounded-0" for="inOne">IN</label>
    
                <!-- CM -->
                <input type="radio" class="btn-check" name="modalSizeChartUnitOne" id="cmOne">
                <label class="btn btn-xxs btn-circle btn-outline-dark fs-xxxs rounded-0" for="cmOne">CM</label>
    
              </div>
    
            </div>
    
            <!-- Table -->
            <div class="table-responsive">
              <table class="table table-bordered table-sm table-hover mb-0">
                <thead>
                  <tr>
                    <th>Size</th>
                    <th>US</th>
                    <th>Bust</th>
                    <th>Waist</th>
                    <th>Hips</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>XS</td>
                    <td>2</td>
                    <td>32</td>
                    <td>24 - 25</td>
                    <td>33 - 34</td>
                  </tr>
                  <tr>
                    <td>S</td>
                    <td>4</td>
                    <td>34 - 35</td>
                    <td>26 - 27</td>
                    <td>35 - 26</td>
                  </tr>
                  <tr>
                    <td>M</td>
                    <td>6</td>
                    <td>36 - 37</td>
                    <td>28 - 29</td>
                    <td>38 - 40</td>
                  </tr>
                  <tr>
                    <td>L</td>
                    <td>8</td>
                    <td>38 - 29</td>
                    <td>30 - 31</td>
                    <td>42 - 44</td>
                  </tr>
                  <tr>
                    <td>XL</td>
                    <td>10</td>
                    <td>40 - 41</td>
                    <td>32 - 33</td>
                    <td>45 - 47</td>
                  </tr>
                  <tr>
                    <td>XXL</td>
                    <td>12</td>
                    <td>42 - 43</td>
                    <td>34 - 35</td>
                    <td>48 - 50</td>
                  </tr>
                </tbody>
              </table>
            </div>
    
          </div>
    
          <!-- Body -->
          <div class="modal-body">
    
            <!-- Header -->
            <div class="d-flex mb-7">
    
              <!-- Heading -->
              <h5 class="mb-0">Shoes</h5>
    
              <!-- Inputs -->
              <div class="ms-auto">
    
                <!-- IN -->
                <input type="radio" class="btn-check" name="modalSizeChartUnitTwo" id="inTwo" checked>
                <label class="btn btn-xxs btn-circle btn-outline-dark fs-xxxs rounded-0" for="inTwo">IN</label>
    
                <!-- CM -->
                <input type="radio" class="btn-check" name="modalSizeChartUnitTwo" id="cmTwo">
                <label class="btn btn-xxs btn-circle btn-outline-dark fs-xxxs rounded-0" for="cmTwo">CM</label>
    
              </div>
    
            </div>
    
            <!-- Tables -->
            <div class="row">
              <div class="col-12 col-lg-6">
    
                <!-- Table -->
                <div class="table-responsive">
                  <table class="table table-bordered table-sm table-hover mb-lg-0">
                    <thead>
                      <tr>
                        <th>Size</th>
                        <th>US</th>
                        <th>Foot Length</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>36</td>
                        <td>5</td>
                        <td>22.8</td>
                      </tr>
                      <tr>
                        <td>26.5</td>
                        <td>5.5</td>
                        <td>23.1</td>
                      </tr>
                      <tr>
                        <td>37</td>
                        <td>6</td>
                        <td>23.5</td>
                      </tr>
                      <tr>
                        <td>37.5</td>
                        <td>6.</td>
                        <td>23.5</td>
                      </tr>
                      <tr>
                        <td>38</td>
                        <td>7</td>
                        <td>24.1</td>
                      </tr>
                      <tr>
                        <td>38.5</td>
                        <td>7.5</td>
                        <td>24.5</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
    
              </div>
              <div class="col-12 col-lg-6">
    
                <!-- Table -->
                <div class="table-responsive">
                  <table class="table table-bordered table-sm table-hover mb-0">
                    <thead>
                      <tr>
                        <th>Size</th>
                        <th>US</th>
                        <th>Foot Length</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>36</td>
                        <td>5</td>
                        <td>22.8</td>
                      </tr>
                      <tr>
                        <td>39</td>
                        <td>8</td>
                        <td>24.1</td>
                      </tr>
                      <tr>
                        <td>40</td>
                        <td>9</td>
                        <td>25.4</td>
                      </tr>
                      <tr>
                        <td>40.5</td>
                        <td>9.5</td>
                        <td>25.7</td>
                      </tr>
                      <tr>
                        <td>41</td>
                        <td>10</td>
                        <td>26.0</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
    
              </div>
            </div>
    
          </div>
    
        </div>
    
      </div>
    </div>
    
    <!-- Wait List -->
    <div class="modal fade" id="modalWaitList" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
    
          <!-- Close -->
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
            <i class="fe fe-x" aria-hidden="true"></i>
          </button>
    
          <!-- Header-->
          <div class="modal-header lh-fixed fs-lg">
            <strong class="mx-auto">Wait List</strong>
          </div>
    
          <!-- Body -->
          <div class="modal-body">
            <div class="row mb-6">
              <div class="col-12 col-md-3">
    
                <!-- Image -->
                <a href="./product.html">
                  <img class="img-fluid mb-7 mb-md-0" src="./assets/img/products/product-6.jpg" alt="...">
                </a>
    
              </div>
              <div class="col-12 col-md-9">
    
                <!-- Label -->
                <p>
                  <a class="fw-bold text-body" href="./product.html">Cotton floral print Dress</a>
                </p>
    
                <!-- Radio -->
                <div class="form-check form-check-inline form-check-size mb-2">
                  <input type="radio" class="form-check-input" name="modalWaitListSize" id="modalWaitListSizeOne" value="6" data-toggle="form-caption" data-target="#modalWaitListSizeCaption">
                  <label class="form-check-label" for="modalWaitListSizeOne">3XS</label>
                </div>
                <div class="form-check form-check-inline form-check-size mb-2">
                  <input type="radio" class="form-check-input" name="modalWaitListSize" id="modalWaitListSizeTwo" value="6.5" data-toggle="form-caption" data-target="#modalWaitListSizeCaption">
                  <label class="form-check-label" for="modalWaitListSizeTwo">2XS</label>
                </div>
                <div class="form-check form-check-inline form-check-size mb-2">
                  <input type="radio" class="form-check-input" name="modalWaitListSize" id="modalWaitListSizeThree" value="7" data-toggle="form-caption" data-target="#modalWaitListSizeCaption">
                  <label class="form-check-label" for="modalWaitListSizeThree">XS</label>
                </div>
                <div class="form-check form-check-inline form-check-size mb-2">
                  <input type="radio" class="form-check-input" name="modalWaitListSize" id="modalWaitListSizeFour" value="7.5" data-toggle="form-caption" data-target="#modalWaitListSizeCaption" checked>
                  <label class="form-check-label" for="modalWaitListSizeFour">S</label>
                </div>
                <div class="form-check form-check-inline form-check-size mb-2">
                  <input type="radio" class="form-check-input" name="modalWaitListSize" id="modalWaitListSizeFive" value="8" data-toggle="form-caption" data-target="#modalWaitListSizeCaption">
                  <label class="form-check-label" for="modalWaitListSizeFive">M</label>
                </div>
                <div class="form-check form-check-inline form-check-size mb-2">
                  <input type="radio" class="form-check-input" name="modalWaitListSize" id="modalWaitListSizeSix" value="8.5" data-toggle="form-caption" data-target="#modalWaitListSizeCaption">
                  <label class="form-check-label" for="modalWaitListSizeSix">LG</label>
                </div>
                <div class="form-check form-check-inline form-check-size mb-2">
                  <input type="radio" class="form-check-input" name="modalWaitListSize" id="modalWaitListSizeSeven" value="9" data-toggle="form-caption" data-target="#modalWaitListSizeCaption">
                  <label class="form-check-label" for="modalWaitListSizeSeven">XL</label>
                </div>
                <div class="form-check form-check-inline form-check-size mb-2">
                  <input type="radio" class="form-check-input" name="modalWaitListSize" id="modalWaitListSizeEight" value="9.5" data-toggle="form-caption" data-target="#modalWaitListSizeCaption">
                  <label class="form-check-label" for="modalWaitListSizeEight">2XL</label>
                </div>
                <div class="form-check form-check-inline form-check-size mb-2">
                  <input type="radio" class="form-check-input" name="modalWaitListSize" id="modalWaitListSizeNine" value="10" data-toggle="form-caption" data-target="#modalWaitListSizeCaption">
                  <label class="form-check-label" for="modalWaitListSizeNine">3XL</label>
                </div>
                <div class="form-check form-check-inline form-check-size mb-2">
                  <input type="radio" class="form-check-input" name="modalWaitListSize" id="modalWaitListSizeTen" value="10.5" data-toggle="form-caption" data-target="#modalWaitListSizeCaption">
                  <label class="form-check-label" for="modalWaitListSizeTen">4XL</label>
                </div>
    
              </div>
    
            </div>
            <div class="row">
              <div class="col-12">
    
                <!-- Text -->
                <p class="fs-sm text-center text-gray-500">
                  Justo ut diam erat hendrerit morbi porttitor,
                  per eu curabitur diam sociis.
                </p>
    
              </div>
            </div>
            <div class="row gx-5 mb-2">
              <div class="col-12 col-md-6">
    
                <!-- Form group -->
                <div class="form-group">
                  <label class="visually-hidden" for="listName">Your Name</label>
                  <input class="form-control" id="listName" type="text" placeholder="Your Name *" required>
                </div>
    
              </div>
              <div class="col-12 col-md-6">
    
                <!-- Form group -->
                <div class="form-group">
                  <label class="visually-hidden" for="listEmail">Your Name</label>
                  <input class="form-control" id="listEmail" type="email" placeholder="Your Email *" required>
                </div>
    
              </div>
            </div>
            <div class="row">
              <div class="col-12 text-center">
    
                <!-- Button -->
                <button class="btn btn-dark" type="submit">Subscribe</button>
    
              </div>
            </div>
          </div>
    
        </div>
    
      </div>
    </div>

    <!-- NAVBAR -->
    <div class="navbar navbar-topbar navbar-expand-xl navbar-light bg-light">
      <div class="container">
    
        <!-- Promo -->
        <div class="me-xl-8">
          <i class="fe fe-truck me-2"></i> <span class="heading-xxxs">Free shipping worldwide</span>
        </div>
    
        <!-- Toggler -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#topbarCollapse" aria-controls="topbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    
        <!-- Collapse -->
        <div class="collapse navbar-collapse" id="topbarCollapse">
    
          <!-- Nav -->
          <ul class="nav nav-divided navbar-nav me-auto">
            <li class="nav-item dropdown">
    
              <!-- Toggle -->
              <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#">
                <img class="mb-1 me-1" src="./assets/img/flags/usa.svg" alt="..." /> United States
              </a>
    
              <!-- Menu -->
              <div class="dropdown-menu min-w-0">
                <a class="dropdown-item" href="#!">
                  <img class="mb-1 me-2" src="./assets/img/flags/usa.svg" alt="USA">United States
                </a>
                <a class="dropdown-item" href="#!">
                  <img class="mb-1 me-2" src="./assets/img/flags/canada.svg" alt="Canada">Canada
                </a>
                <a class="dropdown-item" href="#!">
                  <img class="mb-1 me-2" src="./assets/img/flags/germany.svg" alt="Germany">Germany
                </a>
              </div>
    
            </li>
            <li class="nav-item dropdown">
    
              <!-- Toggle -->
              <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#">USD</a>
    
              <!-- Menu -->
              <div class="dropdown-menu min-w-0">
                <a class="dropdown-item" href="#!">USD</a>
                <a class="dropdown-item" href="#!">EUR</a>
              </div>
    
            </li>
            <li class="nav-item dropdown">
    
              <!-- Toggle -->
              <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#">English</a>
    
              <!-- Menu -->
              <div class="dropdown-menu min-w-0">
                <a class="dropdown-item" href="#">English</a>
                <a class="dropdown-item" href="#">French</a>
                <a class="dropdown-item" href="#">German</a>
              </div>
    
            </li>
          </ul>
    
          <!-- Nav -->
          <ul class="nav navbar-nav me-8">
            <li class="nav-item">
              <a class="nav-link" href="./shipping-and-returns.html">Shipping</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="./faq.html">FAQ</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="./contact-us.html">Contact</a>
            </li>
          </ul>
    
          <!-- Nav -->
          <ul class="nav navbar-nav flex-row">
            <li class="nav-item">
              <a class="nav-link text-gray-350" href="#!">
                <i class="fab fa-facebook-f"></i>
              </a>
            </li>
            <li class="nav-item ms-xl-n4">
              <a class="nav-link text-gray-350" href="#!">
                <i class="fab fa-twitter"></i>
              </a>
            </li>
            <li class="nav-item ms-xl-n4">
              <a class="nav-link text-gray-350" href="#!">
                <i class="fab fa-instagram"></i>
              </a>
            </li>
            <li class="nav-item ms-xl-n4">
              <a class="nav-link text-gray-350" href="#!">
                <i class="fab fa-medium"></i>
              </a>
            </li>
          </ul>
    
        </div>
      </div>
    </div>

    <!-- NAVBAR -->
    <nav class="navbar navbar-expand-lg navbar-light ">
      <div class="container">
    
        <!-- Brand -->
        <a class="navbar-brand d-lg-none" href="./overview.html">
          Shopper.
        </a>
    
        <!-- Toggler -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarFashionTopCollapse" aria-controls="navbarFashionTopCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    
        <!-- Collapse -->
        <div class="collapse navbar-collapse" id="navbarFashionTopCollapse">
    
          <!-- Nav -->
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link text-uppercase active" href="#!">Women</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-uppercase" href="#!">Men</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-uppercase" href="#!">Kids</a>
            </li>
          </ul>
    
          <!-- Brand -->
          <a class="navbar-brand mx-auto d-none d-lg-block" href="./overview.html">
            Shopper.
          </a>
    
          <!-- Nav -->
          <ul class="navbar-nav flex-row">
            <li class="nav-item">
              <a class="nav-link" href="./account-orders.html">
                <i class="fe fe-user"></i>
              </a>
            </li>
            <li class="nav-item ms-lg-n4">
              <a class="nav-link" href="./account-wishlist.html">
                <i class="fe fe-heart"></i>
              </a>
            </li>
            <li class="nav-item ms-lg-n4">
              <a class="nav-link" data-bs-toggle="offcanvas" href="#modalShoppingCart">
                <span data-cart-items="2">
                  <i class="fe fe-shopping-cart"></i>
                </span>
              </a>
            </li>
          </ul>
    
        </div>
      </div>
    </nav>

    <!-- NAVBAR -->
    <div class="navbar navbar-fashion navbar-expand-lg navbar-dark mb-4 bg-dark">
      <div class="container">
    
        <!-- Search-->
        <form class="navbar-form me-auto order-lg-1">
          <div class="input-group">
            <input type="search" class="form-control" placeholder="Search for items and brands" />
            <div class="input-group-append">
              <button class="btn btn-dark">
                <i class="fe fe-search"></i>
              </button>
            </div>
          </div>
        </form>
    
        <!-- Toggler -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarFashionBottomCollapse" aria-controls="navbarFashionBottomCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    
        <!-- Collapse -->
        <div class="collapse navbar-collapse" id="navbarFashionBottomCollapse">
          <ul class="navbar-nav">
            <li class="nav-item dropdown">
    
              <!-- Toggle -->
              <a class="nav-link" data-bs-toggle="dropdown" href="#">Home</a>
    
              <!-- Menu -->
              <div class="dropdown-menu">
                <div class="card card-lg">
                  <div class="card-body">
                    <ul class="list-styled fs-sm">
                      <li class="list-styled-item">
                        <a class="list-styled-link" href="./index.html">Default</a>
                      </li>
                      <li class="list-styled-item">
                        <a class="list-styled-link" href="./index-classic.html">Classic</a>
                      </li>
                      <li class="list-styled-item">
                        <a class="list-styled-link" href="./index-fashion.html">Fashion</a>
                      </li>
                      <li class="list-styled-item">
                        <a class="list-styled-link" href="./index-boxed.html">Boxed</a>
                      </li>
                      <li class="list-styled-item">
                        <a class="list-styled-link" href="./index-simple.html">Simple</a>
                      </li>
                      <li class="list-styled-item">
                        <a class="list-styled-link" href="./index-asymmetric.html">Asymmetric</a>
                      </li>
                      <li class="list-styled-item">
                        <a class="list-styled-link" href="./index-sidenav.html">Sidenav</a>
                      </li>
                      <li class="list-styled-item">
                        <a class="list-styled-link" href="./index-landing.html">Landing</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
    
            </li>
            <li class="nav-item dropdown">
    
              <!-- Toggle -->
              <a class="nav-link" data-bs-toggle="dropdown" href="#">Catalog</a>
    
              <!-- Menu -->
              <div class="dropdown-menu" style="min-width: 650px;">
                <div class="card card-lg">
                  <div class="card-body">
                    <div class="row">
                      <div class="col">
              
                        <!-- Heading -->
                        <div class="mb-5 fw-bold">Clothing</div>
              
                        <!-- Links -->
                        <ul class="list-styled mb-0 fs-sm">
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop.html">All Clothing</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop.html">Blouses & Shirts</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop.html">Coats & Jackets</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop.html">Dresses</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop.html">Hoodies & Sweats</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop.html">Denim</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop.html">Jeans</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop.html">Jumpers & Cardigans</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop.html">Leggings</a>
                          </li>
                        </ul>
              
                      </div>
                      <div class="col">
              
                        <!-- Heading -->
                        <div class="mb-5 fw-bold">Shoes & Boots</div>
              
                        <!-- Links -->
                        <ul class="list-styled mb-0 fs-sm">
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop.html">All Shoes & Boots</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop.html">Branded Shoes</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop.html">Boots</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop.html">Heels</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop.html">Trainers</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop.html">Sandals</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop.html">Shoes</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop.html">Wide Fit Shoes</a>
                          </li>
                        </ul>
              
                      </div>
                      <div class="col">
              
                        <!-- Heading -->
                        <div class="mb-5 fw-bold">Bags & Accessories</div>
              
                        <!-- Links -->
                        <ul class="list-styled mb-0 fs-sm">
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop.html">All Bags & Accessories</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop.html">Accessories</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop.html">Bags & Purses</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop.html">Luggage</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop.html">Belts</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop.html">Hats</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop.html">Hair Accessories</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop.html">Jewellery</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop.html">Travel Accessories</a>
                          </li>
                        </ul>
              
                      </div>
                    </div>
                  </div>
                </div>
              </div>
    
            </li>
            <li class="nav-item dropdown">
    
              <!-- Toggle -->
              <a class="nav-link" data-bs-toggle="dropdown" href="#">Shop</a>
    
              <!-- Menu -->
              <div class="dropdown-menu" style="min-width: 650px;">
                <div class="card card-lg">
                  <div class="card-body">
                    <div class="row">
                      <div class="col">
              
                        <!-- Heading -->
                        <div class="mb-5 fw-bold">Shop</div>
              
                        <!-- Links -->
                        <ul class="list-styled mb-7 fs-sm">
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop.html">Default</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop-topbar.html">Topbar</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop-collapse.html">Collapse</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop-simple.html">Simple</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shop-masonry.html">Masonry</a>
                          </li>
                        </ul>
              
                        <!-- Heading -->
                        <div class="mb-5 fw-bold">Product</div>
              
                        <!-- Links -->
                        <ul class="list-styled fs-sm">
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./product.html">Default</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./product-images-left.html">Images Left</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./product-image-grid.html">Image Grid</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./product-image-slider.html">Image Slider</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./product-images-stacked.html">Images Stacked</a>
                          </li>
                        </ul>
              
                      </div>
                      <div class="col">
              
                        <!-- Heading -->
                        <div class="mb-5 fw-bold">Support</div>
              
                        <!-- Links -->
                        <ul class="list-styled mb-7 fs-sm">
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shopping-cart.html">Shopping Cart</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./checkout.html">Checkout</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./order-completed.html">Order Completed</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./shipping-and-returns.html">Shipping & Returns</a>
                          </li>
                        </ul>
              
                        <!-- Heading -->
                        <div class="mb-5 fw-bold">Account</div>
              
                        <!-- Links -->
                        <ul class="list-styled fs-sm">
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./account-order.html">Order</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./account-orders.html">Orders</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./account-wishlist.html">Wishlist</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./account-personal-info.html">Personal Info</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./account-address.html">Addresses</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./account-address-edit.html">Addresses: New</a>
                          </li>
                        </ul>
              
                      </div>
                      <div class="col">
              
                        <!-- Links -->
                        <ul class="list-styled mb-7 fs-sm">
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./account-payment.html">Payment</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./account-payment-edit.html">Payment: New</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./account-payment-choose.html">Payment: Choose</a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" href="./auth.html">Auth</a>
                          </li>
                        </ul>
              
                        <!-- Heading -->
                        <div class="mb-5 fw-bold">Modals</div>
              
                        <!-- Links -->
                        <ul class="list-styled fs-sm">
                          <li class="list-styled-item">
                            <a class="list-styled-link" data-bs-toggle="modal" href="#modalNewsletterHorizontal">
                              Newsletter: Horizontal
                            </a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" data-bs-toggle="modal" href="#modalNewsletterVertical">
                              Newsletter: Vertical
                            </a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" data-bs-toggle="modal" href="#modalProduct">
                              Product
                            </a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" data-bs-toggle="offcanvas" href="#modalSearch">
                              Search
                            </a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" data-bs-toggle="offcanvas" href="#modalShoppingCart">
                              Shopping Cart
                            </a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" data-bs-toggle="modal" href="#modalSizeChart">
                              Size Chart
                            </a>
                          </li>
                          <li class="list-styled-item">
                            <a class="list-styled-link" data-bs-toggle="modal" href="#modalWaitList">
                              Wait List
                            </a>
                          </li>
                        </ul>
              
                      </div>
                    </div>
                  </div>
                </div>
              </div>
    
            </li>
            <li class="nav-item dropdown">
    
              <!-- Toggle -->
              <a class="nav-link" data-bs-toggle="dropdown" href="#">Pages</a>
    
              <!-- Menu -->
              <div class="dropdown-menu">
                <div class="card card-lg">
                  <div class="card-body">
                    <ul class="list-styled fs-sm">
                      <li class="list-styled-item">
                        <a class="list-styled-link" href="./about.html">About</a>
                      </li>
                      <li class="list-styled-item">
                        <a class="list-styled-link" href="./contact-us.html">Contact Us</a>
                      </li>
                      <li class="list-styled-item">
                        <a class="list-styled-link" href="./store-locator.html">Store Locator</a>
                      </li>
                      <li class="list-styled-item">
                        <a class="list-styled-link" href="./faq.html">FAQ</a>
                      </li>
                      <li class="list-styled-item">
                        <a class="list-styled-link" href="./coming-soon.html">Coming Soon</a>
                      </li>
                      <li class="list-styled-item">
                        <a class="list-styled-link" href="./404.html">404</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
    
            </li>
            <li class="nav-item dropdown">
    
              <!-- Toggle -->
              <a class="nav-link" data-bs-toggle="dropdown" href="#">Blog</a>
    
              <!-- Menu -->
              <div class="dropdown-menu">
                <div class="card card-lg">
                  <div class="card-body">
                    <ul class="list-styled fs-sm">
                      <li class="list-styled-item">
                        <a class="list-styled-link" href="./blog.html">Blog</a>
                      </li>
                      <li class="list-styled-item">
                        <a class="list-styled-link" href="./blog-post.html">Blog Post</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
    
            </li>
            <li class="nav-item">
              <a class="nav-link" href="docs/getting-started.html">Docs</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-primary" href="#!">Sale %</a>
            </li>
          </ul>
        </div>
    
      </div>
    </div>

    <!-- WELCOME -->
    <section class="position-relative mb-4 py-13">

      <!-- Cover -->
      <div class="container-cover">
        <div class="container-fluid">
          <div class="row">
            <div class="col d-none d-xl-block bg-cover" style="background-image: url(assets/img/covers/cover-6.jpg);"></div>
            <div class="col d-none d-lg-block bg-cover" style="background-image: url(assets/img/covers/cover-7.jpg);"></div>
            <div class="col d-none d-md-block bg-cover" style="background-image: url(assets/img/covers/cover-8.jpg);"></div>
            <div class="col bg-cover" style="background-image: url(assets/img/covers/cover-9.jpg);"></div>
          </div>
        </div>
      </div>

      <!-- Content -->
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-12 col-md-8 col-lg-6 col-xl-5">

            <!-- Card -->
            <div class="card card-xl">
              <div class="card-body text-center">

                <!-- Heading -->
                <h4 class="mb-6">Summer Collection</h4>

                <!-- Text -->
                <p class="mb-0">
                  Appear, dry there darkness they're seas, dry waters thing fly midst above.
                </p>

                <!-- Button -->
                <a class="btn btn-dark btn-sm mb-n12" href="shop.html">
                  Shop Now <i class="fe fe-arrow-right ms-2"></i>
                </a>

              </div>
            </div>

          </div>
        </div>
      </div>

    </section>

    <!-- SALE -->
    <section class="py-12 bg-primary bg-pattern">
      <div class="container">
        <div class="row">
          <div class="col-12 text-center">

            <!-- Heading-->
            <h1 class="display-4 mb-9 text-white">
              Sale up to 50% off
            </h1>

            <!-- Buttons -->
            <a class="btn btn-outline-white border-2 px-md-8 m-2 m-md-4" href="shop.html">Dresses</a>
            <a class="btn btn-outline-white border-2 px-md-8 m-2 m-md-4" href="shop.html">Tops & T-Shirts</a>
            <a class="btn btn-outline-white border-2 px-md-8 m-2 m-md-4" href="shop.html">Blouses & Shirts</a>
            <a class="btn btn-outline-white border-2 px-md-8 m-2 m-md-4" href="shop.html">Jeans & Trousers</a>
            <a class="btn btn-outline-white border-2 px-md-8 m-2 m-md-4" href="shop.html">Jeans & Trousers</a>
            <a class="btn btn-outline-white border-2 px-md-8 m-2 m-md-4" href="shop.html">Shoes</a>
            <a class="btn btn-outline-white border-2 px-md-8 m-2 m-md-4" href="shop.html">Acessories</a>
            <a class="btn btn-outline-white border-2 px-md-8 m-2 m-md-4" href="shop.html">Coats & Jakets</a>
            <a class="btn btn-outline-white border-2 px-md-8 m-2 m-md-4" href="shop.html">Shorts & Skirts</a>

          </div>
        </div>
      </div>
    </section>

    <!-- TOP SELLERS -->
    <section class="py-12">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-12 col-md-10 col-lg-8 col-xl-6">

            <!-- Preheading -->
            <h6 class="heading-xxs mb-3 text-center text-gray-400">
              Top selling
            </h6>

            <!-- Heading -->
            <h2 class="mb-10 text-center">Top wekeend Sellers</h2>

          </div>
        </div>
        <div class="row">
          <div class="col-6 col-sm-6 col-md-4 col-lg-3">

            <!-- Card -->
            <div class="card mb-7" data-toggle="card-collapse">

              <!-- Badge -->
              <div class="badge bg-white text-body card-badge card-badge-start text-uppercase">
                New
              </div>

              <!-- Image -->
              <div class="card-img" data-flickity='{"draggable": false}' id="productOneImg">
                <a class="d-block w-100" href="product.html">
                  <img class="card-img-top" src="assets/img/products/product-5.jpg" alt="..." />
                </a>
                <a class="d-block w-100" href="product.html">
                  <img class="card-img-top" src="assets/img/products/product-142.jpg" alt="..." />
                </a>
              </div>

              <!-- Collapse -->
              <div class="card-collapse-parent">

                <!-- Body -->
                <div class="card-body px-0 pb-0 bg-white">
                  <div class="row gx-0">
                    <div class="col">

                      <!-- Title -->
                      <a class="d-block fw-bold text-body" href="product.html">
                        Leather mid-heel Sandals
                      </a>

                      <!-- Category -->
                      <a class="fs-xs text-muted" href="shop.html">
                        Shoes
                      </a>

                    </div>
                    <div class="col-auto">

                      <!-- Price -->
                      <div class="fs-sm fw-bold text-muted">
                        $129.00
                      </div>

                    </div>
                  </div>
                </div>

                <!-- Footer -->
                <div class="card-collapse collapse">
                  <div class="card-footer px-0 bg-white">
                    <form>
                      <div class="mb-1">
                        <div class="form-check form-check-inline form-check-color">
                          <input class="form-check-input" type="radio" id="productOneColorOne" name="productOneColor" data-toggle="flickity" data-target="#productOneImg" data-slide="0" style="background-color: beige" checked />
                        </div>
                        <div class="form-check form-check-inline form-check-color ms-n2">
                          <input class="form-check-input" type="radio" id="productOneColorTwo" name="productOneColor" data-toggle="flickity" data-target="#productOneImg" data-slide="1" style="background-color: black" />
                        </div>
                      </div>
                      <div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productOneSizeOne" name="sizeRadio" />
                          <label class="form-check-label" for="productOneSizeOne">6</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productOneSizeTwo" name="sizeRadio" />
                          <label class="form-check-label" for="productOneSizeTwo">6.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productOneSizeThree" name="sizeRadio" />
                          <label class="form-check-label" for="productOneSizeThree">7</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productOneSizeFour" name="sizeRadio" />
                          <label class="form-check-label" for="productOneSizeFour">7.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productOneSizeFive" name="sizeRadio" />
                          <label class="form-check-label" for="productOneSizeFive">8.5</label>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>

              </div>

            </div>

          </div>
          <div class="col-6 col-sm-6 col-md-4 col-lg-3">

            <!-- Card -->
            <div class="card mb-7" data-toggle="card-collapse">

              <!-- Image -->
              <div class="card-img" data-flickity='{"draggable": false}' id="productTwoImg">
                <a class="d-block w-100" href="product.html">
                  <img class="card-img-top" src="assets/img/products/product-6.jpg" alt="..." />
                </a>
                <a class="d-block w-100" href="product.html">
                  <img class="card-img-top" src="assets/img/products/product-143.jpg" alt="..." />
                </a>
              </div>

              <!-- Collapse -->
              <div class="card-collapse-parent">

                <!-- Body -->
                <div class="card-body px-0 pb-0 bg-white">
                  <div class="row gx-0">
                    <div class="col">

                      <!-- Title -->
                      <a class="d-block fw-bold text-body" href="product.html">
                        Cotton floral print Dress
                      </a>

                      <!-- Category -->
                      <a class="fs-xs text-muted" href="shop.html">
                        Dresses
                      </a>

                    </div>
                    <div class="col-auto">

                      <!-- Price -->
                      <div class="fs-sm fw-bold text-muted">
                        $40.00
                      </div>

                    </div>
                  </div>
                </div>

                <!-- Footer -->
                <div class="card-collapse collapse">
                  <div class="card-footer px-0 bg-white">
                    <form>
                      <div class="mb-1">
                        <div class="form-check form-check-inline form-check-color">
                          <input class="form-check-input" type="radio" id="productTwoColorOne" name="productTwoColor" data-toggle="flickity" data-target="#productTwoImg" data-slide="0" style="background-color: red" checked />
                        </div>
                        <div class="form-check form-check-inline form-check-color ms-n2">
                          <input class="form-check-input" type="radio" id="productTwoColorTwo" name="productTwoColor" data-toggle="flickity" data-target="#productTwoImg" data-slide="1" style="background-color: white" />
                        </div>
                      </div>
                      <div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productTwoSizeOne" name="sizeRadio" />
                          <label class="form-check-label" for="productTwoSizeOne">6</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productTwoSizeTwo" name="sizeRadio" />
                          <label class="form-check-label" for="productTwoSizeTwo">6.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productTwoSizeThree" name="sizeRadio" />
                          <label class="form-check-label" for="productTwoSizeThree">7</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productTwoSizeFour" name="sizeRadio" />
                          <label class="form-check-label" for="productTwoSizeFour">7.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productTwoSizeFive" name="sizeRadio" />
                          <label class="form-check-label" for="productTwoSizeFive">8.5</label>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>

              </div>

            </div>

          </div>
          <div class="col-6 col-sm-6 col-md-4 col-lg-3">

            <!-- Card -->
            <div class="card mb-7" data-toggle="card-collapse">

              <!-- Badge -->
              <div class="badge bg-dark card-badge card-badge-start text-uppercase letter-spacing-lg">
                Sale
              </div>

              <!-- Image -->
              <img class="card-img-top" src="assets/img/products/product-7.jpg" alt="..." />

              <!-- Collapse -->
              <div class="card-collapse-parent">

                <!-- Body -->
                <div class="card-body px-0 pb-0 bg-white">
                  <div class="row gx-0">
                    <div class="col">

                      <!-- Title -->
                      <a class="d-block fw-bold text-body" href="product.html">
                        Leather Sneakers
                      </a>

                      <!-- Category -->
                      <a class="fs-xs text-muted" href="shop.html">
                        Shoes
                      </a>

                    </div>
                    <div class="col-auto">

                      <!-- Price -->
                      <div class="fs-xs fw-bold text-gray-350 text-decoration-line-through">
                        $115.00
                      </div>
                      <div class="fs-sm fw-bold text-primary">
                        $85.00
                      </div>

                    </div>
                  </div>
                </div>

                <!-- Footer -->
                <div class="card-collapse collapse">
                  <div class="card-footer px-0 bg-white">
                    <form>
                      <div class="mb-1">
                        <div class="form-check form-check-inline form-check-color">
                          <input class="form-check-input" type="radio" id="productThreeColorOne" name="productThreeColor" style="background-color: #f9f9f9;" checked />
                        </div>
                      </div>
                      <div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productThreeSizeOne" name="sizeRadio" />
                          <label class="form-check-label" for="productThreeSizeOne">6</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productThreeSizeTwo" name="sizeRadio" />
                          <label class="form-check-label" for="productThreeSizeTwo">6.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productThreeSizeThree" name="sizeRadio" />
                          <label class="form-check-label" for="productThreeSizeThree">7</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productThreeSizeFour" name="sizeRadio" />
                          <label class="form-check-label" for="productThreeSizeFour">7.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productThreeSizeFive" name="sizeRadio" />
                          <label class="form-check-label" for="productThreeSizeFive">8.5</label>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>

              </div>

            </div>

          </div>
          <div class="col-6 col-sm-6 col-md-4 col-lg-3">

            <!-- Card -->
            <div class="card mb-7" data-toggle="card-collapse">

              <!-- Image -->
              <img class="card-img-top" src="assets/img/products/product-8.jpg" alt="..." />

              <!-- Collapse -->
              <div class="card-collapse-parent">

                <!-- Body -->
                <div class="card-body px-0 pb-0 bg-white">
                  <div class="row gx-0">
                    <div class="col">

                      <!-- Title -->
                      <a class="d-block fw-bold text-body" href="product.html">
                        Cropped cotton Top
                      </a>

                      <!-- Category -->
                      <a class="fs-xs text-muted" href="shop.html">
                        Top
                      </a>

                    </div>
                    <div class="col-auto">

                      <!-- Price -->
                      <div class="fs-sm fw-bold text-muted">
                        $29.00
                      </div>

                    </div>
                  </div>
                </div>

                <!-- Footer -->
                <div class="card-collapse collapse">
                  <div class="card-footer px-0 bg-white">
                    <form>
                      <div class="mb-1">
                        <div class="form-check form-check-inline form-check-color">
                          <input class="form-check-input" type="radio" id="productFourColorOne" name="productFourColor" style="background-color: #f9f9f9;" checked />
                        </div>
                      </div>
                      <div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productFourSizeOne" name="sizeRadio" />
                          <label class="form-check-label" for="productFourSizeOne">6</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productFourSizeTwo" name="sizeRadio" />
                          <label class="form-check-label" for="productFourSizeTwo">6.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productFourSizeThree" name="sizeRadio" />
                          <label class="form-check-label" for="productFourSizeThree">7</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productFourSizeFour" name="sizeRadio" />
                          <label class="form-check-label" for="productFourSizeFour">7.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productFourSizeFive" name="sizeRadio" />
                          <label class="form-check-label" for="productFourSizeFive">8.5</label>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>

              </div>

            </div>

          </div>
          <div class="col-6 col-sm-6 col-md-4 col-lg-3">

            <!-- Card -->
            <div class="card mb-7" data-toggle="card-collapse">

              <!-- Image -->
              <img class="card-img-top" src="assets/img/products/product-9.jpg" alt="..." />

              <!-- Collapse -->
              <div class="card-collapse-parent">

                <!-- Body -->
                <div class="card-body px-0 pb-0 bg-white">
                  <div class="row gx-0">
                    <div class="col">

                      <!-- Title -->
                      <a class="d-block fw-bold text-body" href="product.html">
                        Floral print midi Dress
                      </a>

                      <!-- Category -->
                      <a class="fs-xs text-muted" href="shop.html">
                        Dresses
                      </a>

                    </div>
                    <div class="col-auto">

                      <!-- Price -->
                      <div class="fs-sm fw-bold text-muted">
                        $50.00
                      </div>

                    </div>
                  </div>
                </div>

                <!-- Footer -->
                <div class="card-collapse collapse">
                  <div class="card-footer px-0 bg-white">
                    <form>
                      <div class="mb-1">
                        <div class="form-check form-check-inline form-check-color">
                          <input class="form-check-input" type="radio" id="productFiveColorOne" name="productFiveColor" style="background-color: yellow;" checked />
                        </div>
                      </div>
                      <div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productFiveSizeOne" name="sizeRadio" />
                          <label class="form-check-label" for="productFiveSizeOne">6</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productFiveSizeTwo" name="sizeRadio" />
                          <label class="form-check-label" for="productFiveSizeTwo">6.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productFiveSizeThree" name="sizeRadio" />
                          <label class="form-check-label" for="productFiveSizeThree">7</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productFiveSizeFour" name="sizeRadio" />
                          <label class="form-check-label" for="productFiveSizeFour">7.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productFiveSizeFive" name="sizeRadio" />
                          <label class="form-check-label" for="productFiveSizeFive">8.5</label>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>

              </div>

            </div>

          </div>
          <div class="col-6 col-sm-6 col-md-4 col-lg-3">

            <!-- Card -->
            <div class="card mb-7" data-toggle="card-collapse">

              <!-- Badge -->
              <div class="badge bg-dark card-badge card-badge-start text-uppercase letter-spacing-lg">
                Sale
              </div>

              <!-- Image -->
              <div class="card-img" data-flickity='{"draggable": false}' id="productSixImg">
                <a class="d-block w-100" href="product.html">
                  <img class="card-img-top" src="assets/img/products/product-10.jpg" alt="..." />
                </a>
                <a class="d-block w-100" href="product.html">
                  <img class="card-img-top" src="assets/img/products/product-144.jpg" alt="..." />
                </a>
              </div>

              <!-- Collapse -->
              <div class="card-collapse-parent">

                <!-- Body -->
                <div class="card-body px-0 pb-0 bg-white">
                  <div class="row gx-0">
                    <div class="col">

                      <!-- Title -->
                      <a class="d-block fw-bold text-body" href="product.html">
                        Suede cross body Bag
                      </a>

                      <!-- Category -->
                      <a class="fs-xs text-muted" href="shop.html">
                        Bags
                      </a>

                    </div>
                    <div class="col-auto">

                      <!-- Price -->
                      <div class="fs-xs fw-bold text-gray-350 text-decoration-line-through">
                        $79.00
                      </div>
                      <div class="fs-sm fw-bold text-primary">
                        $49.00
                      </div>

                    </div>
                  </div>
                </div>

                <!-- Footer -->
                <div class="card-collapse collapse">
                  <div class="card-footer px-0 bg-white">
                    <form>
                      <div class="mb-1">
                        <div class="form-check form-check-inline form-check-color">
                          <input class="form-check-input" type="radio" id="productSixColorOne" name="productSixColor" data-toggle="flickity" data-target="#productSixImg" data-slide="0" style="background-color: beige;" checked />
                        </div>
                        <div class="form-check form-check-inline form-check-color ms-n2">
                          <input class="form-check-input" type="radio" id="productSixColorTwo" name="productSixColor" data-toggle="flickity" data-target="#productSixImg" data-slide="1" style="background-color: black;" />
                        </div>
                      </div>
                      <div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productSixSizeOne" name="sizeRadio" />
                          <label class="form-check-label" for="productSixSizeOne">6</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productSixSizeTwo" name="sizeRadio" />
                          <label class="form-check-label" for="productSixSizeTwo">6.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productSixSizeThree" name="sizeRadio" />
                          <label class="form-check-label" for="productSixSizeThree">7</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productSixSizeFour" name="sizeRadio" />
                          <label class="form-check-label" for="productSixSizeFour">7.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productSixSizeFive" name="sizeRadio" />
                          <label class="form-check-label" for="productSixSizeFive">8.5</label>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>

              </div>

            </div>

          </div>
          <div class="col-6 col-sm-6 col-md-4 col-lg-3">

            <!-- Card -->
            <div class="card mb-7" data-toggle="card-collapse">

              <!-- Image -->
              <img class="card-img-top" src="assets/img/products/product-11.jpg" alt="..." />

              <!-- Collapse -->
              <div class="card-collapse-parent">

                <!-- Body -->
                <div class="card-body px-0 pb-0 bg-white">
                  <div class="row gx-0">
                    <div class="col">

                      <!-- Title -->
                      <a class="d-block fw-bold text-body" href="product.html">
                        Printed A-line Skirt
                      </a>

                      <!-- Category -->
                      <a class="fs-xs text-muted" href="shop.html">
                        Skirts
                      </a>

                    </div>
                    <div class="col-auto">

                      <!-- Price -->
                      <div class="fs-sm fw-bold text-muted">
                        $79.00
                      </div>

                    </div>
                  </div>
                </div>

                <!-- Footer -->
                <div class="card-collapse collapse">
                  <div class="card-footer px-0 bg-white">
                    <form>
                      <div class="mb-1">
                        <div class="form-check form-check-inline form-check-color">
                          <input class="form-check-input" type="radio" id="productSevenColorOne" name="productSevenColor" style="background-color: black;" checked />
                        </div>
                      </div>
                      <div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productSevenSizeOne" name="sizeRadio" />
                          <label class="form-check-label" for="productSevenSizeOne">6</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productSevenSizeTwo" name="sizeRadio" />
                          <label class="form-check-label" for="productSevenSizeTwo">6.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productSevenSizeThree" name="sizeRadio" />
                          <label class="form-check-label" for="productSevenSizeThree">7</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productSevenSizeFour" name="sizeRadio" />
                          <label class="form-check-label" for="productSevenSizeFour">7.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productSevenSizeFive" name="sizeRadio" />
                          <label class="form-check-label" for="productSevenSizeFive">8.5</label>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>

              </div>

            </div>

          </div>
          <div class="col-6 col-sm-6 col-md-4 col-lg-3">

            <!-- Card -->
            <div class="card mb-7" data-toggle="card-collapse">

              <!-- Badge -->
              <div class="badge bg-white text-body card-badge card-badge-start text-uppercase">
                New
              </div>

              <!-- Image -->
              <div class="card-img" data-flickity='{"draggable": false}' id="productEightImg">
                <a class="d-block w-100" href="product.html">
                  <img class="card-img-top" src="assets/img/products/product-12.jpg" alt="..." />
                </a>
                <a class="d-block w-100" href="product.html">
                  <img class="card-img-top" src="assets/img/products/product-145.jpg" alt="..." />
                </a>
              </div>

              <!-- Collapse -->
              <div class="card-collapse-parent">

                <!-- Body -->
                <div class="card-body px-0 pb-0 bg-white">
                  <div class="row gx-0">
                    <div class="col">

                      <!-- Title -->
                      <a class="d-block fw-bold text-body" href="product.html">
                        Heel strappy Sandals
                      </a>

                      <!-- Category -->
                      <a class="fs-xs text-muted" href="shop.html">
                        Shoes
                      </a>

                    </div>
                    <div class="col-auto">

                      <!-- Price -->
                      <div class="fs-sm fw-bold text-muted">
                        $90.00
                      </div>

                    </div>
                  </div>
                </div>

                <!-- Footer -->
                <div class="card-collapse collapse">
                  <div class="card-footer px-0 bg-white">
                    <form>
                      <div class="mb-1">
                        <div class="form-check form-check-inline form-check-color">
                          <input class="form-check-input" type="radio" id="productEightColorOne" name="productEightColor" data-toggle="flickity" data-target="#productEightImg" data-slide="0" style="background-color: black;" checked />
                        </div>
                        <div class="form-check form-check-inline form-check-color ms-n2">
                          <input class="form-check-input" type="radio" id="productEightColorTwo" name="productEightColor" data-toggle="flickity" data-target="#productEightImg" data-slide="1" style="background-color: red;" />
                        </div>
                      </div>
                      <div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productEightSizeOne" name="sizeRadio" />
                          <label class="form-check-label" for="productEightSizeOne">6</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productEightSizeTwo" name="sizeRadio" />
                          <label class="form-check-label" for="productEightSizeTwo">6.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productEightSizeThree" name="sizeRadio" />
                          <label class="form-check-label" for="productEightSizeThree">7</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productEightSizeFour" name="sizeRadio" />
                          <label class="form-check-label" for="productEightSizeFour">7.5</label>
                        </div>
                        <div class="form-check form-check-inline form-check-text fs-xs">
                          <input class="form-check-input" type="radio" id="productEightSizeFive" name="sizeRadio" />
                          <label class="form-check-label" for="productEightSizeFive">8.5</label>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>

              </div>

            </div>

          </div>
        </div>
        <div class="row">
          <div class="col-12">

            <!-- Link  -->
            <div class="mt-7 text-center">
              <a class="link-underline" href="shop.html">Discover more</a>
            </div>

          </div>
        </div>
      </div>
    </section>

    <!-- MUST HAVES -->
    <section class="bg-light overflow-hidden">
      <div class="container">
        <div class="row gx-0 justify-content-between">
          <div class="col-12 col-md-5 col-lg-4 py-13">

            <!-- Pretitle -->
            <h6 class="heading-xxs text-gray-400">
              Summer trends
            </h6>

            <!-- Heading -->
            <h1 class="mb-4">Our must haves</h1>

            <!-- Text -->
            <p class="text-gray-500 mb-8">
              Male his our upon seed had said wherein their
              i great wherein under you'll deep first multiply.
              Fish waters they're herb shall saying.
            </p>

            <!-- Button -->
            <a class="btn btn-dark" href="shop.html">
              Shop Now <i class="fe fe-arrow-right ms-2"></i>
            </a>

          </div>
          <div class="col-12 col-md-6">

            <!-- Image -->
            <div class="h-100 vw-50 bg-cover" style="background-image: url(assets/img/covers/cover-10.jpg);"></div>

          </div>
        </div>
      </div>
    </section>

    <!-- NEW COLLECTION -->
    <section>
      <div class="container">
        <div class="row align-items-center">
          <div class="col-12 col-md-4">

            <!-- Image -->
            <img src="assets/img/products/product-38.jpg" alt="..." class="img-fluid my-12">

          </div>
          <div class="col-12 col-md-4 text-center">

            <!-- Heading -->
            <h2 class="mb-4">
              New 2019 Summer collection
            </h2>

            <!-- Text -->
            <p class="mb-7 text-gray-500">
              Appear, dry there darkness they're seas, dry
              waters thing fly midst. Beast, above fly
              brought Very green.
            </p>

            <!-- Link  -->
            <a class="link-underline" href="shop.html">Discover more</a>

          </div>
          <div class="col-12 col-md-4">

            <!-- Video -->
            <div class="position-relative">

              <!-- Poster -->
              <img src="assets/img/products/product-39.jpg" alt="..." class="img-fluid my-12">

              <!-- Button -->
              <a class="btn btn-lg btn-circle btn-white btn-hover center" data-bigpicture='{"ytSrc": "BGrY85i-skk"}' href="#">
                <i class="fas fa-play"></i>
              </a>

            </div>

          </div>
        </div>
      </div>
    </section>

    <!-- BRAND -->
    <section class="py-12 bg-light">
      <div class="container">
        <div class="row">
          <div class="col-12">

            <!-- Heading -->
            <h2 class="mb-10 text-center">
              Shop by Brand
            </h2>

          </div>
        </div>
        <div class="row">
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="shop.html">
              <img class="brand-img" src="assets/img/brands/gray-350/mango.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="shop.html">
              <img class="brand-img" src="assets/img/brands/gray-350/zara.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="shop.html">
              <img class="brand-img" src="assets/img/brands/gray-350/reebok.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="shop.html">
              <img class="brand-img" src="assets/img/brands/gray-350/asos.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="shop.html">
              <img class="brand-img" src="assets/img/brands/gray-350/stradivarius.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="shop.html">
              <img class="brand-img" src="assets/img/brands/gray-350/adidas.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="shop.html">
              <img class="brand-img" src="assets/img/brands/gray-350/bershka.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="shop.html">
              <img class="brand-img" src="assets/img/brands/gray-350/forever21.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="shop.html">
              <img class="brand-img" src="assets/img/brands/gray-350/esprit.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="shop.html">
              <img class="brand-img" src="assets/img/brands/gray-350/converse.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="shop.html">
              <img class="brand-img" src="assets/img/brands/gray-350/calvin-klein.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="#!">
              <img class="brand-img" src="assets/img/brands/gray-350/joop.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="#!">
              <img class="brand-img" src="assets/img/brands/gray-350/h&m.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="#!">
              <img class="brand-img" src="assets/img/brands/gray-350/only.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="#!">
              <img class="brand-img" src="assets/img/brands/gray-350/guess.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="#!">
              <img class="brand-img" src="assets/img/brands/gray-350/river-island.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="#!">
              <img class="brand-img" src="assets/img/brands/gray-350/victorias-secret.svg" alt="...">
            </a>

          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">

            <!-- Brand -->
            <a class="brand lift mb-7 text-center" href="#!">
              <img class="brand-img" src="assets/img/brands/gray-350/topshop.svg" alt="...">
            </a>

          </div>
        </div>
        <div class="row">
          <div class="col-12 text-center">

            <!-- Link  -->
            <div class="mt-10 text-center">
              <a class="link-underline" href="shop.html">Discover more</a>
            </div>

          </div>
        </div>
      </div>
    </section>

    <!-- NEW ARRIVAL -->
    <section>
      <div class="container py-12 border-bottom">
        <div class="row">
          <div class="col-12">

            <!-- Heading -->
            <h2 class="mb-10 text-center">New Arrivals</h2>

            <!-- Slider-->
            <div class="flickity-buttons-lg flickity-buttons-offset px-lg-12" data-flickity='{"prevNextButtons": true}'>

              <!-- Card -->
              <div class="col-12 col-md-4 mb-10 px-4">
                <div class="card">

                  <!-- Image -->
                  <a href="product.html">
                    <img class="card-img-top" src="assets/img/products/product-26.jpg" alt="...">
                  </a>

                  <!-- Body -->
                  <div class="card-body px-0">
                    <div class="d-flex">

                      <!-- Caption -->
                      <div class="me-auto">

                        <!-- Heading -->
                        <div class="fw-bold">
                          <a class="text-body" href="product.html">Striped knit Top</a>
                        </div>

                        <!-- Text -->
                        <div class="fs-sm">
                          <a class="text-muted" href="shop.html">Tops</a>
                        </div>

                      </div>

                      <!-- Price -->
                      <div class="fs-sm fw-bold text-muted">
                        $39.00
                      </div>

                    </div>
                  </div>

                </div>
              </div>

              <!-- Card -->
              <div class="col-12 col-md-4 mb-10 px-4">
                <div class="card">

                  <!-- Image -->
                  <a href="product.html">
                    <img class="card-img-top" src="assets/img/products/product-25.jpg" alt="...">
                  </a>

                  <!-- Body -->
                  <div class="card-body px-0">
                    <div class="d-flex">

                      <!-- Caption -->
                      <div class="me-auto">

                        <!-- Heading -->
                        <div class="fw-bold">
                          <a class="text-body" href="product.html">Floral print Dress</a>
                        </div>

                        <!-- Text -->
                        <div class="fs-sm">
                          <a class="text-muted" href="shop.html">Dress</a>
                        </div>

                      </div>

                      <!-- Price -->
                      <div class="fs-sm fw-bold text-muted">
                        $60.00
                      </div>

                    </div>
                  </div>

                </div>
              </div>

              <!-- Card -->
              <div class="col-12 col-md-4 mb-10 px-4">
                <div class="card">

                  <!-- Image -->
                  <a href="product.html">
                    <img class="card-img-top" src="assets/img/products/product-28.jpg" alt="...">
                  </a>

                  <!-- Body -->
                  <div class="card-body px-0">
                    <div class="d-flex">

                      <!-- Caption -->
                      <div class="me-auto">

                        <!-- Heading -->
                        <div class="fw-bold">
                          <a class="text-body" href="product.html">Straight Trousers with Belt</a>
                        </div>

                        <!-- Text -->
                        <div class="fs-sm">
                          <a class="text-muted" href="shop.html">Trousers</a>
                        </div>

                      </div>

                      <!-- Price -->
                      <div class="fs-sm fw-bold text-muted">
                        $79.00
                      </div>

                    </div>
                  </div>

                </div>
              </div>

              <!-- Card -->
              <div class="col-12 col-md-4 mb-10 px-4">
                <div class="card">

                  <!-- Image -->
                  <a href="product.html">
                    <img class="card-img-top" src="assets/img/products/product-27.jpg" alt="...">
                  </a>

                  <!-- Body -->
                  <div class="card-body px-0">
                    <div class="d-flex">

                      <!-- Caption -->
                      <div class="me-auto">

                        <!-- Heading -->
                        <div class="fw-bold">
                          <a class="text-body" href="product.html">Fine quality jeans</a>
                        </div>

                        <!-- Text -->
                        <div class="fs-sm text-muted">
                          <a class="text-muted" href="shop.html">Trousers</a>
                        </div>

                      </div>

                      <!-- Price -->
                      <div class="fs-sm fw-bold text-muted">
                        $69.00
                      </div>

                    </div>
                  </div>

                </div>
              </div>

            </div>

            <!-- Button -->
            <div class="text-center">
              <a class="btn btn-dark" href="shop.html">
                Shop Now <i class="fe fe-arrow-right ms-2"></i>
              </a>
            </div>

          </div>
        </div>
      </div>
    </section>

    <!-- NEWSLETTER -->
    <section class="py-12">
      <div class="container">
        <div class="row">
          <div class="col-12 text-center">

            <!-- Heading -->
            <h3>
              Subscribe to our Newsletter
            </h3>

            <!-- Subheading -->
            <p class="mb-7 fs-lg text-gray-500">
              Receive an exclusive 10% discount code when you signup.
            </p>

          </div>
        </div>
        <div class="row justify-content-center">
          <div class="col-12 col-md-8 col-lg-6">

            <!-- Form -->
            <form>
              <div class="input-group">

                <!-- Input -->
                <input class="form-control form-control-underline form-control-sm border-dark" type="email" placeholder="Enter Email *">

                <!-- Button -->
                <div class="input-group-append">
                  <button class="btn btn-underline btn-sm border-dark" type="button">Subscribe</button>
                </div>

              </div>
            </form>

          </div>
        </div>
      </div>
    </section>

    <!-- INSTASHOP -->
    <section class="bg-light">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12 col-lg-4">
            <div class="row h-100">
              <div class="col-6 bg-cover" style="background-image: url(assets/img/products/product-16.jpg);"></div>
              <div class="col-6 bg-cover" style="background-image: url(assets/img/products/product-40.jpg);"></div>
              <div class="col-6 bg-cover" style="background-image: url(assets/img/products/product-41.jpg);"></div>
              <div class="col-6 bg-cover" style="background-image: url(assets/img/products/product-17.jpg);"></div>
            </div>
          </div>
          <div class="col-12 col-lg-4 py-12 px-9 text-center">

            <!-- Icon -->
            <div class="h3 mb-6">
              <i class="fe fe-instagram"></i>
            </div>

            <!-- Heading -->
            <h2 class="mb-6">Instashop</h2>

            <!-- Text -->
            <p class="mb-8 fs-lg text-muted">
              Appear, dry there darkness they're seas, dry
              waters thing fly midst. Beast, above fly
              brought Very green.
            </p>

            <!-- Link -->
            <a href="#!" class="link-underline">Go to Instagram</a>

          </div>
          <div class="col-12 col-lg-4">
            <div class="row h-100">
              <div class="col-6 bg-cover" style="background-image: url(assets/img/products/product-42.jpg);"></div>
              <div class="col-6 bg-cover" style="background-image: url(assets/img/products/product-21.jpg);"></div>
              <div class="col-6 bg-cover" style="background-image: url(assets/img/products/product-18.jpg);"></div>
              <div class="col-6 bg-cover" style="background-image: url(assets/img/products/product-43.jpg);"></div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- FEATURES -->
    <section class="py-9">
      <div class="container">
        <div class="row">
          <div class="col-12 col-md-6 col-lg-3">

            <!-- Item -->
            <div class="d-flex mb-6 mb-lg-0">

              <!-- Icon -->
              <i class="fe fe-truck fs-lg text-primary"></i>

              <!-- Body -->
              <div class="ms-6">

                <!-- Heading -->
                <h6 class="heading-xxs mb-1">
                  Free shipping
                </h6>

                <!-- Text -->
                <p class="mb-0 fs-sm text-muted">
                  From all orders over $100
                </p>

              </div>

            </div>

          </div>
          <div class="col-12 col-md-6 col-lg-3">

            <!-- Item -->
            <div class="d-flex mb-6 mb-lg-0">

              <!-- Icon -->
              <i class="fe fe-repeat fs-lg text-primary"></i>

              <!-- Body -->
              <div class="ms-6">

                <!-- Heading -->
                <h6 class="mb-1 heading-xxs">
                  Free returns
                </h6>

                <!-- Text -->
                <p class="mb-0 fs-sm text-muted">
                  Return money within 30 days
                </p>

              </div>

            </div>

          </div>
          <div class="col-12 col-md-6 col-lg-3">

            <!-- Item -->
            <div class="d-flex mb-6 mb-md-0">

              <!-- Icon -->
              <i class="fe fe-lock fs-lg text-primary"></i>

              <!-- Body -->
              <div class="ms-6">

                <!-- Heading -->
                <h6 class="mb-1 heading-xxs">
                  Secure shopping
                </h6>

                <!-- Text -->
                <p class="mb-0 fs-sm text-muted">
                  You're in safe hands
                </p>

              </div>

            </div>

          </div>
          <div class="col-12 col-md-6 col-lg-3">

            <!-- Item -->
            <div class="d-flex">

              <!-- Icon -->
              <i class="fe fe-tag fs-lg text-primary"></i>

              <!-- Body -->
              <div class="ms-6">

                <!-- Heading -->
                <h6 class="mb-1 heading-xxs">
                  Over 10,000 Styles
                </h6>

                <!-- Text -->
                <p class="mb-0 fs-sm text-muted">
                  We have everything you need
                </p>

              </div>

            </div>

          </div>
        </div>
      </div>
    </section>

    <!-- FOOTER -->
    <footer class="bg-dark bg-cover " style="background-image: url(./assets/img/patterns/pattern-2.svg)">
      <div class="py-12 border-bottom border-gray-700">
        <div class="container">
          <div class="row">
            <div class="col-12 col-md-3">
    
              <!-- Heading -->
              <h4 class="mb-6 text-white">Shopper.</h4>
    
              <!-- Social -->
              <ul class="list-unstyled list-inline mb-7 mb-md-0 text-gray-350">
                <li class="list-inline-item">
                  <a href="#!" class="text-reset">
                    <i class="fab fa-facebook-f"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#!" class="text-reset">
                    <i class="fab fa-youtube"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#!" class="text-reset">
                    <i class="fab fa-twitter"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#!" class="text-reset">
                    <i class="fab fa-instagram"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#!" class="text-reset">
                    <i class="fab fa-medium"></i>
                  </a>
                </li>
              </ul>
    
            </div>
            <div class="col-6 col-sm">
    
              <!-- Heading -->
              <h6 class="heading-xxs mb-4 text-white">
                Support
              </h6>
    
              <!-- Links -->
              <ul class="list-unstyled mb-7 mb-sm-0">
                <li>
                  <a class="text-gray-300" href="./contact-us.html">Contact Us</a>
                </li>
                <li>
                  <a class="text-gray-300" href="./faq.html">FAQs</a>
                </li>
                <li>
                  <a class="text-gray-300" data-bs-toggle="modal" href="#modalSizeChart">Size Guide</a>
                </li>
                <li>
                  <a class="text-gray-300" href="./shipping-and-returns.html">Shipping & Returns</a>
                </li>
              </ul>
    
            </div>
            <div class="col-6 col-sm">
    
              <!-- Heading -->
              <h6 class="heading-xxs mb-4 text-white">
                Shop
              </h6>
    
              <!-- Links -->
              <ul class="list-unstyled mb-7 mb-sm-0">
                <li>
                  <a class="text-gray-300" href="./shop.html">Men's Shopping</a>
                </li>
                <li>
                  <a class="text-gray-300" href="./shop.html">Women's Shopping</a>
                </li>
                <li>
                  <a class="text-gray-300" href="./shop.html">Kids' Shopping</a>
                </li>
                <li>
                  <a class="text-gray-300" href="./shop.html">Discounts</a>
                </li>
              </ul>
    
            </div>
            <div class="col-6 col-sm">
    
              <!-- Heading -->
              <h6 class="heading-xxs mb-4 text-white">
                Company
              </h6>
    
              <!-- Links -->
              <ul class="list-unstyled mb-0">
                <li>
                  <a class="text-gray-300" href="./about.html">Our Story</a>
                </li>
                <li>
                  <a class="text-gray-300" href="#!">Careers</a>
                </li>
                <li>
                  <a class="text-gray-300" href="#!">Terms & Conditions</a>
                </li>
                <li>
                  <a class="text-gray-300" href="#!">Privacy & Cookie policy</a>
                </li>
              </ul>
    
            </div>
            <div class="col-6 col-sm">
    
              <!-- Heading -->
              <h6 class="heading-xxs mb-4 text-white">
                Contact
              </h6>
    
              <!-- Links -->
              <ul class="list-unstyled mb-0">
                <li>
                  <a class="text-gray-300" href="#!">1-202-555-0105</a>
                </li>
                <li>
                  <a class="text-gray-300" href="#!">1-202-555-0106</a>
                </li>
                <li>
                  <a class="text-gray-300" href="#!">help@shopper.com</a>
                </li>
              </ul>
    
            </div>
          </div>
        </div>
      </div>
      <div class="py-6">
        <div class="container">
          <div class="row">
            <div class="col">
    
              <!-- Copyright -->
              <p class="mb-3 mb-md-0 fs-xxs text-muted">
                © 2019 All rights reserved. Designed by Unvab.
              </p>
    
            </div>
            <div class="col-auto">
    
              <!-- Payment methods -->
              <img class="footer-payment" src="./assets/img/payment/mastercard.svg" alt="...">
              <img class="footer-payment" src="./assets/img/payment/visa.svg" alt="...">
              <img class="footer-payment" src="./assets/img/payment/amex.svg" alt="...">
              <img class="footer-payment" src="./assets/img/payment/paypal.svg" alt="...">
              <img class="footer-payment" src="./assets/img/payment/maestro.svg" alt="...">
              <img class="footer-payment" src="./assets/img/payment/klarna.svg" alt="...">
    
            </div>
          </div>
        </div>
      </div>
    </footer>

    <!-- JAVASCRIPT -->
    <!-- Map (replace the API key to enable) -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCnKt8_N4-FKOnhI_pSaDL7g_g-XI1-R9E"></script>
    
    <!-- Vendor JS -->
    <script src="./assets/js/vendor.bundle.js"></script>
    
    <!-- Theme JS -->
    <script src="./assets/js/theme.bundle.js"></script>

  </body>
</html>
