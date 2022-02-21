<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="spring"%>
    <%@ include file = "header.jsp" %>
    <%-- <%@ include file = "footer.jsp" %> --%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forget Password</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


</head>

<style>
	footer {
   position: absolute;
  bottom: 0;
  width: 100%;
  height: 50px;
	}
	tr{
		background-color:tomato;
	}
	.card{
	margin-left: 60px;
	height: 200px;
	margin-top:100px;
	margin-bottom: auto;
	width: 300px;
	background-color: rgba(255,255,255,0.5) !important;
	}
	body 
	{
	background-position:center; 
  	background-image: 
  	url("http://getwallpapers.com/wallpaper/full/1/0/c/822782-full-size-horror-movie-background-2560x1600.jpg");
  	background-repeat: no-repeat;
  	background-attachment: fixed;
	} 
	#cardcontent
	{
		font-color:white;
	}
	
</style>

	<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
	<script type="text/javascript">
    /* $(document).ready(function(){
		$("#button1").click(function()
		{
		    var adminEmail = $("#adminEmail").val();
		    $.post("http://localhost:8080/IdiotBox/admin/forgetPassword",
		    	    {
		    	      email: adminEmail,
		    	    },
		    	    function(data,status)
		    	    {
			    	   alert("Data: " + data + "\nStatus: " + status);
		    	    });	
		});
	}); */
</script>

</head>
<body>
<h3 align="center">${status}</h3> 
<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3 id="cardcontent">Forget Password</h3>
				<!-- <div class="d-flex justify-content-end social_icon">
					<span><i class="fab fa-facebook-square"></i></span>
					<span><i class="fab fa-google-plus-square"></i></span>
					<span><i class="fab fa-twitter-square"></i></span>
				</div>-->
			</div>
			<div class="card-body">
				<form method="post">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="text" class="form-control" placeholder ="Email" 
						name="adminEmail" id="adminEmail" required>
						
					</div>
					<div class="form-group">
						<input type="submit" value="Submit" class="btn btn-primary float-right login_btn "  id="button1">
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
	
</body>
</html>