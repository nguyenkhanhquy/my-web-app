<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JR01 Download Page</title>
    <link rel="stylesheet" href="resources/css/ch07.css" type="text/css"/>
</head>
<body>

	<h1>Downloads</h1>
	
	<h2>Joe Rut - Genuine Wood Grained Finish</h2>
	    
	<table>
	<tr>
	    <th>Song title</th>
	    <th>Audio Format</th>
	</tr>
	<tr>
	    <td>Filter</td>
	    <td><audio src="musicStore/sound/${product.code}/filter.mp3" controls preload="none"></audio>
	</tr>
	<tr>
	    <td>So Long Lazy Ray</td>
	    <td><audio src="musicStore/sound/${product.code}/so_long.mp3" controls preload="none"></audio>
	</tr>
	</table>
	
	<p><a href="?action=viewAlbums">View list of albums</a></p>
	
	<p><a href="?action=viewCookies">View all cookies</a></p>

</body>
</html>