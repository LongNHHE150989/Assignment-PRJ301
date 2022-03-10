<%-- 
    Document   : test
    Created on : Mar 11, 2022, 1:38:34 AM
    Author     : long4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/test.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search</title>
    </head>
    <body>
        <div id="cover">
            <form method="post" action="search">
                <div class="tb">
                    <div class="td"><input type="text" name="text" placeholder="Search" required></div>
                    <div class="td" id="s-cover">
                        <button type="submit">
                            <div id="s-circle"></div>
                            <span></span>
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
