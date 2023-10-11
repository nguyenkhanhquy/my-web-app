<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>8601 Download Page</title>
    <link rel="stylesheet" href="resources/css/ch07.css" type="text/css"/>
</head>
<body>
	<h1>Downloads</h1>
	
	<h2>86 (the band) - True Life Songs and Pictures</h2>
	    
	<table>
	<tr>
	    <th>Song title</th>
	    <th>Audio Format</th>
	</tr>
	<tr>
	    <td>You Are a Star</td>
	    <td><audio src="musicStore/sound/${product.code}/star.mp3" controls preload="none"></audio></td>
	</tr>
	<tr>
	    <td>Don't Make No Difference</td>
	    <td><audio src="musicStore/sound/${product.code}/no_difference.mp3" controls preload="none"></audio></td>
	</tr>
	</table>
	
	<p><a href="?action=viewAlbums">View list of albums</a></p>
	
	<p><a href="?action=viewCookies">View all cookies</a></p>
</body>
</html>