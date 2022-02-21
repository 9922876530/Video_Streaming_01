<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="spring"%>
<%@ include file = "header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admins</title>
</head>
<style>
	tr{
		background-color:grey;
	}
</style>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<body>
	<div>
	<h3 align = "center">${requestScope.emailResponse}</h3>
	<table class="table"> 
 	<thead>
    <tr>
      <th>Sender</th>
      <th>Subject</th>
      <th>Content</th>
    </tr>
  	</thead>
  <spring:forEach var = "feedback" items = "${requestScope.listFeedback}"> 
  		<tbody>
   			<tr>
				<td>${feedback.senderEmail}</td>
				<td>${feedback.feedbackSubject}</td>
				<td><textarea readonly>${feedback.feedbackContent}</textarea></td>
			</tr>
		 </tbody>
  </spring:forEach>
</table>
	<label><a href='<spring:url value="/admin/home"/>'>Go back to home page</a></label>
</div>
</body>
</html>