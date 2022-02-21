<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="spring"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Two factor authentication</title>
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
			<h3 align="center">${status}</h3> 
			<h3 align="center">${newStatus}</h3> 
			<div class="card-header">
				<h3>Change password</h3>
			</div>
			<div class="card-body">
				<form method="post" action="<spring:url value='/user/twofactorauth'/>">
					<div class="input-group form-group">
						<!-- <div class="input-group-prepend">
							<span class="input-group-text"></span>
						</div>
						 -->
						 <div>
							<label>Change status</label>
						</div>
					</div>
					<div class="input-group form-group">
						<!-- <div class="input-group-prepend">
							<span class="input-group-text"></i></span>
						</div> -->
						<input type = "radio"  name="status" value="Active" class="form-control input-lg"/><label>Activate</label> &nbsp;&nbsp;
						<input type = "radio"  name="status" value="Deactivate" class="form-control input-lg"/><label>Deactivate</label>
					</div>	
					<div class="form-group">
						<input type="submit" value="Submit" class="btn btn-primary float-right login_btn">	
					</div>
				</form>
			</div>
			<div class="card-footer">
				<h3><a href= "<spring:url value="/user/home"/>">Go back to home</a></h3>
			</div>
		</div>
	</div>
</div>
</body>
</html>