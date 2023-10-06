<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercise 7.1 + 7.2 Page</title>
    <link rel="stylesheet" href="resources/css/ch07.css" type="text/css"/>
</head>
<body>
	<h1>List of albums</h1>
	<p>User Email: ${cookie.userEmail.value}</p>
	
	<p>
	<a href="download?action=checkUser&amp;productCode=8601">
	    86 (the band) - True Life Songs and Pictures
	</a><br>
	
	<a href="download?action=checkUser&amp;productCode=pf01">
	    Paddlefoot - The First CD
	</a><br>
	
	<a href="download?action=checkUser&amp;productCode=pf02">
	    Paddlefoot - The Second CD
	</a><br>
	
	<a href="download?action=checkUser&amp;productCode=jr01">
	    Joe Rut - Genuine Wood Grained Finish
	</a>
	</p>

	<a href="home"><button class="btn" type="button">Back Home</button></a>

</body>
</html>
