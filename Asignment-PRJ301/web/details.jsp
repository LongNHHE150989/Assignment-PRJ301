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
        <link rel="stylesheet" href="css/styles.css" />
        <title>${requestScope.product.name}</title>
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
                <a href="home" class="logo"><img src="images/logo.png"></a>

                <ul class="nav-list d-flex">
                    <li class="nav-item">
                        <a href="home" class="nav-link">Home</a>
                    </li>
                    <li class="nav-item">
                        <a href="product" class="nav-link">Shop</a>
                    </li>
                    <c:if test="${sessionScope.acc.isAdmin}">
                        <li class="nav-item">
                            <a href="manager" class="nav-link">Manager Product</a>
                        </li>
                    </c:if>
                    <li class="nav-item">
                        <a href="#about" class="nav-link">About</a>
                    </li>
                    <li class="nav-item">
                        <a href="#contact" class="nav-link">Contact</a>
                    </li>
                </ul>

                <div class="icons d-flex">
                    <a <c:choose>
                            <c:when test="${sessionScope.acc==null}">href="login"</c:when>
                            <c:otherwise>href="profile"</c:otherwise>
                        </c:choose> 
                        class="icon">
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

        <!-- Product Details -->
        <section class="section product-detail">
            <div class="details container">
                <div class="left image-container">
                    <div class="main">
                        <img src="${requestScope.product.image}" id="zoom" alt="" />
                    </div>
                </div>
                <div class="right">
                    <span>HOME / ${requestScope.product.getCategory().getCname()}</span>
                    <h1>${requestScope.product.name}</h1>
                    <div class="price">$${requestScope.product.price}</div>

                    <form class="form">
                        <a href="addtocart?pid=${requestScope.product.id}" class="addCart">Add To Cart</a>
                    </form>
                    <h3>Product Detail</h3>
                    <p>
                        ${requestScope.product.description}
                    </p>
                </div>
            </div>
        </section>

        <!-- Related -->
        <section class="section featured">
            <div class="top container">
                <h1>Related Products</h1>
                <a href="#" class="view-more">View more</a>
            </div>
            <div class="product-center container">
                <div class="product-item">
                    <div class="overlay">
                        <a href="" class="product-thumb">
                            <img src="./images/earring3.jpg" alt="" />
                        </a>
                    </div>
                    <div class="product-info">
                        <span>EARRINGS</span>
                        <a href="">Khuy??n tai b???c ANKH Key</a>
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
                            <img src="./images/earring2.jpg" alt="" />
                        </a>
                        <span class="discount">50%</span>
                    </div>
                    <div class="product-info">
                        <span>EARRINGS</span>
                        <a href="">Khuy??n tai b???c Compass</a>
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
                            <img src="./images/earring4.jpg" alt="" />
                        </a>
                    </div>
                    <div class="product-info">
                        <span>EARRINGS</span>
                        <a href="">Khuy??n tai b???c Cross Hope</a>
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
                            <img src="./images/earring5.jpg" alt="" />
                        </a>
                        <span class="discount">50%</span>
                    </div>
                    <div class="product-info">
                        <span>EARRINGS</span>
                        <a href="">Khuy??n tai b???c DIAMOND</a>
                        <h4>$150</h4>
                    </div>
                    <ul class="icons">
                        <li><i class="bx bx-heart"></i></li>
                        <li><i class="bx bx-search"></i></li>
                        <li><i class="bx bx-cart"></i></li>
                    </ul>
                </div>
            </div>
        </section>
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
        <script src="../js/index.js"></script>
        <script
            src="https://code.jquery.com/jquery-3.4.0.min.js"
            integrity="sha384-JUMjoW8OzDJw4oFpWIB2Bu/c6768ObEthBMVSiIx4ruBIEdyNSUQAjJNFqT5pnJ6"
            crossorigin="anonymous"
        ></script>
        <script src="../js/zoomsl.min.js"></script>
        <script>
            $(function () {
                console.log("hello");
                $("#zoom").imagezoomsl({
                    zoomrange: [4, 4],
                });
            });
        </script>
    </body>
</html>

