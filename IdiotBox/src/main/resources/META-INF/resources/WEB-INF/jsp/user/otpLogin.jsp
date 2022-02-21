<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>OTP Login</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!--Bootsrap 4 CDN-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
<!--Fontawesome CDN-->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<!--Custom styles-->
<link rel="stylesheet" type="text/css" href="adminlogin.css">
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
</head>
<body>
<div class="container">
	<div class="d-flex justify-content-center h-100">
		
		<div class="card">
			 <h3 align="center">${requestScope.errorMessage}</h3> 
			<div class="card-header">
				<h3>Enter One Time Password</h3>
			</div>
			<div class="card-body">
				<form method="post" action="/IdiotBox/user/otpLogin">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type = "text"  name="otp" class="form-control" placeholder="OTP" required>
					</div>
					<div class="form-group">
						<input type="submit" value="Submit" class="btn float-right login_btn">		
					</div>
				</form>
			</div>
			<div class="card-footer">
				<h3><a href= "<spring:url value='/user/login/'/>"/>Go back to home</a></h3>
			</div>
		</div>
	</div>
</div>

	<%-- <h3 align="center">${requestScope.errorMessage}</h3> 
	<form method="post" action="/IdiotBox/user/otpLogin">
		<table style="background-color: cyan; margin: auto;">
			<tr>
				<td>Enter otp sent to you on email</td>
				<td><input type = "text"  name="otp" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Login" /></td>
			</tr>
		</table>
	</form> --%>

</body>
</html>