<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Exercise 5.1 Page</title>
	<link rel="stylesheet" href="resources/css/ch05.css" type="text/css"/>
</head>
<body>
	<h1>Join our email list</h1>
    <p>To join our email list, enter your name and email address below.</p>
    <p class="mess"><i>${message}</i></p>
    
    <form action="emailList" method="post">
        <input type="hidden" name="action" value="add">    
        <input type="hidden" name="myExercise" value="ch05ex1View">      
        <label class="pad_top">Email:</label>
        <input type="email" name="email" value="${user.email}"><br>
        <label class="pad_top">First Name:</label>
        <input type="text" name="firstName" value="${user.firstName}"><br>
        <label class="pad_top">Last Name:</label>
        <input type="text" name="lastName" value="${user.lastName}"><br>        
        <label>&nbsp;</label>
        <input type="submit" value="Join Now" class="margin_left">
        <a href="home"><button class="margin_left" type="button">Back Home</button></a>
    </form>
</body>
</html>
