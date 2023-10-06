<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>View Cookies Page</title>
	<link rel="stylesheet" href="resources/css/ch09.css" type="text/css"/>
</head>
<body>
	<h1>Cookies</h1>
	
	<p>Here's a table with all of the cookies that this 
	browser is sending to the current server.</p>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<table>
	  <tr>
	    <th>Name</th>
	    <th>Value</th>
	  </tr>
	  <c:forEach var="c" items="${cookie}">      
	  <tr>
	    <td>${c.value.name}</td> <!-- EL -->
	    <td><c:out value='${c.value.value}'/></td>  <!-- JSTL -->
	  </tr>
	  </c:forEach>  
	</table>
	
	<p><a href="download?action=viewAlbums">View list of albums</a></p>
	
	<p><a href="download?action=deleteCookies">Delete all persistent cookies</a></p>
</body>
</html>