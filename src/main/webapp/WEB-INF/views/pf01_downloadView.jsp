<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PF01 Download Page</title>
    <link rel="stylesheet" href="resources/css/ch07.css" type="text/css"/>
</head>
<body>

	<h1>Downloads</h1>
	
	<h2>Paddlefoot - The First CD</h2>
	    
	<table>
	<tr>
	    <th>Song title</th>
	    <th>Audio Format</th>
	</tr>
	<tr>
	    <td>64 Corvair</td>
	    <td><audio src="musicStore/sound/${product.code}/corvair.mp3" controls preload="none"></audio>
	</tr>
	<tr>
	    <td>Whiskey Before Breakfast</td>
	    <td><audio src="musicStore/sound/${product.code}/whiskey.mp3" controls preload="none"></audio>
	</tr>
	</table>
	
	<p><a href="?action=viewAlbums">View list of albums</a></p>
	
	<p><a href="?action=viewCookies">View all cookies</a></p>

</body>
</html>