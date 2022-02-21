<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file = "header.jsp" %>
<%-- <%@ include file = "footer.jsp" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>OTP</title>
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
	margin-top:50px;
	margin-bottom: auto;
	width: 300px;
	background-color: rgba(128,128,128,0.5) !important;
	}
	


</style>
</head>
<body>
	 <h3 align="center">${errorMessage}</h3> 
	 <br><br><br><br>
	<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3 id= "cardcontent">Enter OTP</h3>
			</div>
			<div class="card-body">
				<form method="post" action="/IdiotBox/admin/otp">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						
						<input type="text" class="form-control" placeholder ="OTP" name = "otp"> 	
					</div>
					<div class="form-group">
						<input type="submit" value="Submit otp" class="btn btn-primary float-right login_btn" id="button1">
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
</body>
</html>