<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="includes/header.html" %>

<h1>Join our email list</h1>
<p>To join our email list, enter your name and
   email address below.</p>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${message != null}">
    <p class="mess"><i>${message}</i></p>
</c:if>

<form action="emailList" method="post">
    <input type="hidden" name="action" value="add">   
    <input type="hidden" name="myExercise" value="ch06ex1View">      
    <label class="pad_top">Email:</label>
    <input type="email" name="email" value="${user.email}"><br>
    <label class="pad_top">First Name:</label>
    <input type="text" name="firstName" value="${user.firstName}"><br>
    <label class="pad_top">Last Name:</label>
    <input type="text" name="lastName" value="${user.lastName}"><br>        
    <label>&nbsp;</label>
    <input class="btn margin_left" type="submit" value="Join Now">
    <a href="home"><button class="btn" type="button">Back Home</button></a>
</form>

<%@ include file="includes/footer.jsp" %>
