<%-- 
    Document   : product
    Created on : Mar 8, 2022, 10:32:56 PM
    Author     : long4
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <!-- Box icons -->
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css"
            />
        <!-- Custom StyleSheet -->
        <link rel="stylesheet" href="./css/styles.css" />
        <title>ALL ${cate.cname}${search} PRODUCTS</title>
    </head>

    <body>
        <!-- Navigation -->
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
                <a href="home" class="logo"><img src="./images/logo.png"></a>

                <ul class="nav-list d-flex">
                    <li class="nav-item">
                        <a href="home" class="nav-link">Home</a>
                    </li>
                    <li class="nav-item">
                        <a href="product" class="nav-link">Shop</a>
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
                        <a href="login.html" class="icon">
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
                    <a href="home" class="icon">
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

        <!-- All Products -->
        <section class="section all-products" id="products">
            <div class="top container">
                <h1>ALL ${cate.cname}${search} PRODUCTS</h1>
                <form>
                    <select>
                        <option value="1">Default Sorting</option>
                        <option value="2">Sort By Price</option>
                        <option value="3">Sort By Popularity</option>
                        <option value="4">Sort By Sale</option>
                        <option value="5">Sort By Rating</option>
                    </select>
                    <span><i class="bx bx-chevron-down"></i></span>
                </form>
            </div>
            <div class="product-center container">
                <c:forEach items="${list}" var="o">
                    <div class="product-item">
                        <div class="overlay">
                            <a href="" class="product-thumb">
                                <img src="${o.image}" alt="" />
                            </a>
                            <span class="discount">50%</span>
                        </div>
                        <div class="product-info">
                            <span>${o.category.cname}</span>
                            <a href="details?pid=${o.id}">${o.name}</a>
                            <h4>$${o.price}</h4>
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
                    <span><i class="bx bxl-facebook-square"></i></span>
                    <span><i class="bx bxl-instagram-alt"></i></span>
                    <span><i class="bx bxl-github"></i></span>
                    <span><i class="bx bxl-twitter"></i></span>
                    <span><i class="bx bxl-pinterest"></i></span>
                </div>
            </div>
        </footer>
        <!-- Custom Script -->
        <script src="./js/index.js"></script>
    </body>
</html>
