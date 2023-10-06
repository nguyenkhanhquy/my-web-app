<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercise 7.3 + 9.2 Page</title>
    <link rel="stylesheet" href="resources/css/ch09.css" type="text/css"/>
</head>
<body>
	<h1>CD list</h1>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<table class="cd-list">
	    <tr>
	        <th>Description</th>
	        <th class="right">Price</th>
	        <th>&nbsp;</th>
	    </tr>
	  <c:forEach var="product" items="${products}">
	    <tr>
	        <td><c:out value='${product.description}'/></td>
	        <td class="right">${product.priceCurrencyFormat}</td>
	        <td><form action="cart" method="post">
	                <input type="hidden" name="productCode" value="<c:out value='${product.code}'/>">
	                <input type="submit" value="Add To Cart">
	            </form></td>
	    </tr>
	    </c:forEach>
	</table>
	
	<br>
	<a href="home"><button class="btn" type="button">Back Home</button></a>
	
</body>
</html>
