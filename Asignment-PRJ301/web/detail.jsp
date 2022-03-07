<%-- 
    Document   : detail.jsp
    Created on : Feb 25, 2022, 9:51:10 PM
    Author     : nam25
--%>

<%@page import="model.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>hello</title>
        <% Account account = (Account) request.getSession().getAttribute("account");
        request.getSession().setAttribute("account", null);
            if (account == null) {
                Cookie[] cookies = request.getCookies();
                dal.AccountDAO accountDAO = new dal.AccountDAO();
                if (cookies != null) {
                    String email = "";
                    String password = "";
                    for (Cookie cooky : cookies) {
                        if (cooky.getName().equals("email")) {
                            email = cooky.getValue();
                        }
                        if (cooky.getName().equals("password")) {
                            password = cooky.getValue();
                        }
                    }
                    account = accountDAO.getAccount(email, password);
                }
            }
        %>
    </head>
    <body>
        <% if (account != null) {%>
            <h1>Hello <%=account.getEmail()%></h1>
            <%}else{
                response.sendRedirect("login.jsp");
            }%>  
    </body>
</html>
