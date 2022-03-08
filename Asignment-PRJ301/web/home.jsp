<%-- 
    Document   : home
    Created on : Mar 8, 2022, 12:33:24 PM
    Author     : long4
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <!-- Boxicons -->
        <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
        <!-- Glide js -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.css">
        <!-- Custom StyleSheet -->
        <link rel="stylesheet" href="./css/styles.css" />
        <title>Helios Jewels</title>
    </head>

    <body>
        <!-- Header -->
        <header class="header" id="header">
            <!-- Top Nav -->
            <div class="top-nav">
                <div class="container d-flex">
                    <p>Order Online Or Call Us: 0364946845</p>
                    <ul class="d-flex">
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
            </div>
            <div class="navigation">
                <div class="nav-center container d-flex">
                    <a class="logo">
                        <img src="./images/logo.png">
                    </a>

                    <ul class="nav-list d-flex">
                        <li class="nav-item">
                            <a href="index.html" class="nav-link">Home</a>
                        </li>
                        <li class="nav-item">
                            <a href="product.html" class="nav-link">Shop</a>
                        </li>
                        <li class="nav-item">
                            <a href="#terms" class="nav-link">Terms</a>
                        </li>
                        <li class="nav-item">
                            <a href="#about" class="nav-link">About</a>
                        </li>
                        <li class="nav-item">
                            <a href="#contact" class="nav-link">Contact</a>
                        </li>
                        <li class="icons d-flex">
                            <a href="login.jsp" class="icon">
                                <i class="bx bx-user"></i>
                            </a>
                            <div class="icon">
                                <i class="bx bx-search"></i>
                            </div>
                            <div class="icon">
                                <i class="bx bx-heart"></i>
                                <span class="d-flex">0</span>
                            </div>
                            <a href="cart.html" class="icon">
                                <i class="bx bx-cart"></i>
                                <span class="d-flex">0</span>
                            </a>
                        </li>
                    </ul>

                    <div class="icons d-flex">
                        <a href="login.jsp" class="icon">
                            <i class="bx bx-user"></i>
                        </a>
                        <div class="icon">
                            <i class="bx bx-search"></i>
                        </div>
                        <div class="icon">
                            <i class="bx bx-heart"></i>
                            <span class="d-flex">0</span>
                        </div>
                        <a href="cart.html" class="icon">
                            <i class="bx bx-cart"></i>
                            <span class="d-flex">0</span>
                        </a>
                    </div>

                    <div class="hamburger">
                        <i class="bx bx-menu-alt-left"></i>
                    </div>
                </div>
            </div>

        </header>
        <!-- Slide show -->
        <div class="slidershow middle">

            <div class="slides">
                <input type="radio" name="r" id="r1" checked>
                <input type="radio" name="r" id="r2">
                <div class="slide s1">
                    <a href="product.html">
                        <img src="./images/slider_1.jpg" alt="">
                    </a>
                </div>
                <div class="slide">
                    <a href="product.html">
                        <img src="./images/slider_3.jpg" alt="">
                    </a>
                </div>
            </div>

            <div class="navigat">
                <label for="r1" class="bar"></label>
                <label for="r2" class="bar"></label>
            </div>
        </div>


        <!-- Categories Section -->
        <section class="section category">
            <div class="cat-center">
                <div class="cat">
                    <img src="./images/cat1.jpg" alt="" />
                    <div>
                        <a href="./product_ring/all_ring_product.html">RING</a>
                    </div>
                </div>
                <div class="cat">
                    <img src="./images/cat2.jpg" alt="" />
                    <div>
                        <a href="./product_earring/all_earring_product.html">EARRINGS</a>
                    </div>
                </div>
                <div class="cat">
                    <img src="./images/cat3.jpg" alt="" />
                    <div>
                        <a href="./product_neckplace/all_neckplace_product.html">NECKPLACE</a>
                    </div>
                </div>
            </div>
        </section>

        <!-- New Arrivals -->
        <section class="section new-arrival">
            <div class="title">
                <h1>NEW ARRIVALS</h1>
                <p>All the latest picked from designer of our store</p>
            </div>

            <div class="product-center">
                <c:forEach items="${list}" var="o">
                    <div class="product-item">
                        <div class="overlay">
                            <a href="" class="product-thumb">
                                <img src="${o.image}" alt="" />
                            </a>
                        </div>
                        <div class="product-info">
                            <span>NECKLACE</span>
                            <a href="details?pid=${o.id}">${o.name}</a>
                            <h4>$700</h4>
                        </div>
                        <ul class="icons">
                            <li><i class="bx bx-heart"></i></li>
                            <li><i class="bx bx-search"></i></li>
                            <li><i class="bx bx-cart"></i></li>
                        </ul>
                    </div>
                </c:forEach>
            </div>
        </section>


        <!-- Promo -->

        <section class="section banner">
            <div class="left">
                <span class="trend">Trend Design</span>
                <h1>New Collection 2021</h1>
                <p>New Arrival <span class="color">Sale 50% OFF</span> Limited Time Offer</p>
                <a href="./product.html" class="btn btn-1">Discover Now</a>
            </div>
            <div class="right">
                <img src="./images/banner.png" alt="">
            </div>
        </section>




        <!-- Featured -->

        <section class="section new-arrival">
            <div class="title">
                <h1>BEST SELLER</h1>
                <p>Our recent best-selling products</p>
            </div>

            <div class="product-center">
                <div class="product-item">
                    <div class="overlay">
                        <a href="" class="product-thumb">
                            <img src="./images/ring1.jpg" alt="" />
                        </a>
                        <span class="discount">50%</span>
                    </div>
                    <div class="product-info">
                        <span>RING</span>
                        <a href="./product_ring/ring1.html">Nhẫn thời trang Helios Triquetra</a>
                        <h4>$700</h4>
                    </div>
                    <ul class="icons">
                        <li><i class="bx bx-heart"></i></li>
                        <li><i class="bx bx-search"></i></li>
                        <li><i class="bx bx-cart"></i></li>
                    </ul>
                </div>
                <div class="product-item">
                    <div class="overlay">
                        <a href="" class="product-thumb">
                            <img src="./images/earring1.jpg" alt="" />
                        </a>
                    </div>

                    <div class="product-info">
                        <span>EARRINGS</span>
                        <a href="./product_earring/earring1.html">Khuyên tai bạc HeliSilver B </a>
                        <h4>$800</h4>
                    </div>
                    <ul class="icons">
                        <li><i class="bx bx-heart"></i></li>
                        <li><i class="bx bx-search"></i></li>
                        <li><i class="bx bx-cart"></i></li>
                    </ul>
                </div>
                <div class="product-item">
                    <div class="overlay">
                        <a href="" class="product-thumb">
                            <img src="./images/neckplace2.jpg" alt="" />
                        </a>
                        <span class="discount">40%</span>
                    </div>
                    <div class="product-info">
                        <span>NECKPLACE</span>
                        <a href="./product_neckplace/neckplace2.html">Dây chuyền Helios Cross Bling</a>
                        <h4>$150</h4>
                    </div>
                    <ul class="icons">
                        <li><i class="bx bx-heart"></i></li>
                        <li><i class="bx bx-search"></i></li>
                        <li><i class="bx bx-cart"></i></li>
                    </ul>
                </div>
                <div class="product-item">
                    <div class="overlay">
                        <a href="" class="product-thumb">
                            <img src="./images/neckplace1.jpg" alt="" />
                        </a>
                    </div>
                    <div class="product-info">
                        <span>NECKPLACE</span>
                        <a href="./product_neckplace/neckplace1.html">1Dây chuyền Helios Sao David</a>
                        <h4>$900</h4>
                    </div>
                    <ul class="icons">
                        <li><i class="bx bx-heart"></i></li>
                        <li><i class="bx bx-search"></i></li>
                        <li><i class="bx bx-cart"></i></li>
                    </ul>
                </div>

        </section>

        <!-- Contact -->
        <section class="section contact">
            <div class="row">
                <div class="col">
                    <h2>EXCELLENT SUPPORT</h2>
                    <p>We love our customers and they can reach us any time
                        of day we will be at your service 24/7</p>
                    <a href="" class="btn btn-1">Contact</a>
                </div>
                <div class="col">
                    <form action="">
                        <div>
                            <input type="email" placeholder="Email Address">
                            <a href="">Send</a>
                        </div>
                    </form>
                </div>
            </div>
        </section>

        <!-- Footer -->
        <footer class="footer">
            <div class="row">
                <div class="col d-flex">
                    <h4>INFORMATION</h4>
                    <a href="">About us</a>
                    <a href="">Contact Us</a>
                    <a href="">Term & Conditions</a>
                    <a href="">Shipping Guide</a>
                </div>
                <div class="col d-flex">
                    <h4>USEFUL LINK</h4>
                    <a href="">Online Store</a>
                    <a href="">Customer Services</a>
                    <a href="">Promotion</a>
                    <a href="">Top Brands</a>
                </div>
                <div class="col d-flex">
                    <span><i class='bx bxl-facebook-square'></i></span>
                    <span><i class='bx bxl-instagram-alt'></i></span>
                    <span><i class='bx bxl-github'></i></span>
                    <span><i class='bx bxl-twitter'></i></span>
                    <span><i class='bx bxl-pinterest'></i></span>
                </div>
            </div>
        </footer>


        <!-- PopUp -->
        <!-- <div class="popup hide-popup">
          <div class="popup-content">
            <div class="popup-close">
              <i class='bx bx-x'></i>
            </div>
            <div class="popup-left">
              <div class="popup-img-container">
                <img class="popup-img" src="./images/popup.jpg" alt="popup">
              </div>
            </div>
            <div class="popup-right">
              <div class="right-content">
                <h1>Get Discount <span>50%</span> Off</h1>
                <p>Sign up to our newsletter and save 30% for you next purchase. No spam, we promise!
                </p>
                <form action="#">
                  <input type="email" placeholder="Enter your email..." class="popup-form">
                  <a href="#">Subscribe</a>
                </form>
              </div>
            </div>
          </div>
        </div> -->

    </body>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/glide.min.js"></script>
    <script src="./js/slider.js"></script>
    <script src="./js/index.js"></script>

</html>