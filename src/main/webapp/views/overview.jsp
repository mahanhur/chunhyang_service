<!doctype html>
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
    <nav class="navbar navbar-expand-xl navbar-light ">
      <div class="container">
    
        <!-- Brand -->
        <a class="navbar-brand" href="./overview.html">
          Shopper.
        </a>
    
        <!-- Toggler -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarDocsTopCollapse" aria-controls="navbarDocsTopCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    
        <!-- Collapse -->
        <div class="collapse navbar-collapse" id="navbarDocsTopCollapse">
    
          <!-- Nav -->
          <ul class="navbar-nav mx-auto">
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
            <li class="nav-item dropdown position-static">
    
              <!-- Toggle -->
              <a class="nav-link" data-bs-toggle="dropdown" data-bs-auto-close="outside" href="#">Catalog</a>
    
              <!-- Menu -->
              <div class="dropdown-menu w-100">
              
                <!-- Tabs -->
                <div class="mb-2 mb-lg-0 border-bottom-lg">
                  <div class="container">
                    <div class="row">
                      <div class="col-12">
              
                        <!-- Nav -->
                        <nav class="nav nav-tabs nav-overflow fs-xs border-bottom border-bottom-lg-0">
                          <a class="nav-link text-uppercase active" data-bs-toggle="tab" href="#navTab">
                            Women
                          </a>
                          <a class="nav-link text-uppercase" data-bs-toggle="tab" href="#navTab">
                            Men
                          </a>
                          <a class="nav-link text-uppercase" data-bs-toggle="tab" href="#navTab">
                            Kids
                          </a>
                        </nav>
              
                      </div>
                    </div>
                  </div>
                </div>
              
                <!-- Tab content -->
                <div class="card card-lg">
                  <div class="card-body">
                    <div class="tab-content">
                      <div class="tab-pane fade show active" id="navTab">
                        <div class="container">
                          <div class="row">
                            <div class="col-6 col-md">
              
                              <!-- Heading -->
                              <div class="mb-5 fw-bold">Clothing</div>
              
                              <!-- Links -->
                              <ul class="list-styled mb-6 mb-md-0 fs-sm">
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
                            <div class="col-6 col-md">
              
                              <!-- Heading -->
                              <div class="mb-5 fw-bold">Shoes & Boots</div>
              
                              <!-- Links -->
                              <ul class="list-styled mb-6 mb-md-0 fs-sm">
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
                            <div class="col-6 col-md">
              
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
                            <div class="col-6 col-md">
              
                              <!-- Heading -->
                              <div class="mb-5 fw-bold">Collections</div>
              
                              <!-- Links -->
                              <ul class="list-styled mb-0 fs-sm">
                                <li class="list-styled-item">
                                  <a class="list-styled-link" href="./shop.html">All Collections</a>
                                </li>
                                <li class="list-styled-item">
                                  <a class="list-styled-link" href="./shop.html">Occasionwear</a>
                                </li>
                                <li class="list-styled-item">
                                  <a class="list-styled-link" href="./shop.html">Going Out</a>
                                </li>
                                <li class="list-styled-item">
                                  <a class="list-styled-link" href="./shop.html">Workwear</a>
                                </li>
                                <li class="list-styled-item">
                                  <a class="list-styled-link" href="./shop.html">Holiday Shop</a>
                                </li>
                                <li class="list-styled-item">
                                  <a class="list-styled-link" href="./shop.html">Jean Fit Guide</a>
                                </li>
                              </ul>
              
                            </div>
                            <div class="col-4 d-none d-lg-block">
              
                              <!-- Card -->
                              <div class="card">
              
                                <!-- Image -->
                                <img class="card-img" src="./assets/img/products/product-110.jpg" alt="...">
              
                                <!-- Overlay -->
                                <div class="card-img-overlay bg-dark-0 bg-hover align-items-center">
                                  <div class="text-center">
                                    <a class="btn btn-white stretched-link" href="./shop.html">
                                      Shop Sweaters <i class="fe fe-arrow-right ms-2"></i>
                                    </a>
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
              <a class="nav-link" href="./docs/getting-started.html">Docs</a>
            </li>
          </ul>
    
          <!-- Button -->
          <a class="btn w-100 btn-sm btn-dark w-xl-auto mt-2 my-xl-n2" href="https://themes.getbootstrap.com/product/shopper/" target="_blank">Buy Now for $49</a>
    
        </div>
    
      </div>
    </nav>

    <!-- WELCOME -->
    <section class="pt-9 pt-md-12 pb-12 border-bottom overflow-hidden" id="welcome">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-12 col-md-5 col-lg-6 col-xl-7 order-md-2">

            <!-- Image -->
            <img class="img-fluid min-w-md-200 min-w-lg-125 mb-9 mb-md-0" src="assets/img/devices/devices-1.png" alt="...">

          </div>
          <div class="col-12 col-md-7 col-lg-6 col-xl-5 order-md-1">

            <!-- Heading -->
            <h1 class="mb-4">
              Flexible E-Commerce Bootstrap Template
            </h1>

            <!-- Text -->
            <p class="mb-7 fs-lg text-gray-500">
              Shopper is a beautiful, simple and flexible e-commerce template built on top of Bootstrap. It includes dozens of components and pages you can use “as is” or customize to build exactly what you need.
            </p>

            <!-- Button -->
            <a class="btn btn-primary" href="#pages" data-smoothscroll>
              Find Out More
            </a>

          </div>
        </div>
      </div>
    </section>

    <!-- FEATURES -->
    <section class="py-7">
      <div class="container">
        <div class="row">
          <div class="col-12 col-md-6 col-lg-3">

            <!-- Item -->
            <div class="d-flex mb-6 mb-lg-0">

              <!-- Icon -->
              <i class="fe fe-home fs-lg text-primary"></i>

              <!-- Body -->
              <div class="ms-6">

                <!-- Heading -->
                <h6 class="heading-xxs mb-1">
                  8 homepage variations
                </h6>

                <!-- Text -->
                <p class="mb-0 fs-sm text-muted">
                  Including a landing page with an anchor navigation.
                </p>

              </div>

            </div>

          </div>
          <div class="col-12 col-md-6 col-lg-3">

            <!-- Item -->
            <div class="d-flex mb-6 mb-lg-0">

              <!-- Icon -->
              <i class="fe fe-file-text fs-lg text-primary"></i>

              <!-- Body -->
              <div class="ms-6">

                <!-- Heading -->
                <h6 class="mb-1 heading-xxs">
                  30+ support pages
                </h6>

                <!-- Text -->
                <p class="mb-0 fs-sm text-muted">
                  Shop, account, blog and other inner pages.
                </p>

              </div>

            </div>

          </div>
          <div class="col-12 col-md-6 col-lg-3">

            <!-- Item -->
            <div class="d-flex mb-6 mb-md-0">

              <!-- Icon -->
              <i class="fe fe-menu fs-lg text-primary"></i>

              <!-- Body -->
              <div class="ms-6">

                <!-- Heading -->
                <h6 class="mb-1 heading-xxs">
                  10+ navigation variations
                </h6>

                <!-- Text -->
                <p class="mb-0 fs-sm text-muted">
                  Multiple horizontal and vertical navigation options.
                </p>

              </div>

            </div>

          </div>
          <div class="col-12 col-md-6 col-lg-3">

            <!-- Item -->
            <div class="d-flex">

              <!-- Icon -->
              <i class="fe fe-shopping-bag fs-lg text-primary"></i>

              <!-- Body -->
              <div class="ms-6">

                <!-- Heading -->
                <h6 class="mb-1 heading-xxs">
                  8 product card variations
                </h6>

                <!-- Text -->
                <p class="mb-0 fs-sm text-muted">
                  To showcase and sell anything you want.
                </p>

              </div>

            </div>

          </div>
        </div>
      </div>
    </section>

    <!-- HOMEPAGES -->
    <section class="py-12 bg-light" id="pages">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-12 col-md-10 col-lg-9 col-xl-6 text-center">

            <!-- Heading -->
            <h2 class="mb-3">Homepages</h2>

            <!-- Subheading -->
            <p class="mb-10 fs-lg text-gray-500">
              8 homepage variations including a sample landing page with anchor navigation.
            </p>

          </div>
        </div>
        <div class="row">
          <div class="col-12 col-md-4">

            <!-- Card -->
            <a class="card mb-7 bg-transparent text-body" href="index.html">

              <!-- Image -->
              <img class="card-img-top shadow shadow-hover lift" src="assets/img/screenshots/home/index-default.png" alt="...">

              <!-- Body -->
              <div class="card-body text-center">
                <strong class="fs-lg">Default</strong>
              </div>

            </a>

          </div>
          <div class="col-12 col-md-4">

            <!-- Card -->
            <a class="card mb-7 bg-transparent text-body" href="index-classic.html">

              <!-- Image -->
              <img class="card-img-top shadow shadow-hover lift" src="assets/img/screenshots/home/index-classic.png" alt="...">

              <!-- Body -->
              <div class="card-body text-center">
                <strong class="fs-lg">Classic</strong>
              </div>

            </a>

          </div>
          <div class="col-12 col-md-4">

            <!-- Card -->
            <a class="card mb-7 bg-transparent text-body" href="index-fashion.html">

              <!-- Image -->
              <img class="card-img-top shadow shadow-hover lift" src="assets/img/screenshots/home/index-fashion.png" alt="...">

              <!-- Body -->
              <div class="card-body text-center">
                <strong class="fs-lg">Fashion</strong>
              </div>

            </a>

          </div>
          <div class="col-12 col-md-4">

            <!-- Card -->
            <a class="card mb-7 bg-transparent text-body" href="index-boxed.html">

              <!-- Image -->
              <img class="card-img-top shadow shadow-hover lift" src="assets/img/screenshots/home/index-boxed.png" alt="...">

              <!-- Body -->
              <div class="card-body text-center">
                <strong class="fs-lg">Boxes</strong>
              </div>

            </a>

          </div>
          <div class="col-12 col-md-4">

            <!-- Card -->
            <a class="card mb-7 bg-transparent text-body" href="index-simple.html">

              <!-- Image -->
              <img class="card-img-top shadow shadow-hover lift" src="assets/img/screenshots/home/index-simple.png" alt="...">

              <!-- Body -->
              <div class="card-body text-center">
                <strong class="fs-lg">Simple</strong>
              </div>

            </a>

          </div>
          <div class="col-12 col-md-4">

            <!-- Card -->
            <a class="card mb-7 bg-transparent text-body" href="index-asymmetric.html">

              <!-- Image -->
              <img class="card-img-top shadow shadow-hover lift" src="assets/img/screenshots/home/index-asymmetric.png" alt="...">

              <!-- Body -->
              <div class="card-body text-center">
                <strong class="fs-lg">Asymmetric</strong>
              </div>

            </a>

          </div>
          <div class="col-12 col-md-4">

            <!-- Card -->
            <a class="card mb-7 mb-md-0 bg-transparent text-body" href="index-sidenav.html">

              <!-- Image -->
              <img class="card-img-top shadow shadow-hover lift" src="assets/img/screenshots/home/index-sidenav.png" alt="...">

              <!-- Body -->
              <div class="card-body text-center">
                <strong class="fs-lg">Sidenav</strong>
              </div>

            </a>

          </div>
          <div class="col-12 col-md-4">

            <!-- Card -->
            <a class="card mb-7 mb-md-0 bg-transparent text-body" href="index-landing.html">

              <!-- Image -->
              <img class="card-img-top shadow shadow-hover lift" src="assets/img/screenshots/home/index-landing.png" alt="...">

              <!-- Body -->
              <div class="card-body text-center">
                <strong class="fs-lg">Landing</strong>
              </div>

            </a>

          </div>
          <div class="col-12 col-md-4">

            <!-- Card -->
            <div class="card shadow" style="padding-bottom: 112%">
              <div class="card-body d-flex flex-column align-items-center justify-content-center cover">

                <!-- Text -->
                <p class="text-center text-gray-500">
                  More pages coming soon! Feel free to contact us with your ideas.
                </p>

                <!-- Button -->
                <a class="btn btn-primary btn-xs" href="mailto:plus.unvab@gmail.com">Contact Us</a>

              </div>
            </div>

          </div>
        </div>
      </div>
    </section>

    <!-- SHOP PAGES-->
    <section class="py-12 bg-dark">
      <div class="container">
        <div class="row">
          <div class="col-12 text-center">

            <!-- Heading -->
            <h2 class="mb-10 text-white">Shop & Account Pages</h2>

          </div>
        </div>
        <div class="row">
          <div class="col-12">

            <!-- Slider -->
            <div data-flickity='{"pageDots": true}'>
              <div class="col-12 col-md-4 pt-1 px-4">

                <!-- Item -->
                <a class="d-block lift" href="shop.html">
                  <img class="img-fluid" src="assets/img/screenshots/shop/shop.png" alt="...">
                </a>

              </div>
              <div class="col-12 col-md-4 pt-1 px-4">

                <!-- Item -->
                <a class="d-block lift" href="shop-topbar.html">
                  <img class="img-fluid" src="assets/img/screenshots/shop/shop-topbar.png" alt="...">
                </a>

              </div>
              <div class="col-12 col-md-4 pt-1 px-4">

                <!-- Item -->
                <a class="d-block lift" href="shop-collapse.html">
                  <img class="img-fluid" src="assets/img/screenshots/shop/shop-collapse.png" alt="...">
                </a>

              </div>
              <div class="col-12 col-md-4 pt-1 px-4">

                <!-- Item -->
                <a class="d-block lift" href="shop-simple.html">
                  <img class="img-fluid" src="assets/img/screenshots/shop/shop-simple.png" alt="...">
                </a>

              </div>
              <div class="col-12 col-md-4 pt-1 px-4">

                <!-- Item -->
                <a class="d-block lift" href="shop-masonry.html">
                  <img class="img-fluid" src="assets/img/screenshots/shop/shop-masonry.png" alt="...">
                </a>

              </div>
              <div class="col-12 col-md-4 pt-1 px-4">

                <!-- Item -->
                <a class="d-block lift" href="product.html">
                  <img class="img-fluid" src="assets/img/screenshots/shop/product.png" alt="...">
                </a>

              </div>
              <div class="col-12 col-md-4 pt-1 px-4">

                <!-- Item -->
                <a class="d-block lift" href="product-images-left.html">
                  <img class="img-fluid" src="assets/img/screenshots/shop/product-images-left.png" alt="...">
                </a>

              </div>
              <div class="col-12 col-md-4 pt-1 px-4">

                <!-- Item -->
                <a class="d-block lift" href="product-image-grid.html">
                  <img class="img-fluid" src="assets/img/screenshots/shop/product-image-grid.png" alt="...">
                </a>

              </div>
              <div class="col-12 col-md-4 pt-1 px-4">

                <!-- Item -->
                <a class="d-block lift" href="product-image-slider.html">
                  <img class="img-fluid" src="assets/img/screenshots/shop/product-image-slider.png" alt="...">
                </a>

              </div>
              <div class="col-12 col-md-4 pt-1 px-4">

                <!-- Item -->
                <a class="d-block lift" href="product-images-stacked.html">
                  <img class="img-fluid" src="assets/img/screenshots/shop/product-images-stacked.png" alt="...">
                </a>

              </div>
              <div class="col-12 col-md-4 pt-1 px-4">

                <!-- Item -->
                <a class="d-block lift" href="shopping-cart.html">
                  <img class="img-fluid" src="assets/img/screenshots/shop/shopping-cart.png" alt="...">
                </a>

              </div>
              <div class="col-12 col-md-4 pt-1 px-4">

                <!-- Item -->
                <a class="d-block lift" href="checkout.html">
                  <img class="img-fluid" src="assets/img/screenshots/shop/checkout.png" alt="...">
                </a>

              </div>
              <div class="col-12 col-md-4 pt-1 px-4">

                <!-- Item -->
                <a class="d-block lift" href="order-completed.html">
                  <img class="img-fluid" src="assets/img/screenshots/shop/order-completed.png" alt="...">
                </a>

              </div>
              <div class="col-12 col-md-4 pt-1 px-4">

                <!-- Item -->
                <a class="d-block lift" href="shipping-and-returns.html">
                  <img class="img-fluid" src="assets/img/screenshots/shop/shipping-and-returns.png" alt="...">
                </a>

              </div>
            </div>

          </div>
        </div>
      </div>
    </section>

    <!-- HEADERS -->
    <section class="py-12 bg-light">
      <div class="container">
        <div class="row">
          <div class="col-12 text-center">

            <!-- Heading -->
            <h2 class="mb-10">Headers</h2>

          </div>
        </div>
        <div class="row">
          <div class="col-12">

            <!-- Image -->
            <img class="img-fluid mb-7 border shadow" src="assets/img/screenshots/nav/nav-1.png" alt="...">

            <!-- Image -->
            <img class="img-fluid mb-7 border shadow" src="assets/img/screenshots/nav/nav-2.png" alt="...">

            <!-- Image -->
            <img class="img-fluid mb-7 border shadow" src="assets/img/screenshots/nav/nav-3.png" alt="...">

            <!-- Image -->
            <img class="img-fluid mb-7 border shadow" src="assets/img/screenshots/nav/nav-4.png" alt="...">

            <!-- Image -->
            <img class="img-fluid mb-7 border shadow" src="assets/img/screenshots/nav/nav-5.png" alt="...">

            <!-- Image -->
            <img class="img-fluid border shadow" src="assets/img/screenshots/nav/nav-6.png" alt="...">

          </div>
        </div>
      </div>
    </section>

    <!-- DROPDOWNS -->
    <section class="py-12">
      <div class="container">
        <div class="row">
          <div class="col-12 text-center">

            <!-- Heading -->
            <h2 class="mb-10">Mega Menu Dropdowns</h2>

          </div>
        </div>
        <div class="row justify-content-center">
          <div class="col-12 col-md-6">

            <!-- Image -->
            <img class="img-fluid mb-7 border shadow" src="assets/img/screenshots/menu/menu-1.jpg" alt="...">

          </div>
          <div class="col-12 col-md-6">

            <!-- Image -->
            <img class="img-fluid mb-7 border shadow" src="assets/img/screenshots/menu/menu-2.jpg" alt="...">

          </div>
          <div class="col-12 col-md-5">

            <!-- Image -->
            <img class="img-fluid mb-7 mb-md-0 border shadow" src="assets/img/screenshots/menu/menu-3.jpg" alt="...">

          </div>
          <div class="col-12 col-md-7">

            <!-- Image -->
            <img class="img-fluid border shadow" src="assets/img/screenshots/menu/menu-4.jpg" alt="...">

          </div>
        </div>
      </div>
    </section>

    <!-- SUPPORT PAGES-->
    <section class="py-12 bg-dark">
      <div class="container">
        <div class="row">
          <div class="col-12 text-center">

            <!-- Heading -->
            <h2 class="mb-10 text-white">Support & Blog Pages</h2>

          </div>
        </div>
        <div class="row">
          <div class="col-12">

            <!-- Slider -->
            <div class="flickity-buttons-lg flickity-light px-lg-12" data-flickity='{"prevNextButtons": true}'>
              <div class="col-12 col-md-4 col-lg-3 pt-1 px-4">

                <!-- Card -->
                <a class="card card-sm bg-transparent text-white" href="about.html">

                  <!-- Image -->
                  <img class="card-img-top lift shadow shadow-hover" src="assets/img/screenshots/support/about.jpg" alt="...">

                  <!-- Body -->
                  <div class="card-body text-center">
                    <strong class="fs-lg">About</strong>
                  </div>

                </a>

              </div>
              <div class="col-12 col-md-4 col-lg-3 pt-1 px-4">

                <!-- Card -->
                <a class="card card-sm bg-transparent text-white" href="contact-us.html">

                  <!-- Image -->
                  <img class="card-img-top lift shadow shadow-hover" src="assets/img/screenshots/support/contact-us.jpg" alt="...">

                  <!-- Body -->
                  <div class="card-body text-center">
                    <strong class="fs-lg">Contact Us</strong>
                  </div>

                </a>

              </div>
              <div class="col-12 col-md-4 col-lg-3 pt-1 px-4">

                <!-- Card -->
                <a class="card card-sm bg-transparent text-white" href="store-locator.html">

                  <!-- Image -->
                  <img class="card-img-top lift shadow shadow-hover" src="assets/img/screenshots/support/store-locator.jpg" alt="...">

                  <!-- Body -->
                  <div class="card-body text-center">
                    <strong class="fs-lg">Store Locator</strong>
                  </div>

                </a>

              </div>
              <div class="col-12 col-md-4 col-lg-3 pt-1 px-4">

                <!-- Card -->
                <a class="card card-sm bg-transparent text-white" href="faq.html">

                  <!-- Image -->
                  <img class="card-img-top lift shadow shadow-hover" src="assets/img/screenshots/support/faq.jpg" alt="...">

                  <!-- Body -->
                  <div class="card-body text-center">
                    <strong class="fs-lg">FAQ</strong>
                  </div>

                </a>

              </div>
              <div class="col-12 col-md-4 col-lg-3 pt-1 px-4">

                <!-- Card -->
                <a class="card card-sm bg-transparent text-white" href="coming-soon.html">

                  <!-- Image -->
                  <img class="card-img-top lift shadow shadow-hover" src="assets/img/screenshots/support/coming-soon.jpg" alt="...">

                  <!-- Body -->
                  <div class="card-body text-center">
                    <strong class="fs-lg">Coming Soon</strong>
                  </div>

                </a>

              </div>
              <div class="col-12 col-md-4 col-lg-3 pt-1 px-4">

                <!-- Card -->
                <a class="card card-sm bg-transparent text-white" href="404.html">

                  <!-- Image -->
                  <img class="card-img-top lift shadow shadow-hover" src="assets/img/screenshots/support/404.jpg" alt="...">

                  <!-- Body -->
                  <div class="card-body text-center">
                    <strong class="fs-lg">Not Found</strong>
                  </div>

                </a>

              </div>
            </div>

          </div>
        </div>
      </div>
    </section>

    <!-- PRODUCT STYLES -->
    <section class="py-12">
      <div class="container">
        <div class="row">
          <div class="col-12 text-center">

            <!-- Heading -->
            <h2 class="mb-10">Product Cards</h2>

          </div>
        </div>
        <div class="row">
          <div class="col-12">

            <!-- Slider -->
            <div data-flickity='{"pageDots": true}'>
              <div class="col-12 col-md-4 col-lg-3 px-4">

                <!-- Card -->
                <div class="card">

                  <!-- Badge -->
                  <div class="badge bg-dark card-badge card-badge-start text-uppercase">
                    Sale
                  </div>

                  <!-- Image -->
                  <div class="card-img">

                    <!-- Image -->
                    <a class="card-img-hover" href="product.html">
                      <img class="card-img-top card-img-back" src="assets/img/products/product-122.jpg" alt="...">
                      <img class="card-img-top card-img-front" src="assets/img/products/product-7.jpg" alt="...">
                    </a>

                    <!-- Actions -->
                    <div class="card-actions">
                      <span class="card-action">
                        <button class="btn btn-xs btn-circle btn-white-primary" data-bs-toggle="modal" data-bs-target="#modalProduct">
                          <i class="fe fe-eye"></i>
                        </button>
                      </span>
                      <span class="card-action">
                        <button class="btn btn-xs btn-circle btn-white-primary" data-toggle="button">
                          <i class="fe fe-shopping-cart"></i>
                        </button>
                      </span>
                      <span class="card-action">
                        <button class="btn btn-xs btn-circle btn-white-primary" data-toggle="button">
                          <i class="fe fe-heart"></i>
                        </button>
                      </span>
                    </div>

                  </div>

                  <!-- Body -->
                  <div class="card-body px-0">

                    <!-- Category -->
                    <div class="fs-xs">
                      <a class="text-muted" href="shop.html">Shoes</a>
                    </div>

                    <!-- Title -->
                    <div class="fw-bold">
                      <a class="text-body" href="product.html">
                        Leather Sneakers
                      </a>
                    </div>

                    <!-- Price -->
                    <div class="fw-bold">
                      <span class="fs-xs text-gray-350 text-decoration-line-through">$85.00</span>
                      <span class="text-primary">$85.00</span>
                    </div>

                  </div>

                </div>

              </div>
              <div class="col-12 col-md-4 col-lg-3 px-4">

                <!-- Card -->
                <div class="card">

                  <!-- Image -->
                  <div class="card-img">

                    <!-- Action -->
                    <button class="btn btn-xs btn-circle btn-white-primary card-action card-action-end" data-toggle="button">
                      <i class="fe fe-heart"></i>
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
                    <a class="text-body" href="product.html">Cotton leaf print Shirt</a> <br>
                    <span class="text-muted">$65.00</span>
                  </div>

                </div>

              </div>
              <div class="col-12 col-md-4 col-lg-3 px-4">

                <!-- Card -->
                <div class="card" data-toggle="card-collapse">

                  <!-- Badge -->
                  <div class="badge bg-white text-body card-badge card-badge-start text-uppercase">
                    New
                  </div>

                  <!-- Image -->
                  <a href="product.html">
                    <img class="card-img-top" src="assets/img/products/product-12.jpg" alt="..." />
                  </a>

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
                              <input class="form-check-input" type="radio" id="productEightColorOne" name="productEightColor" style="background-color: black" checked />
                            </div>
                            <div class="form-check form-check-inline form-check-color ms-n2">
                              <input class="form-check-input" type="radio" id="productEightColorTwo" name="productEightColor" style="background-color: red" />
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
              <div class="col-12 col-md-4 col-lg-3 px-4">

                <!-- Card -->
                <div class="card" data-toggle="card-collapse">

                  <!-- Image -->
                  <a href="product.html">
                    <img src="assets/img/products/product-11.jpg" alt="..." class="card-img-top">
                  </a>

                  <!-- Collapse -->
                  <div class="card-collapse-parent">

                    <!-- Body -->
                    <div class="card-body px-0 bg-white text-center">

                      <!-- Heading -->
                      <div class="mb-1 fw-bold">
                        <a class="text-body" href="product.html">Printed A-line Skirt</a>
                      </div>

                      <!-- Price -->
                      <div class="mb-1 fw-bold text-muted">
                        $79.00
                      </div>

                      <!-- Rating -->
                      <div class="rating fs-xxs text-dark justify-content-center" data-value="5">
                        <div class="rating-item">
                          <i class="fas fa-star"></i>
                        </div>
                        <div class="rating-item">
                          <i class="fas fa-star"></i>
                        </div>
                        <div class="rating-item">
                          <i class="fas fa-star"></i>
                        </div>
                        <div class="rating-item">
                          <i class="fas fa-star"></i>
                        </div>
                        <div class="rating-item">
                          <i class="fas fa-star"></i>
                        </div>
                      </div>

                    </div>

                    <!-- Footer -->
                    <div class="card-collapse collapse">
                      <div class="card-footer px-0 pt-0 bg-white text-center">
                        <button class="btn btn-xs btn-link btn-circle" data-bs-toggle="modal" data-bs-target="#modalProduct">
                          <i class="fe fe-eye"></i>
                        </button>
                        <button class="btn btn-xs btn-link btn-circle" data-toggle="button">
                          <i class="fe fe-shopping-cart"></i>
                        </button>
                        <button class="btn btn-xs btn-link btn-circle" data-toggle="button">
                          <i class="fe fe-heart"></i>
                        </button>
                      </div>
                    </div>

                  </div>

                </div>

              </div>
              <div class="col-12 col-md-4 col-lg-3 px-4">

                <!-- Card -->
                <a class="card shadow-hover" href="product">

                  <!-- Image -->
                  <img src="assets/img/products/product-50.jpg" alt="..." class="card-img-top">

                  <!-- Body -->
                  <div class="card-body fw-bold text-center">

                    <!-- Heading -->
                    <div class="text-body">Cropped cotton Top</div>

                    <!-- Price -->
                    <div class="text-muted">$29.00</div>

                  </div>

                </a>

              </div>
              <div class="col-12 col-md-4 col-lg-3 px-4">

                <!-- Card -->
                <div class="card card-lg shadow-hover">

                  <!-- Circle -->
                  <div class="card-circle card-circle-end">
                    <strong class="fs-xs">save</strong>
                    <span class="h6 mb-0">30%</span>
                  </div>

                  <!-- Image -->
                  <img src="assets/img/products/product-94.jpg" alt="..." class="card-img-top">

                  <!-- Body -->
                  <div class="card-body mt-n6 text-center">

                    <!-- Heading -->
                    <p class="mb-3 fw-bold">
                      Blue contact Lenses <br>
                      <span class="fs-xs text-gray-350 text-decoration-line-through">$40.00</span> <span class="text-primary">$28.00</span>
                    </p>

                    <!-- Text -->
                    <p class="text-muted">
                      Good male give subdue set one, image that his beginning.
                    </p>

                    <!-- Button -->
                    <a href="#!" class="btn btn-sm btn-outline-primary">
                      Add to Cart
                    </a>

                  </div>

                </div>

              </div>
              <div class="col-12 col-md-4 col-lg-3 px-4">

                <!-- Card -->
                <div class="card bg-cover" style="min-height: 240px; background-image: url(assets/img/products/product-82.jpg);">

                  <!-- Badge -->
                  <div class="badge bg-dark card-badge card-badge-start text-uppercase">
                    Sale
                  </div>

                  <!-- Overlay -->
                  <div class="card-img-overlay card-img-overlay-hover align-items-center bg-white-90">
                    <div class="text-center">
                      <p class="fw-bold">
                        <a class="text-body" href="product.html">Cotton leaf print Shirt</a> <br>
                        <span class="text-muted">$65.00</span>
                      </p>
                      <p class="mb-0">
                        <button class="btn btn-xs btn-link btn-circle" data-bs-toggle="modal" data-bs-target="#modalProduct">
                          <i class="fe fe-eye"></i>
                        </button>
                        <button class="btn btn-xs btn-link btn-circle" data-toggle="button">
                          <i class="fe fe-shopping-cart"></i>
                        </button>
                        <button class="btn btn-xs btn-link btn-circle" data-toggle="button">
                          <i class="fe fe-heart"></i>
                        </button>
                      </p>
                    </div>
                  </div>

                </div>

              </div>
              <div class="col-12 col-md-8 col-lg-6 px-4">
                <div class="row align-items-center">
                  <div class="col-8 col-lg-6">

                    <!-- Card -->
                    <div class="card">

                      <!-- Price -->
                      <div class="btn btn-white btn-sm card-price card-price-start">$59.00</div>

                      <!-- Image -->
                      <a href="product.html">
                        <img src="assets/img/products/product-65.jpg" alt="..." class="card-img-top">
                      </a>

                    </div>

                  </div>
                  <div class="col-7 col-lg-6 offset-n3 offset-lg-n1 position-relative">

                    <!-- Heading -->
                    <h2 class="mb-0">
                      <a class="text-reset" href="product.html">Floral Cotton midi Dress</a>
                    </h2>

                    <!-- Link -->
                    <a class="btn btn-link px-0 text-body" href="product.html">
                      Shop Now <i class="fe fe-arrow-right ms-2"></i>
                    </a>

                  </div>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
    </section>

    <!-- RESPONSIVE -->
    <section class="bg-h-100" style="background: #F0F0F0 url(assets/img/devices/devices-2.jpg);">
      <div class="container">
        <div class="row">
          <div class="col-12 col-md-8 col-lg-6 col-xl-4 py-14">

            <!-- Heading -->
            <h2 class="mb-6">Fully Responsive and Mobile Optimized</h2>

            <!-- Text -->
            <p class="fs-lg text-gray-500 mb-0">
              Shopper is designed to look great on desktop computers, tablets and mobile devices.
            </p>

          </div>
        </div>
      </div>
    </section>

    <!-- FEATURES -->
    <section class="py-12">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-12 col-md-10 col-lg-8 col-xl-6 text-center">

            <!-- Heading -->
            <h2 class="mb-3">Key Features</h2>

            <!-- Subheading -->
            <p class="mb-10 fs-lg text-gray-500">
              Something that makes Shopper stand out against competitors.
            </p>

          </div>
        </div>
        <div class="row mb-10">
          <div class="col-12 col-md-6 col-lg-4">

            <!-- Card -->
            <div class="card card-sm mb-7 border">
              <div class="card-body d-flex align-items-center">

                <!-- Image -->
                <img class="me-4" src="assets/img/icons/brands/bootstrap.svg" alt="...">

                <!-- Title -->
                <strong class="fs-lg">
                  Built with Bootstrap
                </strong>

              </div>
            </div>

          </div>
          <div class="col-12 col-md-6 col-lg-4">

            <!-- Card -->
            <div class="card card-sm mb-7 border">
              <div class="card-body d-flex align-items-center">

                <!-- Image -->
                <img class="me-4" src="assets/img/icons/brands/figma.svg" alt="...">

                <!-- Title -->
                <strong class="fs-lg">
                  Figma design files included
                </strong>

              </div>
            </div>

          </div>
          <div class="col-12 col-md-6 col-lg-4">

            <!-- Card -->
            <div class="card card-sm mb-7 mb-lg-0 border">
              <div class="card-body d-flex align-items-center">

                <!-- Image -->
                <img class="me-4" src="assets/img/icons/brands/sass.svg" alt="...">

                <!-- Title -->
                <strong class="fs-lg">
                  Easy customization with SASS variables
                </strong>

              </div>
            </div>

          </div>
          <div class="col-12 col-md-6 col-lg-4">

            <!-- Card -->
            <div class="card card-sm mb-7 mb-lg-0 border">
              <div class="card-body d-flex align-items-center">

                <!-- Image -->
                <img class="me-4" src="assets/img/icons/brands/gulp.svg" alt="...">

                <!-- Title -->
                <strong class="fs-lg">
                  Gulp tooling to automate the workflow
                </strong>

              </div>
            </div>

          </div>
          <div class="col-12 col-md-6 col-lg-4">

            <!-- Card -->
            <div class="card card-sm mb-7 mb-md-0 border">
              <div class="card-body d-flex align-items-center">

                <!-- Image -->
                <img class="me-4" src="assets/img/icons/brands/w3c.svg" alt="...">

                <!-- Title -->
                <strong class="fs-lg">
                  W3C valid HTML
                </strong>

              </div>
            </div>

          </div>
          <div class="col-12 col-md-6 col-lg-4">

            <!-- Card -->
            <div class="card card-sm border">
              <div class="card-body d-flex align-items-center">

                <!-- Image -->
                <img class="me-4" src="assets/img/icons/brands/doc.svg" alt="...">

                <!-- Title -->
                <strong class="fs-lg">
                  Detailed documentation
                </strong>

              </div>
            </div>

          </div>
        </div>
        <div class="row">
          <div class="col-12 col-md-4">

            <!-- List -->
            <ul class="list-unstyled">
              <li class="d-flex">
                <i class="fas fa-star me-3 text-warning"></i> 8 homepage variations
              </li>
              <li class="d-flex mt-5">
                <i class="fas fa-star me-3 text-warning"></i> 30+ support pages including complete shop, account and blog sections
              </li>
              <li class="d-flex mt-5">
                <i class="fas fa-star me-3 text-warning"></i> 10+ navigation and 4 footer variations
              </li>
              <li class="d-flex mt-5">
                <i class="fas fa-star me-3 text-warning"></i> 4 mega menu dropdown variations
              </li>
              <li class="d-flex mt-5">
                <i class="fas fa-star me-3 text-warning"></i> 10 modal windows for the most common use-cases
              </li>
            </ul>

          </div>
          <div class="col-12 col-md-4">

            <!-- List -->
            <ul class="list-unstyled">
              <li class="d-flex">
                <i class="fas fa-star me-3 text-warning"></i> Browsersync live reload for easier prototyping
              </li>
              <li class="d-flex mt-5">
                <i class="fas fa-star me-3 text-warning"></i> HTML partials for rapid development
              </li>
              <li class="d-flex mt-5">
                <i class="fas fa-star me-3 text-warning"></i> Precompiled files for those who like to keep things simple
              </li>
              <li class="d-flex mt-5">
                <i class="fas fa-star me-3 text-warning"></i> Clean code that stays true to Bootstrap
              </li>
              <li class="d-flex mt-5">
                <i class="fas fa-star me-3 text-warning"></i> Premium plugins included
              </li>

            </ul>

          </div>
          <div class="col-12 col-md-4">

            <!-- List -->
            <ul class="list-unstyled">
              <li class="d-flex">
                <i class="fas fa-star me-3 text-warning"></i> Fully responsive on modern browsers
              </li>
              <li class="d-flex mt-5">
                <i class="fas fa-star me-3 text-warning"></i> Modern and user-friendly design
              </li>
              <li class="d-flex mt-5">
                <i class="fas fa-star me-3 text-warning"></i> Built by professionals with more than 5 years of experience
              </li>
              <li class="d-flex mt-5">
                <i class="fas fa-star me-3 text-warning"></i> Free updates for lifetime
              </li>
              <li class="d-flex mt-5">
                <i class="fas fa-star me-3 text-warning"></i> Free support by e-mail
              </li>
            </ul>

          </div>
        </div>
      </div>
    </section>

    <!-- FOOTER -->
    <footer class="">
      <div class="py-12 bg-dark bg-cover" style="background-image: url(./assets/img/patterns/pattern-2.svg)">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-12 col-md-10 col-lg-8 text-center">
    
              <!-- Brand -->
              <h2 class="mb-7 text-white">
                Bootstrap the development of your online store with Shopper now!
              </h2>
    
              <!-- Buttons -->
              <a class="btn btn-primary" href="https://themes.getbootstrap.com/product/shopper/" target="_blank">
                Buy Now for $49
              </a>
    
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
