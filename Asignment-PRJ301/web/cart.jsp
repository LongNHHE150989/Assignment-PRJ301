<%-- 
    Document   : cart
    Created on : Mar 15, 2022, 10:35:10 PM
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
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css"
            />
        <!-- Custom StyleSheet -->
        <link rel="stylesheet" href="./css/styles.css" />
        <title>Your Cart</title>
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
                    <a href="login" class="icon">
                        <i class="bx bx-user"></i>
                    </a>
                    <div class="icon">
                        <i class="bx bx-search"></i>
                    </div>
                    <div class="icon">
                        <i class="bx bx-heart"></i>
                        <span class="d-flex">0</span>
                    </div>
                    <a href="carts" class="icon">
                        <i class="bx bx-cart"></i>
                        <span class="d-flex">0</span>
                    </a>
                </div>

                <div class="hamburger">
                    <i class="bx bx-menu-alt-left"></i>
                </div>
            </div>
        </div>

        <!-- Cart Items -->
        <div class="container cart" style="min-height: 500px">
            <c:choose>
                <c:when test="${sessionScope.carts.size()==null || sessionScope.carts.size()==0}">
                    <h1>List Cart is Empty</h1>
                </c:when>
                <c:otherwise>
                    <h1>List Product</h1>
                    <table>
                        <tr>
                            <th style="color: black">Product</th>
                            <th style="color: black">Quantity</th>
                            <th style="color: black">Total Price</th>
                        </tr>
                        <c:forEach items="${carts}" var="o">
                            <form action="updatequantity">
                                <tr>
                                <input type="hidden" name="pid" value="${o.value.product.id}"/>
                                    <td>
                                        <div class="cart-info">
                                            <img src="${o.value.product.image}" alt="" />
                                            <div>
                                                <p>Product ID:${o.value.product.id}</p>
                                                <p>${o.value.product.name}</p>
                                                <span>Price: ${o.value.product.price}</span> <br />
                                                <a href="deletecart?pid=${o.value.product.id}" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
                                            </div>
                                        </div>
                                    </td>
                                    <td><input onchange="this.form.submit()" type="number" name="quantity" value="${o.value.quantity}" min="1" /></td>
                                    <td>$${o.value.product.price*o.value.quantity}</td>
                                </tr>
                            </form>

                        </c:forEach>

                    </table>
                    <div class="total-price">
                        <table>
                            <tr>
                                <td>Total</td>
                                <td>$${totalMoney}</td>
                            </tr>
                        </table>
                        <a href="#" class="checkout btn" style="color: black">Proceed To Checkout</a>
                    </div>
                </c:otherwise>
            </c:choose>
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
