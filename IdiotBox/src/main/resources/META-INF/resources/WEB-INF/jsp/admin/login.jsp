

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file = "header.jsp" %>
<%-- <%@ include file = "footer.jsp" %> --%>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
#id1
{
	color:yellow;
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
	height: 400px;
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
			<%-- <label align = "center" id = "cardcontent">${forgetPaswordResonse}</label> --%>
			<label align = "center" id = "cardcontent">${requestScope.forgetPaswordResonse}</label>
			<label align = "center" id = "cardcontent">${requestScope.errorMessage}</label>
				<h3 id="cardcontent" id = "cardcontent">Sign In </h3>
			</div>
			<div class="card-body">
				<form method="post">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="text" class="form-control" placeholder="email" name="email">
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" class="form-control" placeholder="password" name="password">
					</div>
					<div class="row align-items-center remember" id="cardcontent">
						<input type="checkbox" id="cardcontent">Remember Me
					</div>
					<div class="form-group">
						<input type="submit" value="Login" class="btn float-right login_btn">
					</div>
				</form>
			</div>
			<div class="card-footer" >
				<div class="d-flex justify-content-center links" id="id1">
					Don't have an account?<a href="/IdiotBox/admin/register" id="cardcontent"><u>Sign Up</u></a>
				</div>
				<div class="d-flex justify-content-center">
					<a href="/IdiotBox/admin/forgetPassword" id="cardcontent"><u>Forgot your password?</u></a>
				</div>
			</div>
		</div>
	</div>
</div> 
</body>
</html>