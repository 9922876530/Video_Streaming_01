<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="spring"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Settings</title>
</head>
<body>
	<h3>Welcome to setting page</h3>
	<h3><a href= "<spring:url value="/user/changePassword"/>">Change password</a></h3>
	<h3>Update phone number</h3>
	<h3>See subscription</h3>
	<h3><a href= "<spring:url value="/user/twofactorauth"/>">Turn on/off 2-factor authentication</a></h3>
	<h3>Change profile picture</h3>
	
</body>
</html>