<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="spring"%>
<%@ include file = "header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Movies</title>
<script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
  
<script type="text/javascript">
function delc(x){
	 
	 $.ajax({ 
		    type: 'DELETE', 
		    url: 'http://localhost:7443/IdiotBoxServer/vcr/deletecom/'+x, 
		    			    dataType: 'text',
		    success: function () { 
		       
		         alert("U deleted tde comment");
		    }
		});
}</script>
</head>
<style>
	tr{
		background-color:#ffcc99;
	}
</style>
<body>
	<h3 align = "center">${requestScope.status}</h3>
	<table cellspacing="5">
	<th>
		<td>cID</td><td>UNAME</td><td>USER ID</td><td> AT TIME</td><td>COMMENT</td><td>PCOMID</td>
		</th>
		<spring:forEach var = "ad" items = "${requestScope.list}"> 
		
			<tr>
				<td>${ad.cid}</td>
				<td>${ad.username}</td>
				 <td>${ad.userid}</td>
				<td>${ad.dt}</td>
				<td>${ad.text}</td>
				<td>${ad.pcomid}</td>
				
				
			<td> <button id="dv" value="delete"= onclick="delc(${ad.cid})">Delete</button></td>
			</tr>
			<br>
			
		</spring:forEach>
		
	</table>
</body>
</html>