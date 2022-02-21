<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="spring"%>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Movies</title>
</head>
<style>
	tr{
		background-color:#ffcc99;
	}
</style>
<body>

	<table cellspacing="5">
		<spring:forEach var = "ad" items = "${requestScope.list}"> 
	
			<tr>
				<td><a href="<spring:url value='/video/get/${ad.vid }'/>"/><img alt="not added" src="${ad.poster}" width="120" height="200"></a></td>
				<br>
				<td>${ad.videoName}</td>
				 <td>${ad.year}</td>
				</tr>
		</spring:forEach>
		
	</table>
</body>
</html>