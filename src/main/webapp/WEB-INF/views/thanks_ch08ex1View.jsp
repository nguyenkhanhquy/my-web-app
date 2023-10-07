<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Thanks Page</title>
	<link rel="stylesheet" href="resources/css/ch08.css" type="text/css"/>  
</head>
<body>
	<h1>Thanks for joining our email list</h1>

    <p>Here is the information that you entered:</p>

    <label>Email:</label>
    <span>${user.email}</span><br>
    <label>First Name:</label>
    <span>${user.firstName}</span><br>
    <label>Last Name:</label>
    <span>${user.lastName}</span><br>

    <p>This email address was added to our list on ${requestScope.currentDate}</p>

    <p>The first address on our list is ${sessionScope.users[0].email}<br>
       The second address on our list is ${sessionScope.users[1].email}
    </p>
      
    <p>For customer service, contact ${initParam.custServEmail}</p>    

    <p>To enter another email address, click on the Back 
    button in your browser or the Return button shown 
    below.</p>
    
    <form action="" method="get">
        <input type="hidden" name="action" value="join">
        <input type="hidden" name="myExercise" value="ch08ex1View"> 
        <input class="btn" type="submit" value="Return">
    </form>
    
<%@ include file="includes/footer.jsp" %>
