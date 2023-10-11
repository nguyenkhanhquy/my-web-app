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
	<h1>Test servlet</h1>
	<form action="test" method="get">
        <input type="hidden" name="action" value="add">      
        <p>1. Click the <strong>Get Method</strong> button or Enter the <strong>/test</strong> URL into the browser to run the test servlet. This should show that the test servlet works for the HTTP <strong>GET</strong> method. Ex: 21110282.codes<strong>/test</strong></p>
        <input class="btn" type="submit" value="Get Method">
    </form>
    <form action="test" method="post">
        <input type="hidden" name="action" value="add">
        <p>2. Click the <strong>Post Method</strong> button to run the test servlet. This should show that the test servlet works for the HTTP <strong>POST</strong> method.</p>
        <input class="btn" type="submit" value="Post Method">
        <a href="home#exercise"><button class="btn" type="button">Back Home</button></a>
    </form>
    
</body>
</html>
