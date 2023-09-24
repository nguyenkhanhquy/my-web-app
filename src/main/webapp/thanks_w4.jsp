<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Murach's Java Servlets and JSP</title>
	<link rel="stylesheet" href="assets/css/week4.css" type="text/css">
</head>
<body>
	<header>
		<h1>Thank you for filling out the survey</h1>
		<p>Here is the information you filled in:</p>
	</header>
	
	<section>
		<h2>Your Information</h2>
		<label class="info-user">First Name:</label>
		<span><b>${user.firstName}</b></span>
		<br>
	
		<label class="info-user">Last Name:</label>
		<span><b>${user.lastName}</b></span>
		<br>
	
		<label class="info-user">Email:</label>
		<span><b>${user.email}</b></span>
		<br>
		
		<label class="info-user">Date of Birth:</label>
		<span><b>${user.dOB}</b></span>
		<br>
	
		<h2>How did you hear about us?</h2>
		<span><b>${user.hear}</b></span>
		<br>
	
		<h2>Would you like to receive announcements about new CDs and special offers?</h2>
		<label>YES, I'd like that: </label><span><b>${user.checkBoxLike}</b></span> 
		<br>
		<br>
		
		<label>YES, please send me email announcements: </label>
		<span><b>${user.checkBoxSend}</b></span><br>
		<br>
		<br>
		
		<label>Please contact me by: </label>
		<span><b>${user.contact}</b></span><br>
		<br>
	
		<p>To fill out another survey, click the Back button browser or Back button shown below.</p>
		<form action="" method="get">
			<input type="hidden" name="action" value="back"> 
			<input class="btn" type="submit" value="Back">
		</form>
	</section>
</body>
</html>