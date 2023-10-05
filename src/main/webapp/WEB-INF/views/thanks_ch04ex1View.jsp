<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Thanks Page</title>
	<link rel="stylesheet" href="resources/css/ch04.css" type="text/css">
</head>
<body>
	<h1>Thanks for taking our survey</h1>
	<p>Here is the information that you entered:</p>

	<label class="info-user">First Name:</label>
	<span>${user.firstName}</span><br>

	<label class="info-user">Last Name:</label>
	<span>${user.lastName}</span><br>

	<label class="info-user">Email:</label>
	<span>${user.email}</span><br>
	
	<label class="info-user">Date of Birth:</label>
	<span>${user.dOB}</span><br>

	<label class="info-user">Heard From:</label>
	<span>${user.heardFrom}</span><br>

	<label class="info-user">Like that:</label>
	<span>${user.checkBoxLike}</span><br>
	
	<label class="info-user">Updates:</label>
	<span>${user.checkBoxSend}</span><br>
	
	<label class="info-user">ContactVia: </label>
	<span>${user.contactVia}</span><br>

	<p>To fill out another survey, click the Back button browser or Back button shown below.</p>
	
	<form action="" method="post">
		<input type="hidden" name="action" value="back"> 
		<input type="hidden" name="myExercise" value="ch04ex1View">
		<input class="btn" type="submit" value="Back">
	</form>
</body>
</html>
