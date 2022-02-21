<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file = "header.jsp" %>
<%-- <%@ include file = "footer.jsp" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


</head>

<style>
	 
	footer {
	background-color: #000;
	color: #FFFFFF;
	font-size:.8em;
	margin-top:15px;
	padding-top: 15px;
	padding-bottom: 5px;
	position:fixed;
	left:0;
	bottom:0;
	width:100%;
	}
#cardcontent
{
	color:white;
}
@media only screen and (max-width: 767px){
footer {
background-color: #000;
color: #FFFFFF;
font-size:.8em;
margin-top:15px;
padding-top: 15px;
padding-bottom: 10px;
position:fixed;
left:0;
bottom:0;
width:50%;
} }
	body 
	{
	background-position:center; 
  	background-image: 
  	url("http://getwallpapers.com/wallpaper/full/1/0/c/822782-full-size-horror-movie-background-2560x1600.jpg");
  	background-repeat: no-repeat;
  	/*background-attachment: fixed;*/
	} 
	.card{
	margin-left: 60px;
	height: 500px;
	margin-top:150px;
	margin-bottom: auto;
	width: 300px;
	background-color: rgba(128,128,128,0.5) !important;
	}
	
</style>

</head>
<body>
<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
			<label align = "center">${requestScope.errorMessage}</label>
				<h3 id="cardcontent">Register </h3>
				<!-- <div class="d-flex justify-content-end social_icon">
					<span><i class="fab fa-facebook-square"></i></span>
					<span><i class="fab fa-google-plus-square"></i></span>
					<span><i class="fab fa-twitter-square"></i></span>
				</div>-->
			</div>
			<div class="card-body">
				<form:form method="post" modelAttribute="admin">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<form:input type = "text" class="form-control" placeholder="First Name" path="fName" />
					<!-- 	<input type="text" class="form-control" placeholder="First Name" name="email"> -->
						
					</div>
					
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<form:input type = "text" path="lName" class="form-control" placeholder="Last Name"/>
						<!-- <input type="password" class="form-control" placeholder="password" name="password"> -->
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<form:input type = "email" path="email" class="form-control" placeholder="Primary email" />
						<!-- <input type="text" class="form-control" placeholder="email" name="email"> -->
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<form:input type = "email" path="aEmail" class="form-control" placeholder="Alternate email"/>
						<!-- <input type="text" class="form-control" placeholder="email" name="email"> -->
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<form:password path="password" class="form-control" placeholder="Password"/>
						<!-- <input type="text" class="form-control" placeholder="email" name="email"> -->
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<form:input type = "text" path="phone" class="form-control" placeholder="Phone"/>
						<!-- <input type="text" class="form-control" placeholder="email" name="email"> -->
						
					</div>
					<div class="form-group">
						<input type="submit" value="Register" class="btn btn-primary float-right login_btn">
					</div>
				</form:form>
			</div>
		</div>
	</div>
</div>
</body>
</html>