<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file = "header.jsp" %>
<%-- <%@ include file = "footer.jsp" %> --%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Otp Forget Password</title>
<link rel="stylesheet" type="text/css" href="/css/adminlogin.css">
<style>
 
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
width:100%;
} }
body 
	{
	background-position:center; 
  	background-image: 
  	url("http://getwallpapers.com/wallpaper/full/1/0/c/822782-full-size-horror-movie-background-2560x1600.jpg");
  	background-repeat: no-repeat;
  	background-attachment: fixed;
	} 
	.card{
	margin-left: 60px;
	height: 200px;
	margin-top:;
	margin-bottom: auto;
	width: 300px;
	background-color: rgba(128,128,128,0.5) !important;
	}
	


</style>
</head>
<body>
<br><br><br><br>
	<h3 align="center">${errorMessage}</h3> 
	<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3 id= "cardcontent">Enter OTP</h3>
			</div>
			<div class="card-body">
				<form method="post" action="/IdiotBox/admin/otpForgetPassword">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						
						<input type="text" class="form-control" placeholder ="OTP" name = "otp"> 	
					</div>
					<div class="form-group">
						<input type="submit" value="Submit" class="btn btn-primary float-right login_btn" id="button1">
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
	
	
	
	
</body>
</html>