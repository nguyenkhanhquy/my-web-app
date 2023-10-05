<%@page contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Java Error Page</title>
<link rel="stylesheet" href="resources/css/error.css" type="text/css" />
</head>
<body>

	<h1>Java Error</h1>
	<p>Sorry, Java has thrown an exception.</p>
	<p>To continue, click the Back button.</p>

	<h2>Details</h2>
	<p>Type: ${pageContext.exception["class"]}</p>
	<p>Message: ${pageContext.exception.message}</p>
	
	<!-- <img src="resources/img/error_java.svg" alt="Error Java"> -->

</body>
</html>
