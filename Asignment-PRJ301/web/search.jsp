<%-- 
    Document   : search
    Created on : Mar 11, 2022, 12:33:43 AM
    Author     : long4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link href="css/search.css" rel="stylesheet" type="text/css"/>
        <script src="js/search.js" type="text/javascript"></script>
    </head>
    <body>
        <form action="search" method="post">
            <input type="search" name="text" required>
            <i class="fa-solid fa-magnifying-glass" style="font-size:28px"></i>
        </form>
    </body>
</html>
