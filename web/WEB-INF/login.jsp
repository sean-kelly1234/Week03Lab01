<%-- 
    Document   : login
    Created on : Sep 19, 2017, 8:32:30 PM
    Author     : 642202
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />

    <c:if test="${user == null}">
    <h1>Login Page</h1>
    <form action="Login" method="POST">
        Username: <input type="text" name="user" autofocus><br>
        Password: <input type="password" name="pass"><br>
        <input type="submit" value="Login">
    </form>
    </c:if>
    <c:if test="${message != null}">
        <span>${message}</span>
    </c:if>
    <c:if test="${user != null}">
        <h1>Main Page</h1>
        <span>Hello, ${user.user}
        <a href="Login?loggedOut">Logout</a>
        </span>
    </c:if>
<c:import url="/includes/footer.jsp" />
