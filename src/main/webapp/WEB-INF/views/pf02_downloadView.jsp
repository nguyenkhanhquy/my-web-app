<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PF02 Download Page</title>
    <link rel="stylesheet" href="resources/css/ch07.css" type="text/css"/>
</head>
<body>

	<h1>Downloads</h1>
	
	<h2>Paddlefoot - The Second CD</h2>
	    
	<table>
	<tr>
	    <th>Song title</th>
	    <th>Audio Format</th>
	</tr>
	<tr>
	    <td>Neon Lights</td>
	    <td><audio src="musicStore/sound/${product.code}/neon.mp3" controls preload="none"></audio>
	</tr>
	<tr>
	    <td>Tank Hill</td>
	    <td><audio src="musicStore/sound/${product.code}/tank.mp3" controls preload="none"></audio>
	</tr>
	</table>
	
	<p><a href="?action=viewAlbums">View list of albums</a></p>
	
	<p><a href="?action=viewCookies">View all cookies</a></p>

</body>
</html>