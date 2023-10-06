<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercise 7.3 Page</title>
    <link rel="stylesheet" href="resources/css/ch07.css" type="text/css"/>
</head>
<body>
	<h1>CD list</h1>
	<table class="cd-list">
	    <tr>
	        <th>Description</th>
	        <th class="right">Price</th>
	        <th>&nbsp;</th>
	    </tr>
	    <tr>
	        <td>86 (the band) - True Life Songs and Pictures</td>
	        <td class="align_right">$14.95</td>
	        <td class="align_center">
	        	<form action="cart" method="post">
	                <input type="hidden" name="productCode" value="8601">
	                <input type="submit" value="Add To Cart">
	            </form>
	            <!--<a href="cart?productCode=8601">Add To Cart</a>--></td>
	    </tr>
	    <tr>
	        <td>Paddlefoot - The first CD</td>
	        <td class="align_right">$12.95</td>
	        <td class="align_center">
	        	<form action="cart" method="post">
	                <input type="hidden" name="productCode" value="pf01">
	                <input type="submit" value="Add To Cart">
	            </form></td>
	    </tr>
	    <tr>
	        <td>Paddlefoot - The second CD</td>
	        <td class="align_right">$14.95</td>
	        <td class="align_center">
	        	<form action="cart" method="post">
	                <input type="hidden" name="productCode" value="pf02">
	                <input type="submit" value="Add To Cart">
	            </form></td>
	    </tr>
	    <tr>
	        <td>Joe Rut - Genuine Wood Grained Finish</td>
	        <td class="align_right">$14.95</td>
	        <td class="align_center">
	        	<form action="cart" method="post">
	                <input type="hidden" name="productCode" value="jr01">
	                <input type="submit" value="Add To Cart">
	            </form></td>
	    </tr>
	</table>
		
	<br>
	<a href="home"><button class="btn" type="button">Back Home</button></a>
	
</body>
</html>
