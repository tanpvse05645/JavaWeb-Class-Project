<%-- 
    Document   : products
    Created on : Aug 17, 2018, 8:21:23 PM
    Author     : nhatl
--%>

<%@page import="Entity.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Account account = (Account) session.getAttribute("currentLoginAccount");
            if(account == null){
                response.sendRedirect("login.jsp");
            } else {
        %>
        <h1>Login success!</h1>
        
        <%
            }
        %>
    </body>
</html>
