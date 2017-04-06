<%-- 
    Document   : logout
    Author     : Thomas Wray Joe Otis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        request.getSession().setAttribute("loggedin", false);
        request.getSession().setAttribute("notLoggedin", null);
    %>
    <jsp:include page="nonstdhead.jsp"/>
    <body>
        <p>You have successfully logged out!</p>
    </body>
</html>
