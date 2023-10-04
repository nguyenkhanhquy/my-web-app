<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Thanks Page</title>
	<link rel="stylesheet" href="resources/css/week4.css" type="text/css">
</head>
<body>
	<h1>Thank you for filling out the survey</h1>
	<p>Here is the information you filled in:</p>

	<label class="info-user">First Name:</label>
	<span>${user.firstName}</span>
	<br>

	<label class="info-user">Last Name:</label>
	<span>${user.lastName}</span>
	<br>

	<label class="info-user">Email:</label>
	<span>${user.email}</span>
	<br>
	
	<label class="info-user">Date of Birth:</label>
	<span>${user.dOB}</span>
	<br>
	<br>

	<label class="question">How did you hear about us?:</label>
	<span>${user.hear}</span>
	<br>
	<br>

	<label class="question">Would you like to receive announcements about new CDs and special offers?:</label>
	<br>
	<label>YES, I'd like that: </label>
	<span>${user.checkBoxLike}</span> 
	<br>
	
	<label>YES, please send me email announcements: </label>
	<span>${user.checkBoxSend}</span>
	<br>
	<br>
	
	<label class="question">Please contact me by: </label>
	<span>${user.contact}</span>
	<br>

	<p>To fill out another survey, click the Back button browser or Back button shown below.</p>
	
	<form action="" method="get">
		<input type="hidden" name="action" value="back"> 
		<input class="btn" type="submit" value="Back">
	</form>
</body>
</html>