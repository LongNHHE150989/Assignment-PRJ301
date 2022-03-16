<%-- 
    Document   : profile
    Created on : Mar 11, 2022, 8:31:52 PM
    Author     : long4
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Profile</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="css/header.css" rel="stylesheet" type="text/css"/>
        <script src="js/profile.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    </head>
    <body>
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
                                <a href="manager product.jsp" class="nav-link">Manager Product</a>
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
                                <c:otherwise>href="profile.jsp"</c:otherwise>
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
        
        <div class="container bootstrap snippet" style="margin-bottom: 50px">

            <div class="row">
                <div class="col-sm-3"><!--left col-->

                    <div class="text-center">
                        <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" style="" class="avatar img-circle img-thumbnail" alt="avatar">
                        <h6>Upload a different photo...</h6>
                        <input type="file" class="text-center center-block file-upload">
                    </div></hr><br>

                </div><!--/col-3-->
                <div class="col-sm-9">

                    <div class="tab-content">
                        <div class="tab-pane active" id="home">
                            <form class="form" action="##" method="post" id="registrationForm">
                                <div class="form-group">

                                    <div class="col-xs-6">
                                        <label for="first_name"><h4>First name</h4></label>
                                        <input type="text" class="form-control" name="first_name" id="first_name" placeholder="first name" title="enter your first name if any.">
                                    </div>
                                </div>
                                <div class="form-group">

                                    <div class="col-xs-6">
                                        <label for="last_name"><h4>Last name</h4></label>
                                        <input type="text" class="form-control" name="last_name" id="last_name" placeholder="last name" title="enter your last name if any.">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-xs-6">
                                        <label for="phone"><h4>Phone</h4></label>
                                        <input type="text" class="form-control" name="phone" id="phone" placeholder="enter phone" title="enter your phone number if any.">
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="col-xs-6">
                                        <label for="email"><h4>Email</h4></label>
                                        <input type="email" class="form-control" name="email" id="email" placeholder="you@email.com" title="enter your email.">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-xs-6">
                                        <label for="email"><h4>Location</h4></label>
                                        <input type="text" class="form-control" id="location" placeholder="somewhere" title="enter a location">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-xs-6">
                                        <label for="password"><h4>Password</h4></label>
                                        <input type="password" class="form-control" name="password" id="password" placeholder="password" title="enter your password.">
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="col-xs-12">
                                        <br>
                                        <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                                        <a href="logout" class="btn btn-dark btn-lg" ><i class="glyphicon glyphicon-log-out"></i> Logout</a>
                                    </div>
                                </div>

                            </form>

                        </div><!--/tab-pane-->
                    </div><!--/tab-pane-->
                </div><!--/tab-pane-->
            </div><!--/tab-content-->
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
