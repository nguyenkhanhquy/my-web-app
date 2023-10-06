<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thanks Page</title>
    <link rel="stylesheet" href="resources/css/ch06.css" type="text/css"/>    
</head>
<body>
    <h1>Thanks for taking our survey!</h1>

    <p>Here is the information that you entered:</p>

    <label>Email:</label>
    <span>${user.email}</span><br>
    <label>First Name:</label>
    <span>${user.firstName}</span><br>
    <label>Last Name:</label>
    <span>${user.lastName}</span><br>
    <label>Date of Birth:</label>
	<span>${user.dOB}</span><br>
    <label>Heard From:</label>
    <span>${user.heardFrom}</span><br>
    <label>Like that:</label>
    <span>${user.checkBoxLike}</span><br>
    <label>Updates:</label>
    <span>${user.checkBoxSend}</span><br>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:if test="${user.checkBoxSend == 'Yes'}">
        <label>Contact Via:</label>
        <span>${user.contactVia}</span>
    </c:if>  
    
    <p>To fill out another survey, click the Back button browser or Back button shown below.</p>  
    
    <form action="" method="post">
		<input type="hidden" name="action" value="back"> 
		<input type="hidden" name="myExercise" value="ch06ex2View">
		<input class="btn" type="submit" value="Back">
	</form>
</body>
</html>
