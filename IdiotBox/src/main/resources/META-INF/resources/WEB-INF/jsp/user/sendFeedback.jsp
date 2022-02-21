<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!--Bootsrap 4 CDN-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
<!--Fontawesome CDN-->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<!--Custom styles-->
<link rel="stylesheet" type="text/css" href="adminlogin.css">

</head>
<body>
	
	
	<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
			<h6 align="center">${feedbackResponse}</h6>
				<h3 align="center">Send Feedback</h3>
			</div>
			<div class="card-body">
				<form method="post"  action="/IdiotBox/user/sendFeedback">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type = "text"  name= "email" class="form-control" value="${sessionScope.loggedUser.email}" readonly/>
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-envelope-open"></i></span>
						</div>
						<input type = "text" name= "subject" class="form-control" placeholder="Subject"/>
					</div>
					<div class="input-group form-group">
						
						<textarea name="body" class="form-control input-lg" placeholder="Write here" rows="10" cols="50"></textarea>
					</div>
					<div class="input-group form-group">
						<!-- <div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div> -->
						 <button class="btn btn-lg btn-primary btn-block signup-btn" type="submit">
                        Send feedback</button>	
					</div> 			
				</form>	
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					<a href="<spring:url value='/user/home'/>">Go back</a>
				</div>
			</div>
		</div>
	</div>
</div>
	
	<%-- <form method="post"  action="/IdiotBox/user/sendEmail">
	<table style="background-color: cyan; margin: auto;">
				
			<tr><td>${feedbackResponse}</td></tr>	
				
			<tr>
				<td><input type = "text" name="email" value="${Email}" readonly/></td>
			</tr>
			<tr>
				<td><input type = "text" name="subject" placeholder="Subject"/></td>
			</tr>
			<tr>
				<td><textarea rows="10" cols="50" name="body" placeholder="Write here"></textarea></td>
			</tr>
			<tr>
				<td><input type="submit" value="Send Email" /></td>
			</tr>
			<a href="<spring:url value='/user/settings'/>">Go back</a>
		</table>
	</form> --%>

</body>
</html>