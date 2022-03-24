<%-- 
    Document   : ManagerProduct
    Created on : Dec 28, 2020, 5:19:02 PM
    Author     : trinh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Edit Product</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
        <link href="css/header.css" rel="stylesheet" type="text/css"/>

        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    </head>
    <body style="color: black">
        <!-- Header -->
        <header class="header" id="header" style="min-height: 30vh">
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
                    <a href="home" class="logo">
                        <img src="./images/logo.png">
                    </a>

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
                        <c:if test="${sessionScope.acc != null}">
                            <li class="nav-item">
                                <a href="order" class="nav-link">Order Manager</a>
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
                        <a href="" class="icon">
                            <i class="bx bx-heart"></i>
                            <span class="d-flex">0</span>
                        </a>
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

        </header>

        <div class="container" >
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Edit <b>Order</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="editorder" method="post">
                            <div class="modal-header">						
                                <h4 class="modal-title">Edit Order</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">					
                                <div class="form-group">
                                    <label>ID</label>
                                    <input value="${od.id}" name="id" type="text" class="form-control" readonly required>
                                </div>
                                <div class="form-group">
                                    <label for="accountid">Account ID</label>
                                    <input id="accountid" value="${od.accountId}" name="accountid" type="text" class="form-control" required>
                                </div>
                                <input style="display: none" value="${od.shipping.id}" name="shippingid">
                                <div class="form-group">
                                    <label for="name">Name</label>
                                    <input id="name" value="${od.shipping.name}" name="name" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label for="phone">Phone</label>
                                    <input id="phone" value="${od.shipping.phone}" name="phone" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label for="address">Address</label>
                                    <textarea id="address" name="address" class="form-control" required>${od.shipping.address}</textarea>
                                </div>
                                <div class="form-group">
                                    <label for="total">Total Price</label>
                                    <input id="total" value="${od.totalPrice}" name="total" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label for="note">Note</label>
                                    <input id="note" value="${od.note}" name="note" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label for="createdDate">Created Date</label>
                                    <input id="createdDate" value="${od.createdDate}" name="createdDate" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label for="status">Status</label>
                                    <select id="status" name="status" class="form-select" aria-label="Default select example">
                                        <c:forEach items="${listS}" var="o">
                                            <option value="${o.statusid}" ${o.statusid==od.statusID?"selected":""}>${o.statusname}</option>
                                        </c:forEach>
                                    </select>
                                </div>

                            </div>
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-success" value="Edit">
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>


        <hr>

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
    </body>
</html>

