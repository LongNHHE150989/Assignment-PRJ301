<%-- 
    Document   : login
    Created on : Mar 7, 2022, 3:43:42 PM
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
        <title>Login</title>
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
                        <a href="#about" class="nav-link">About</a>
                    </li>
                    <li class="nav-item">
                        <a href="#contact" class="nav-link">Contact</a>
                    </li>
                </ul>

                <div class="icons d-flex">
                    <a href="login" class="icon">
                        <i class="bx bx-user"></i>
                    </a>
                    <a href="search" class="icon">
                        <i class="bx bx-search"></i>
                    </a>
                    <div class="icon">
                        <i class="bx bx-heart"></i>
                        <span class="d-flex">0</span>
                    </div>
                    <a href="carts" class="icon">
                        <i class="bx bx-cart"></i>
                        <span class="d-flex">${sessionScope.carts.size()}</span>
                    </a>
                </div>

                <div class="hamburger">
                    <i class="bx bx-menu-alt-left"></i>
                </div>
            </div>
        </div>
        <!-- Login -->
        <div class="container">
            <div class="login-form">
                <form name="input" action="login" method="post">
                    <h1>Login</h1>
                    <p>
                        Already have an account? Login in or
                        <a href="signup">Sign Up</a>
                    </p>

                    <label for="username">User Name</label>
                    <input id="username" type="text" placeholder="Enter User Name" name="username" required />

                    <label for="password">Password</label>
                    <input id="password" type="password" placeholder="Enter Password" name="password" required />
                    <p class="text-danger">${mess}</p>
                    <label>
                        <input type="checkbox" checked="checked" name="remember" style="margin-bottom: 15px" />
                        Remember me
                    </label>

                    <div class="buttons">
                        <button type="button" class="cancelbtn">Cancel</button>
                        <button type="submit" class="signupbtn">Login</button>
                    </div>
                </form>
            </div>
        </div>

        <hr>
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
