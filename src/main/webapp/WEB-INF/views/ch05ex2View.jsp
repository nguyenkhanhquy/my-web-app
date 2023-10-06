<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Exercise 5.2 Page</title>
	<link rel="stylesheet" href="resources/css/ch05.css" type="text/css"/>
</head>
<body>
	<h1>Test Servlet</h1>
    <form action="test" method="post">
        <input type="hidden" name="action" value="add">        
        <p>1. Enter the <strong>/test</strong> URL into the browser to run the test servlet. This should show that the test servlet works for the HTTP <strong>GET</strong> method. Ex: 21110282.codes<strong>/test</strong></p>
        <p>2. Click the <strong>Join Now</strong> button to run the test servlet. This should show that the test servlet works for the HTTP <strong>POST</strong> method.</p>
        <input class="btn" type="submit" value="Join Now">
        <a href="home"><button class="btn" type="button">Back Home</button></a>
    </form>
</body>
</html>
