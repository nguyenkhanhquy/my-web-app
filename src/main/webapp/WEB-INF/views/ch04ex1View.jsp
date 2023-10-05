<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Exercise 4.1 Page</title>
	<link rel="stylesheet" href="resources/css/ch04.css" type="text/css">
</head>
<body>
	<form action="survey" method="post">
		<img src="resources/img/logoMurach.png" alt="Murach Logo" width="160px">
		<h1>Survey</h1>
		<p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>
		
		<input type="hidden" name="action" value="submit">
		<input type="hidden" name="myExercise" value="ch04ex1View">
		
		<h2>Your Information</h2>
		<label class="info-user">Fisrt Name</label>
		<input type="text" name="firstName" required><br>

		<label class="info-user">Last Name</label>
		<input type="text" name="lastName" required><br>

		<label class="info-user">Email</label>
		<input type="email" name="email" required><br>
		
		<label class="info-user">Date of Birth</label>
		<input type="date" name="dOB" required><br>
		
		<h2>How did you hear about us?</h2>

		<input type="radio" name="heardFrom" value="Search engine" required>
		<label>Search engine</label>

		<input type="radio" name="heardFrom" value="Word of mouth">
		<label>Word of mouth</label>
		
		<input type="radio" name="heardFrom" value="Social Media">
		<label>Social Media</label>

		<input type="radio" name="heardFrom" value="Other">
		<label>Other</label>

		<h2>Would you like to receive announcements about new CDs and special offers?</h2>

		<input type="checkbox" name="checkBoxLike">
		<label>YES, I'd like that.</label><br><br>
		
		<input type="checkbox" name="checkBoxSend">
		<label>YES, please send me email announcements.</label>
		<br>
		<br>
		
		<label>Please contact me by:</label>
		<select name="contactVia">
			<option value="Email or postal mail" selected>Email or postal mail</option>
			<option value="Email only">Email only</option>
			<option value="Postal mail only">Postal mail only</option>
		</select>
		<br>
		<br>
		<input class="btn" type="submit" value="Submit">
		<a href="home"><button class="btn" type="button">Back Home</button></a>
	</form>

</body>
</html>
