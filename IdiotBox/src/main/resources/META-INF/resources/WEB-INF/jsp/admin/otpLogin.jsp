<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file = "header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<title>Otp verification</title>
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
	color:black;
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
	margin-top:100px;
	margin-bottom: auto;
	width: 300px;
	background-color: rgba(128,128,128,0.5) !important;
	}
	
</style>

</head>
<body>
<br>
<br>
<br>
<div class="container">
	<div class="d-flex justify-content-center h-100" >
		<div class="card" transparent>
			<div class="card-header">
				<label align = "center">${errorMessage}</label>
				<h3 id="cardcontent">Enter otp</h3>
			</div>
			<div class="card-body">
				<form method="post" action="/IdiotBox/admin/otpLogin">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
							
						</div>
						
						<input type="text" class="form-control" placeholder="OTP"  name="otp" >
					</div>
					<div class="form-group">
						<input type="submit" value="Submit otp" class="btn float-right login_btn">
					</div>
				</form>
			</div>
		</div>
	</div>
</div> 




	<%--  <h3 align="center">${errorMessage}</h3> 
	<form method="post" action="/IdiotBox/admin/otpLogin">
		<table style="background-color: cyan; margin: auto;">
			<tr>
				<td>Enter otp sent to you on email</td>
				<td><input type = "text"  name="otp" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Register Admin" /></td>
			</tr>
		</table>
	</form>
 --%>
</body>
</html>