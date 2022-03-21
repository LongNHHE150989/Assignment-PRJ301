<%-- 
    Document   : crud
    Created on : Mar 10, 2022, 11:26:06 PM
    Author     : long4
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Manager Product</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
        <link href="css/header.css" rel="stylesheet" type="text/css"/>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <script src="js/manager.js" type="text/javascript"></script>
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
                        <a href="cart.html" class="icon">
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

        <div class="container-lg">
            <div class="table">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-8"><h2 style="color: white"><b style="">Manager Product</b></h2></div>
                            <div class="col-sm-4">
                                <a href="#addEmployeeModal"  class="btn btn-info add-new" data-toggle="modal" ><i class="fa fa-plus"></i> <span>Add New</span></a>
                            </div>
                        </div>
                    </div>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th style="width: 50px">STT</th>
                                <th>Name</th>
                                <th style="width: 200px">Image</th>
                                <th style="width: 70px">Price</th>
                                <th>Description</th>
                                <th>Category</th>
                                <th style="width: 100px">Quantity</th>
                                <th style="width: 50px">Sale</th>
                                <th style="width: 90px">Actions</th>
                            </tr>
                        </thead>
                        <c:set var="i" value="0"></c:set>
                        <c:forEach items="${list}" var="o">
                            <tbody>
                                <tr>
                                    <th>${i=i+1}</th>
                                    <td>${o.name}</td>
                                    <td><img src="${o.image}" style="width:180px"/></td> 
                                    <td>${o.price}</td>
                                    <td>${o.description}</td>
                                    <td>${o.category.cname}</td>
                                    <td>${o.quantity}</td>
                                    <td>${o.sale}</td>
                                    <td>
                                        <!--<a href="#addEmployeeModal"  class="btn btn-info add-new" data-toggle="modal" ><i class="fa fa-plus"></i> <span>Add New</span></a>-->
                                        <a href="loadProduct?pid=${o.id}" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                                        <a href="delete?pid=${o.id}" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
                                    </td>
                                </tr>
                            </tbody>
                        </c:forEach>

                    </table>
                </div>
            </div>
        </div> 
        
        <!-- Edit Modal HTML -->
        <div id="addEmployeeModal" class="modal fade"style="background-color: black">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="add" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label for="name">Name</label>
                                <input id="name" name="name" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="image">Image</label>
                                <input id="image" name="image" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="price">Price</label>
                                <input id="price" name="price" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="description">Description</label>
                                <textarea id="description" name="description" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label for="quantity">Quantity</label>
                                <input id="quantity" name="quantity" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="category">Category</label>
                                <select id="category" name="category" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${listC}" var="o">
                                        <option value="${o.cateID}">${o.cname}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="sale">Sale</label>
                                <select id="sale" name="sale" class="form-select" aria-label="Default select example">
                                        <option value="false">False</option>
                                        <option value="true">True</option>
                                </select>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
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
