<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="spring"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Comments</title>
</head>
<body>
	<h3>Delete comments</h3>
	<form method="post">
		<table>
			<tr>
				<td>Enter Video Name</td>
				<td><input type = "text" name="videoname"></td>
			</tr>
		<tr>			
				<td><input type = "submit" value="Search"></td>
			</tr>
		</table>
	</form>
</body>
</html>