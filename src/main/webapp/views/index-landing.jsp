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
  <body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="91" style="padding-top: 90px;">

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
    <nav class="navbar navbar-expand-xl navbar-light fixed-top bg-white">
      <div class="container">
    
        <!-- Brand -->
        <a class="navbar-brand" href="./overview.html">
          Shopper.
        </a>
    
        <!-- Toggler -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarLandingCollapse" aria-controls="navbarLandingCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    
        <!-- Collapse -->
        <div class="collapse navbar-collapse" id="navbarLandingCollapse">
    
          <!-- Nav -->
          <ul class="navbar-nav ms-xl-auto">
            <li class="nav-item">
              <a class="nav-link active" href="#welcome" data-smoothscroll>Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#products" data-smoothscroll>Products</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#about" data-smoothscroll>About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#howItWorks" data-smoothscroll>How it Works</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#pricing" data-smoothscroll>Pricing</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#reviews" data-smoothscroll>Reviews</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#getStarted" data-smoothscroll>Get Started</a>
            </li>
          </ul>
    
          <!-- Nav -->
          <ul class="navbar-nav ms-xl-4">
            <li class="nav-item">
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

    <!-- WELCOME -->
    <section class="py-14" id="welcome" data-jarallax data-speed=".8" style="background-image: url(assets/img/covers/cover-18.jpg);">
      <div class="container">
        <div class="row">
          <div class="col-12 col-md-7 col-lg-5 text-white">

            <!-- Heading -->
            <h1 class="display-4">
              Your Eyes are our Inspiration
            </h1>

            <!-- Text -->
            <p class="mb-8 fs-lg">
              *Starts from $29.99
            </p>

            <!-- Button -->
            <a href="#!" class="btn btn-primary">
              Get Sample Pack
            </a>

          </div>
        </div>
      </div>
    </section>

    <!-- DESCRIPTION -->
    <section class="py-12 bg-light">
      <div class="container">
        <div class="row">
          <div class="col-12 col-lg-3">

            <!-- Heading -->
            <h3 class="mb-10 text-center text-lg-start">
              How is Contact Lenses different?
            </h3>

          </div>
          <div class="col-12 col-md">

            <!-- Card -->
            <div class="card mb-7 mb-md-0 shadow">

              <!-- Image -->
              <img src="assets/img/products/product-91.jpg" alt="..." class="card-img-top">

              <!-- Body -->
              <div class="card-body text-center">
                <img class="me-4" src="assets/img/icons/icon-hands.svg" alt="...">
                <strong>3rd Gen. Lenses</strong>
              </div>

            </div>

          </div>
          <div class="col-12 col-md">

            <!-- Card -->
            <div class="card mb-7 mb-md-0 shadow">

              <!-- Image -->
              <img src="assets/img/products/product-92.jpg" alt="..." class="card-img-top">

              <!-- Body -->
              <div class="card-body text-center">
                <img class="me-4" src="assets/img/icons/icon-wrap.svg" alt="...">
                <strong>No age Restrictions</strong>
              </div>

            </div>

          </div>
          <div class="col-12 col-md">

            <!-- Card -->
            <div class="card shadow">

              <!-- Image -->
              <img src="assets/img/products/product-93.jpg" alt="..." class="card-img-top">

              <!-- Body -->
              <div class="card-body text-center">
                <img class="me-4" src="assets/img/icons/icon-bottle.svg" alt="...">
                <strong>Convenient Packaging</strong>
              </div>

            </div>

          </div>
        </div>
      </div>
    </section>

    <!-- OUR PRODUCTS -->
    <section class="pt-12 pb-10" id="products">
      <div class="container">
        <div class="row">
          <div class="col-12 text-center">

            <!-- Preheading -->
            <h6 class="heading-xxs mb-3 text-gray-400">
              Our products
            </h6>

            <!-- Heading -->
            <h2 class="mb-10">Get your Perfect Lenses</h2>

            <!-- Slider -->
            <div class="flickity-buttons-lg px-lg-12 mt-n3" data-flickity='{"prevNextButtons": true}'>

              <!-- Item -->
              <div class="col-12 col-md-4 pt-3 pb-7 px-4">
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

              <!-- Item -->
              <div class="col-12 col-md-4 pt-3 pb-7 px-4">
                <div class="card card-lg shadow-hover">

                  <!-- Image -->
                  <img src="assets/img/products/product-95.jpg" alt="..." class="card-img-top">

                  <!-- Body -->
                  <div class="card-body mt-n6 text-center">

                    <!-- Heading -->
                    <p class="mb-3 fw-bold">
                      Green contact Lenses <br>
                      $40.00
                    </p>

                    <!-- Text -->
                    <p class="text-muted">
                      Heaven one kind created god, sea beginning yielding.
                    </p>

                    <!-- Button -->
                    <a href="#!" class="btn btn-sm btn-outline-primary">
                      Add to Cart
                    </a>

                  </div>

                </div>
              </div>

              <!-- Item -->
              <div class="col-12 col-md-4 pt-3 pb-7 px-4">
                <div class="card card-lg shadow-hover">

                  <!-- Image -->
                  <img src="assets/img/products/product-96.jpg" alt="..." class="card-img-top">

                  <!-- Body -->
                  <div class="card-body mt-n6 text-center">

                    <!-- Heading -->
                    <p class="mb-3 fw-bold">
                      Red contact Lenses <br>
                      $40.00
                    </p>

                    <!-- Text -->
                    <p class="text-muted">
                      Called fruitful fill also, creature moved Morning saying and our.
                    </p>

                    <!-- Button -->
                    <a href="#!" class="btn btn-sm btn-outline-primary">
                      Add to Cart
                    </a>

                  </div>

                </div>
              </div>

              <!-- Item -->
              <div class="col-12 col-md-4 pt-3 pb-7 px-4">
                <div class="card card-lg shadow-hover">

                  <!-- Image -->
                  <img src="assets/img/products/product-129.jpg" alt="..." class="card-img-top">

                  <!-- Body -->
                  <div class="card-body mt-n6 text-center">

                    <!-- Heading -->
                    <p class="mb-3 fw-bold">
                      Yellow contact Lenses <br>
                      $40.00
                    </p>

                    <!-- Text -->
                    <p class="text-muted">
                      That isn't, dominion saw meat
                      beast lights sea him signs.
                    </p>

                    <!-- Button -->
                    <a href="#!" class="btn btn-sm btn-outline-primary">
                      Add to Cart
                    </a>

                  </div>

                </div>
              </div>

            </div>

          </div>
        </div>
      </div>
    </section>

    <!-- ABOUT -->
    <section class="py-12" id="about" data-jarallax data-speed=".8" style="background-image: url(assets/img/covers/cover-19.jpg);">
      <div class="container">
        <div class="row justify-content-end">
          <div class="col-12 col-md-7 col-lg-5">

            <!-- Card -->
            <div class="card">
              <div class="card-body p-10">

                <!-- Heading -->
                <h3 class="mb-6">About Lenses</h3>

                <!-- Text -->
                <p class="text-muted">
                  Fifth they're greater. You'll own years bring set in
                  said their. Bearing you created. Dominion earth
                  very doesn't good our also gathering can't very.
                  Evening which that waters meat form grass of is
                  them own herb creeping from.
                </p>

                <!-- Link -->
                <a class="link-underline" href="#!">
                  Discover more
                </a>

              </div>
            </div>

          </div>
        </div>
      </div>
    </section>

    <!-- DETAILS -->
    <section class="py-12">
      <div class="container">
        <div class="row">
          <div class="col-12 col-md-4 text-center">

            <!-- Card -->
            <div class="card mb-7 mb-md-0">
              <div class="card-body">

                <!-- Icon -->
                <img class="img-fluid mb-7" src="assets/img/icons/icon-eye.svg" alt="...">

                <!-- Heading -->
                <h6 class="mb-4">For eyes of any Color</h6>

                <!-- Text -->
                <p class="mb-0 text-muted">
                  I over whose fruitful together fish likeness
                  moved our. Give made firmament female
                  set divided make.
                </p>

              </div>
            </div>

          </div>
          <div class="col-12 col-md-4 text-center">

            <!-- Card -->
            <div class="card">
              <div class="card-body mb-7 mb-md-0">

                <!-- Icon -->
                <img class="img-fluid mb-7" src="assets/img/icons/icon-drops.svg" alt="...">

                <!-- Heading -->
                <h6 class="mb-4">Convenient Packaging</h6>

                <!-- Text -->
                <p class="mb-0 text-muted">
                  I over whose fruitful together fish likeness
                  moved our. Give made firmament female
                  set divided make.
                </p>

              </div>
            </div>

          </div>
          <div class="col-12 col-md-4 text-center">

            <!-- Card -->
            <div class="card">
              <div class="card-body">

                <!-- Icon -->
                <img class="img-fluid mb-7" src="assets/img/icons/icon-pack.svg" alt="...">

                <!-- Heading -->
                <h6 class="mb-4">Airtight Materials</h6>

                <!-- Text -->
                <p class="mb-0 text-muted">
                  I over whose fruitful together fish likeness
                  moved our. Give made firmament female
                  set divided make.
                </p>

              </div>
            </div>

          </div>
        </div>
      </div>
    </section>

    <!-- INFO-->
    <section class="bg-light">
      <div class="container">
        <div class="row gx-0 justify-content-between">
          <div class="col-12 col-md-5 py-12">

            <!-- Heading -->
            <h3 class="mb-7">
              We use advanced technology
              in the development of contact
              lenses.
            </h3>

            <!-- Text -->
            <p class="mb-7 text-muted">
              Male his our upon seed had said wherein their
              i great wherein under you'll deep first multiply.
              Fish waters they're herb shall saying.
            </p>

            <!-- Button -->
            <a href="#!" class="btn btn-primary">
              Get Sample Pack
            </a>

          </div>
          <div class="col-12 col-md-6 mt-12 mb-n12 bg-cover" style="background-image: url(assets/img/products/product-97.jpg);"></div>
        </div>
      </div>
    </section>

    <!-- FEATURES-->
    <section class="section pt-12 pt-md-15 pb-12">
      <div class="container">
        <div class="row">
          <div class="col-12 text-center">

            <!-- Preheading -->
            <h6 class="heading-xxs mb-3 text-gray-400">
              Our features
            </h6>

            <!-- Heading -->
            <h2 class="mb-10">Lenses Features</h2>

          </div>
        </div>
        <div class="row align-items-center justify-content-between">
          <div class="col-12 col-md-3 text-md-end">

            <!-- Item -->
            <div class="mb-7 mb-md-13">

              <!-- Heading -->
              <h6 class="position-relative mb-4">
                Convenient tight Box <span class="line line-end d-none d-lg-block"></span>
              </h6>

              <!-- Text -->
              <p class="mb-0 text-muted">
                Together days thing land fifth, gathered
                fish wherein fruit called moveth their,
                which good air gathered.
              </p>

            </div>

            <!-- Item -->
            <div class="mb-7 mb-md-0">

              <!-- Heading -->
              <h6 class="position-relative mb-4">
                Monthly contact Lenses <span class="line line-end d-none d-lg-block"></span>
              </h6>

              <!-- Text -->
              <p class="mb-0 text-muted">
                There face that be dry morning to his
                saying, them is sixth won't fly doesn't
                His he For there he.
              </p>

            </div>

          </div>
          <div class="col-12 col-md-5">

            <!-- Image -->
            <img src="assets/img/products/product-98.jpg" alt="..." class="img-fluid mb-7 mb-md-0">

          </div>
          <div class="col-12 col-md-3">

            <!-- Item -->
            <div class="mt-md-10 mb-7 mb-md-13">

              <!-- Heading -->
              <h6 class="position-relative mb-4">
                Daily contact Lenses <span class="line line-start d-none d-lg-block"></span>
              </h6>

              <!-- Text -->
              <p class="mb-0 text-muted">
                Together days thing land fifth, gathered
                fish wherein fruit called moveth their,
                which good air gathered.
              </p>

            </div>

            <!-- Item -->
            <div>

              <!-- Heading -->
              <h6 class="position-relative mb-4">
                Airtight Container <span class="line line-start d-none d-lg-block"></span>
              </h6>

              <!-- Text -->
              <p class="mb-0 text-muted">
                There face that be dry morning to his
                saying, them is sixth won't fly doesn't
                His he For there he.
              </p>

            </div>

          </div>
        </div>
      </div>
    </section>

    <!-- HOW IT WORKS -->
    <section class="py-12 bg-dark bg-pattern" id="howItWorks">
      <div class="container">
        <div class="row">
          <div class="col-12">

            <!-- Heading -->
            <h2 class="mb-10 text-center text-white">
              How it Works
            </h2>

          </div>
        </div>
        <div class="row">
          <div class="col-12 col-md-4">

            <!-- Card -->
            <div class="card bg-none mb-7 mb-md-0">

              <!-- Image -->
              <div class="card-img-top position-relative mx-auto" style="max-width: 120px;">

                <!-- Circle -->
                <div class="card-circle card-circle-sm card-circle-top-end">1</div>

                <!-- Image -->
                <img class="img-fluid rounded-circle" src="assets/img/products/product-99.jpg" alt="...">

              </div>

              <!-- Body -->
              <div class="card-body text-center">

                <!-- Heading -->
                <h6 class="mb-4 text-white">
                  Take out the Lens from the
                  container
                </h6>

                <!-- Text -->
                <p class="mb-0 text-gray-300">
                  Under above saying waters saying wherein
                  stars fourth made appear won't darkness fill,
                  form rule i dry his god.
                </p>

              </div>

            </div>

          </div>
          <div class="col-12 col-md-4">

            <!-- Card -->
            <div class="card bg-none mb-7 mb-md-0">

              <!-- Image -->
              <div class="card-img-top position-relative mx-auto" style="max-width: 120px;">

                <!-- Circle -->
                <div class="card-circle card-circle-sm card-circle-top-end">2</div>

                <!-- Image -->
                <img class="img-fluid rounded-circle" src="assets/img/products/product-100.jpg" alt="...">

              </div>

              <!-- Body -->
              <div class="card-body text-center">

                <!-- Heading -->
                <h6 class="mb-4 text-white">
                  Put the lens on a clean and
                  dry finger
                </h6>

                <!-- Text -->
                <p class="mb-0 text-gray-300">
                  Under above saying waters saying wherein
                  stars fourth made appear won't darkness fill,
                  form rule i dry his god.
                </p>

              </div>

            </div>

          </div>
          <div class="col-12 col-md-4">

            <!-- Card -->
            <div class="card bg-none mb-7 mb-md-0">

              <!-- Image -->
              <div class="card-img-top position-relative mx-auto" style="max-width: 120px;">

                <!-- Circle -->
                <div class="card-circle card-circle-sm card-circle-top-end">3</div>

                <!-- Image -->
                <img class="img-fluid rounded-circle" src="assets/img/products/product-101.jpg" alt="...">

              </div>

              <!-- Body -->
              <div class="card-body text-center">

                <!-- Heading -->
                <h6 class="mb-4 text-white">
                  Look upward as you place
                  it on your eye.
                </h6>

                <!-- Text -->
                <p class="mb-0 text-gray-300">
                  Under above saying waters saying wherein
                  stars fourth made appear won't darkness fill,
                  form rule i dry his god.
                </p>

              </div>

            </div>

          </div>
        </div>
      </div>
    </section>

    <!-- INFO-->
    <section class="bg-light">
      <div class="container">
        <div class="row gx-0 justify-content-between">
          <div class="col-12 col-md-6 mt-12 mb-n12 bg-cover" style="background-image: url(assets/img/products/product-102.jpg);"></div>
          <div class="col-12 col-md-5 py-12">

            <!-- Heading -->
            <h3 class="mb-7">
              Our lenses are designed for
              your clear and brilliant vision.
            </h3>

            <!-- Text -->
            <ul class="list-styled mb-7">
              <li class="list-styled-item">
                <i class="fe fe-check me-2 text-primary"></i>
                <span>Male his our upon seed had</span>
              </li>
              <li class="list-styled-item">
                <i class="fe fe-check me-2 text-primary"></i>
                <span>Day together third</span>
              </li>
              <li class="list-styled-item">
                <i class="fe fe-check me-2 text-primary"></i>
                <span>You're seed is creepeth gathered</span>
              </li>
              <li class="list-styled-item">
                <i class="fe fe-check me-2 text-primary"></i>
                <span>Given moved it so lights</span>
              </li>
            </ul>

            <!-- Button -->
            <a href="#!" class="btn btn-primary">
              Get Sample Pack
            </a>

          </div>
        </div>
      </div>
    </section>

    <!-- BEST PICKS -->
    <section class="pt-12 pt-md-15 pb-12">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-12 col-md-10 col-lg-8 col-xl-7 text-center">

            <!-- Preheading -->
            <h6 class="heading-xxs mb-3 text-gray-400">
              Before & after
            </h6>

            <!-- Heading -->
            <h2 class="mb-4">The best solution for Eyes of any Color</h2>

            <!-- Subheading -->
            <p class="mb-10 text-gray-500">
              Appear, dry there darkness they're seas, dry waters thing fly midst. Beast, above fly brought Very green.
            </p>

          </div>
        </div>
        <div class="row justify-content-center">
          <div class="col-12 col-lg-10">

            <!-- Card -->
            <div class="card">

              <!-- Badge -->
              <div class="badge bg-white text-body card-badge card-badge-start text-uppercase">
                Before
              </div>

              <!-- Badge -->
              <div class="badge bg-white text-body card-badge card-badge-end text-uppercase">
                After
              </div>

              <!-- Comparision -->
              <div class="img-comp">

                <!-- Back -->
                <div class="img-comp-back">
                  <img src="assets/img/products/product-104.jpg" alt="..." class="img-comp-img">
                </div>

                <!-- Front -->
                <div class="img-comp-front">
                  <img src="assets/img/products/product-103.jpg" alt="..." class="img-comp-img">
                </div>

                <!-- Handle -->
                <div class="img-comp-handle btn btn-sm btn-circle btn-white">
                  <i class="fe fe-arrow-left"></i>
                  <i class="fe fe-arrow-right"></i>
                </div>

                <!-- Input -->
                <input class="img-comp-input" type="range">

              </div>
            </div>

          </div>
        </div>
      </div>
    </section>

    <!-- PRICING -->
    <section class="py-12 bg-light" id="pricing">
      <div class="container">
        <div class="row">
          <div class="col-12 text-center">

            <!-- Preheading -->
            <h6 class="heading-xxs mb-3 text-gray-400">
              Pricing plans
            </h6>

            <!-- Heading -->
            <h2 class="mb-10">Something for Everyone</h2>

          </div>
        </div>
        <div class="row">
          <div class="col-12 col-lg-4">

            <!-- Card -->
            <div class="card card-lg shadow mb-7 mb-lg-0">
              <div class="card-body border-bottom text-center">

                <!-- Subheading -->
                <h5>Basic</h5>

                <!-- Heading -->
                <h2 class="mb-0 fw-bolder">
                  $29.00 <span class="fs-lg fw-bold">/ month</span>
                </h2>

              </div>
              <div class="card-body">

                <!-- Text -->
                <p class="text-muted">
                  Called life don't called darkness spirit
                  abundantly so Wherein the.
                </p>

                <!-- List -->
                <ul class="list-styled mb-8">
                  <li class="list-styled-item">
                    <i class="fe fe-check me-2 text-primary"></i> Behold in creature likeness
                  </li>
                  <li class="list-styled-item text-muted">
                    <i class="fe fe-x me-2 text-muted"></i> To hath for fly land
                  </li>
                  <li class="list-styled-item text-muted">
                    <i class="fe fe-x me-2 text-muted"></i> Third under god above bearing
                  </li>
                </ul>

                <!-- Button -->
                <div class="text-center">
                  <a class="btn btn-outline-primary" href="#!">
                    Get Started Now
                  </a>
                </div>

              </div>
            </div>

          </div>
          <div class="col-12 col-lg-4">

            <!-- Card -->
            <div class="card card-lg shadow mb-7 mb-lg-0">

              <!-- Badge -->
              <div class="badge bg-primary card-badge card-badge-start text-uppercase">
                Popular
              </div>

              <!-- Context -->
              <div class="card-body border-bottom text-center">

                <!-- Subheading -->
                <h5>Standart</h5>

                <!-- Heading -->
                <h2 class="mb-0 fw-bolder text-primary">
                  $59.00 <span class="fs-lg fw-bold">/ month</span>
                </h2>

              </div>
              <div class="card-body">

                <!-- Text -->
                <p class="text-muted">
                  In herb seed land divided together
                  seasons night good years.
                </p>

                <!-- List -->
                <ul class="list-styled mb-8">
                  <li class="list-styled-item">
                    <i class="fe fe-check me-2 text-primary"></i> Behold in creature likeness
                  </li>
                  <li class="list-styled-item">
                    <i class="fe fe-check me-2 text-primary"></i> To hath for fly land
                  </li>
                  <li class="list-styled-item text-muted">
                    <i class="fe fe-x me-2 text-muted"></i> Third under god above bearing
                  </li>
                </ul>

                <!-- Button -->
                <div class="text-center">
                  <a class="btn btn-outline-primary" href="#!">
                    Get Started Now
                  </a>
                </div>

              </div>

            </div>

          </div>
          <div class="col-12 col-lg-4">

            <!-- Card -->
            <div class="card card-lg shadow">
              <div class="card-body border-bottom text-center">

                <!-- Subheading -->
                <h5>Premium</h5>

                <!-- Heading -->
                <h2 class="mb-0 fw-bolder">
                  $79.99 <span class="fs-lg fw-bold">/ month</span>
                </h2>

              </div>
              <div class="card-body">

                <!-- Text -->
                <p class="text-muted">
                  Fly which shall, male replenish stars
                  called i sixth without.
                </p>

                <!-- List -->
                <ul class="list-styled mb-8">
                  <li class="list-styled-item">
                    <i class="fe fe-check me-2 text-primary"></i> Behold in creature likeness
                  </li>
                  <li class="list-styled-item">
                    <i class="fe fe-check me-2 text-primary"></i> To hath for fly land
                  </li>
                  <li class="list-styled-item">
                    <i class="fe fe-check me-2 text-primary"></i> Third under god above bearing
                  </li>
                </ul>

                <!-- Button -->
                <div class="text-center">
                  <a class="btn btn-outline-primary" href="#!">
                    Get Started Now
                  </a>
                </div>

              </div>
            </div>

          </div>
        </div>
      </div>
    </section>

    <!-- IMAGE -->
    <section data-jarallax data-speed=".8" style="min-height: 580px; background-image: url(assets/img/covers/cover-20.jpg);"></section>

    <!-- REVIEWS -->
    <section class="py-12 border-bottom" id="reviews">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-12 col-md-8 col-lg-6 col-xl-4">

            <!-- Heading -->
            <h2 class="mb-12 text-center">
              A positive Experience in many ways.
            </h2>

          </div>
        </div>
        <div class="row">
          <div class="col-12 col-md-6 col-lg-4">

            <!-- Card -->
            <div class="card card-lg mb-11">
              <div class="card-body text-center bg-light">

                <!-- Avatar -->
                <img src="assets/img/avatars/avatar-1.jpg" alt="..." class="img-fluid rounded-circle mb-7 mt-n11" style="max-width: 100px;">

                <!-- Text -->
                <blockquote class="blockquote mb-0">

                  <!-- Text -->
                  <p class="fs-lg fst-normal">
                    From creepeth said moved given
                    divide make multiply of him shall itself
                    also above second doesn't unto
                    created saying land herb sea midst
                    night wherein.
                  </p>

                  <!-- Rating -->
                  <div class="rating fs-xs text-warning mb-2" data-value="5">
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

                  <!-- Footer -->
                  <footer class="blockquote-footer">
                    Catherine Hicks, 21 Jul 2019
                  </footer>

                </blockquote>

              </div>
            </div>

            <!-- Card -->
            <div class="card card-lg mb-11">
              <div class="card-body text-center bg-light">

                <!-- Avatar -->
                <img src="assets/img/avatars/avatar-4.jpg" alt="..." class="img-fluid rounded-circle mb-7 mt-n11" style="max-width: 100px;">

                <!-- Text -->
                <blockquote class="blockquote mb-0">

                  <!-- Text -->
                  <p class="fs-lg fst-normal">
                    Creeping his under doesn't.
                    Above two fourth dry open blessed
                    our creeping, made great.
                  </p>

                  <!-- Rating -->
                  <div class="rating fs-xs text-warning mb-2" data-value="5">
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

                  <!-- Footer -->
                  <footer class="blockquote-footer">
                    Jason Griffith, 05 Jul 2019
                  </footer>

                </blockquote>

              </div>
            </div>

          </div>
          <div class="col-12 col-md-7 col-lg-4">

            <!-- Card -->
            <div class="card card-lg mb-11">
              <div class="card-body text-center bg-light">

                <!-- Avatar -->
                <img src="assets/img/avatars/avatar-2.jpg" alt="..." class="img-fluid rounded-circle mb-7 mt-n11" style="max-width: 100px;">

                <!-- Text -->
                <blockquote class="blockquote mb-0">

                  <!-- Text -->
                  <p class="fs-lg fst-normal">
                    Gathered to were female. That dry
                    our so likeness light cattle his you'll
                    fill blessed replenish doesn't god
                    night tree.
                  </p>

                  <!-- Rating -->
                  <div class="rating fs-xs text-warning mb-2" data-value="5">
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

                  <!-- Footer -->
                  <footer class="blockquote-footer">
                    Daisy Turner, 18 Jul 2019
                  </footer>

                </blockquote>

              </div>
            </div>

            <!-- Card -->
            <div class="card card-lg mb-11">
              <div class="card-body text-center bg-light">

                <!-- Avatar -->
                <img src="assets/img/avatars/avatar-5.jpg" alt="..." class="img-fluid rounded-circle mb-7 mt-n11" style="max-width: 100px;">

                <!-- Text -->
                <blockquote class="blockquote mb-0">

                  <!-- Text -->
                  <p class="fs-lg fst-normal">
                    Yielding place upon heaven
                    created sea So fly you'll had years
                    which good herb hath moveth for
                    grass. Created. Wherein, had every
                    were, face you'll made from.
                  </p>

                  <!-- Rating -->
                  <div class="rating fs-xs text-warning mb-2" data-value="5">
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

                  <!-- Footer -->
                  <footer class="blockquote-footer">
                    Katrina Willis, 30 Jun 2019
                  </footer>

                </blockquote>

              </div>
            </div>

          </div>
          <div class="col-12 col-lg-4">
            <div class="row">
              <div class="col-12 col-md-6 col-lg-12">

                <!-- Card -->
                <div class="card card-lg mb-11">
                  <div class="card-body text-center bg-light">

                    <!-- Avatar -->
                    <img src="assets/img/avatars/avatar-3.jpg" alt="..." class="img-fluid rounded-circle mb-7 mt-n11" style="max-width: 100px;">

                    <!-- Text -->
                    <blockquote class="blockquote mb-0">

                      <!-- Text -->
                      <p class="fs-lg fst-normal">
                        Abundantly behold. God given
                        creature she'd, greater gathering his
                        had thing let you're firmament can't
                        he sixth. Without evening. Given
                        appear days signs abundantly and
                        brought female bring.
                      </p>

                      <!-- Rating -->
                      <div class="rating fs-xs text-warning mb-2" data-value="4">
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

                      <!-- Footer -->
                      <footer class="blockquote-footer">
                        Logan Edwards, 11 Jul 2019
                      </footer>

                    </blockquote>

                  </div>
                </div>

              </div>
              <div class="col-12 col-md-6 col-lg-12">

                <!-- Card -->
                <div class="card card-lg mb-11">
                  <div class="card-body text-center bg-light">

                    <!-- Avatar -->
                    <img src="assets/img/avatars/avatar-6.jpg" alt="..." class="img-fluid rounded-circle mb-7 mt-n11" style="max-width: 100px;">

                    <!-- Text -->
                    <blockquote class="blockquote mb-0">

                      <!-- Text -->
                      <p class="fs-lg fst-normal">
                        Place whose a give upon seed
                        Yielding don't cattle living.
                      </p>

                      <!-- Rating -->
                      <div class="rating fs-xs text-warning mb-2" data-value="5">
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

                      <!-- Footer -->
                      <footer class="blockquote-footer">
                        George Sanders, 17 Jun 2019
                      </footer>

                    </blockquote>

                  </div>
                </div>

              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-12">

            <!-- Link -->
            <div class="text-center">
              <a class="link-underline" href="#!">Discover more</a>
            </div>

          </div>
        </div>
      </div>
    </section>

    <!-- GET STARTED -->
    <section class="pt-12 pb-6" id="getStarted">
      <div class="container">
        <div class="row">
          <div class="col-12 text-center">

            <!-- Heading -->
            <h2 class="mb-8">Ready to get Started? 😍</h2>

            <!-- Button -->
            <a href="#!" class="btn btn-primary mb-10">
              Get Sample Pack
            </a>

          </div>
        </div>
      </div>
      <div class="container-fluid">
        <div class="row align-items-end">
          <div class="col">

            <!-- Image -->
            <img src="assets/img/products/product-105.jpg" alt="..." class="img-fluid">

          </div>
          <div class="col d-none d-md-block">

            <!-- Image -->
            <img src="assets/img/products/product-106.jpg" alt="..." class="img-fluid">

          </div>
          <div class="col">

            <!-- Image -->
            <img src="assets/img/products/product-107.jpg" alt="..." class="img-fluid">

          </div>
          <div class="col d-none d-md-block">

            <!-- Image -->
            <img src="assets/img/products/product-108.jpg" alt="..." class="img-fluid">

          </div>
          <div class="col">

            <!-- Image -->
            <img src="assets/img/products/product-109.jpg" alt="..." class="img-fluid">

          </div>
        </div>
      </div>
    </section>

    <!-- FOOTER -->
    <footer class="">
      <div class="py-12 bg-dark bg-cover text-center" style="background-image: url(./assets/img/patterns/pattern-2.svg)">
        <div class="container">
          <div class="row">
            <div class="col-12">
    
              <!-- Brand -->
              <h2 class="mb-7 text-white">Shopper.</h2>
    
              <!-- Links -->
              <ul class="list-inline mb-7">
                <li class="list-inline-item px-3">
                  <a class="text-gray-300" href="./contact-us.html">Contact Us</a>
                </li>
                <li class="list-inline-item px-3">
                  <a class="text-gray-300" href="./faq.html">FAQs</a>
                </li>
                <li class="list-inline-item px-3">
                  <a class="text-gray-300" data-bs-toggle="modal" href="#modalSizeChart">Size Guide</a>
                </li>
                <li class="list-inline-item px-3">
                  <a class="text-gray-300" href="./shipping-and-returns.html">Shipping & Returns</a>
                </li>
                <li class="list-inline-item px-3">
                  <a class="text-gray-300" href="./about.html">Our Story</a>
                </li>
              </ul>
    
              <!-- Links -->
              <ul class="list-inline fs-lg">
                <li class="list-inline-item">
                  <a class="text-gray-300" href="#!">
                    <i class="fab fa-facebook"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a class="text-gray-300" href="#!">
                    <i class="fab fa-youtube"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a class="text-gray-300" href="#!">
                    <i class="fab fa-twitter"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a class="text-gray-300" href="#!">
                    <i class="fab fa-instagram"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a class="text-gray-300" href="#!">
                    <i class="fab fa-medium"></i>
                  </a>
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
