<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
input:focus {
  background-color: yellow;
}
</style>

	<title>SignUp Page</title>
   
	<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="usersignup.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register User</title>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="spring"%>
</head>
<style>

@import url('https://fonts.googleapis.com/css?family=Numans');

html,body{
background-image: url('http://getwallpapers.com/wallpaper/full/a/5/d/544750.jpg');
background-size: cover;
background-repeat: no-repeat;
height: 100%;
font-family: 'Numans', sans-serif;
}

th, td {
   padding: 20px;
  }
.container{
height: 100%;
align-content: center;
}

.card{
height: 700px;
margin-top: auto;
margin-bottom: auto;
width: 400px;
background-color: rgba(0,0,0,0.5) !important;
}

.social_icon span{
font-size: 60px;
margin-left: 10px;
color: #ff0004;
}

.social_icon span:hover{
color: white;
cursor: pointer;
}

.card-header h3{
color: white;
}
.card-body label,span{
color: white;
}

.social_icon{
position: absolute;
right: 20px;
top: -45px;
}

.input-group-prepend span{
width: 50px;
background-color: #ff0004;
color: black;
border:0 !important;
}

/*input:focus{
outline: 0 0 0 0  !important;
box-shadow: 0 0 0 0 !important;

}*/

.remember{
color: white;
}

.remember input
{
width: 20px;
height: 20px;
margin-left: 15px;
margin-right: 5px;
}

.login_btn{
color: black;
background-color: #ff0004;
width: 100px;
}

.login_btn:hover{
color: black;
background-color: white;
}

.links{
color: white;
}

.links a{
margin-left: 4px;
}
</style>
<body>
	<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
			<h3 align="center">${requestScope.ErrorMessage}</h3>
				<h3>Sign Up</h3>
			</div>
			<div class="card-body">
				<form:form method="post" modelAttribute="user" action="/IdiotBox/user/checkPlans">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<form:input type = "text" path="fName" class="form-control" placeholder="First Name" />
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<form:input type = "text" path="lName" class="form-control" placeholder="Last Name"/>
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-envelope-open"></i></span>
						</div>
						<form:input type = "email" path="email" class="form-control input-lg" placeholder="Primary Email"  />
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-envelope-open"></i></span>
						</div>
						
						<form:input type = "email" path="aEmail" class="form-control input-lg" placeholder="Secondary Email"  />
					</div>	
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<form:password path="password" class="form-control input-lg" placeholder="Password"  />						
					</div>
				<!-- 	<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div> -->
						 <div class="control-group">
       					 <form:label cssClass="control-label" path="birthDate">Birth date:</form:label>
       					<div class="controls">
          				  <form:input path="birthDate" class="date" />
      					  </div>
    					</div>
						<%-- <form:input type = "number" path="birthDate" class="form-control input-lg" placeholder="Age" />	 --%>	
					<!-- </div>  -->			
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						 <form:radiobutton path="gender" value="Male" class="form-control input-lg" placeholder="GENDER"/><label>Male</label>
						<form:radiobutton path="gender" value="Female" class="form-control input-lg" placeholder="GENDER"/><label>Female</label>
					</div>
					<!--  <label>Birth Date :</label> 
                    <input type="date" id="start" name="trip-start"
                        value="1970-01-01"
                        min="1950-01-01" max="2030-12-31"> 
	 				<br />
                    <table>
					<tr>
                        <td ><label>Gender : </label>   </td>                 
                        <td ><label class="radio-inline">
                        <input type="radio" name="gender" value="M" id=male />Male
                        </label></td>
                        <td><label class="radio-inline">
                        <input type="radio" name="gender" value="F" id=female />Female
                        </label></td>
                        </tr>
                     </table>
                    <br />
                     --> 
                    
              <span class="help-block">By clicking Create my account, you agree to our Terms and that you have read our Data Use Policy, including our Cookie Use.</span>
                    <button class="btn btn-lg btn-primary btn-block signup-btn" type="submit">
                        Create my account</button>
			</form:form>	
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					Already have an account?<a href="<spring:url value='/user/login'/>">Sign In</a>
				</div>
			</div>
		</div>
	</div>
</div>
</html>