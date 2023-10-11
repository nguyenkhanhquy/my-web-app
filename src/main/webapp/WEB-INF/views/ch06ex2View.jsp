<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercise 4.1 + 6.2 Page</title>
    <link rel="stylesheet" href="resources/css/ch06.css" type="text/css">
</head>
<body>
    <form action="survey" method="post">
    	<img src="resources/img/logoMurach.png" alt="Murach Logo" width="160px">
        <h1>Survey</h1>
        <p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>
        
        <input type="hidden" name="action" value="submit">
		<input type="hidden" name="myExercise" value="ch06ex2View">
		
        <h2>Your information:</h2>
        <label class="pad_top">First Name</label>
        <input type="text" name="firstName" required><br>
        <label class="pad_top">Last Name</label>
        <input type="text" name="lastName" required><br>
        <label class="pad_top">Email</label>
        <input type="email" name="email" required><br>
        <label class="pad_top">Date of Birth</label>
		<input type="date" name="dOB" required><br>

        <h2>How did you hear about us?</h2>
        <p><input type="radio" name="heardFrom" value="Search Engine" required>Search engine
           <input type="radio" name="heardFrom" value="Friend">Word of mouth
           <input type="radio" name="heardFrom" value="Social Media">Social Media
           <input type="radio" name="heardFrom" value="Other">Other</p>

        <h2>Would you like to receive announcements about new CDs and special offers?</h2>
        <p><input type="checkbox" name="checkBoxLike">YES, I'd like that.</p>
        <p><input type="checkbox" name="checkBoxSend">YES, please send me email announcements.</p>

        <p>Please contact me by:
            <select name="contactVia">
                <option value="Both" selected>Email or postal mail</option>
                <option value="Email">Email only</option>
                <option value="Postal Mail">Postal mail only</option>
            </select>
        </p>

        <input class="btn" type="submit" value="Submit">
        <a href="home#exercise"><button class="btn" type="button">Back Home</button></a>
    </form>
</body>
</html>
