<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Register Page</title>
	<link rel="stylesheet" href="resources/css/ch09.css" type="text/css"/>
</head>
<body>
	<h1>Download registration</h1>

	<p>To register for our downloads, enter your name and email address below. Then, click on the Register button.</p>

	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:if test="${message != null}">
	    <p class="mess"><i>${message}</i></p>
	</c:if>
	<form action="download" method="post">
		<input type="hidden" name="action" value="registerUser"> 
		<label class="pad_top">Email:</label> 
		<input type="email" name="email" value="${user.email}"><br> 
		<label class="pad_top">First Name:</label> 
		<input type="text" name="firstName" value="${user.firstName}"><br>
		<label class="pad_top">Last Name:</label> 
		<input type="text" name="lastName" value="${user.lastName}"><br> 
		<label>&nbsp;
		</label>
		<input class="btn margin_left" type="submit" value="Register">
		<a href="ch09ex1"><button class="btn" type="button">Go Back</button></a>
	</form>
</body>
</html>
