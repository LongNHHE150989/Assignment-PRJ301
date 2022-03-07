<%-- 
    Document   : login
    Created on : Mar 7, 2022, 3:43:42 PM
    Author     : long4
--%>

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
                <a href="index.html" class="logo"><img src="./images/logo.png"></a>

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
        <!-- Login -->
        <div class="container">
            <div class="login-form">
                <form name="input" action="login" method="post">
                    <h1>Login</h1>
                    <p>
                        Already have an account? Login in or
                        <a href="signup.jsp">Sign Up</a>
                    </p>

                    <label for="email">Email</label>
                    <input id="email" type="email" placeholder="Enter Email" name="email" required />

                    <label for="psw">Password</label>
                    <input id="psw"
                        type="password"
                        placeholder="Enter Password"
                        name="psw"
                        required
                        />

                    <label>
                        <input
                            type="checkbox"
                            checked="checked"
                            name="remember"
                            style="margin-bottom: 15px"
                            />
                        Remember me
                    </label>

                    <p>
                        By creating an account you agree to our
                        <a href="#">Terms & Privacy</a>.
                    </p>

                    <div class="buttons">
                        <button type="button" class="cancelbtn">Cancel</button>
                        <button type="submit" class="signupbtn">Login</button>
                    </div>
                </form>
            </div>
        </div>

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
