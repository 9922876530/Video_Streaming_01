<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file = "header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add video</title>
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
			<h3 align="center">${requestScope.ErrorMessage}</h3>
				<h3 id="cardcontent">Register </h3>
				<!-- <div class="d-flex justify-content-end social_icon">
					<span><i class="fab fa-facebook-square"></i></span>
					<span><i class="fab fa-google-plus-square"></i></span>
					<span><i class="fab fa-twitter-square"></i></span>
				</div>-->
			</div>
			<div class="card-body">
				<form:form method="post" modelAttribute="video" enctype="multipart/form-data">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<form:input type = "text" path="videoName" class="form-control" placeholder="Video Name" />	
					</div>
					
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<form:input type = "text" path="director" class="form-control" placeholder="Director"/>
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<form:input type = "text" path="genre" class="form-control" placeholder="Genre"/>
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<form:input type = "number" path="year" class="form-control" placeholder="Year"/>
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<form:input type = "number" path="runtimee" class="form-control" placeholder="Movie Playback time"/>	
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<form:input type = "text" path="poster" class="form-control" placeholder="Poster"/>
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<form:input type = "text" path="descr" class="form-control" placeholder="Description"/>
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="file" name="uploadedFile" id="uploadedFile" class="form-control" placeholder="Upload video file">
						<form:input type = "text" path="descr" class="form-control" placeholder="Poster"/>
					</div>
					
					<div class="form-group">
						<input type="submit" value="Register" class="btn btn-primary float-right login_btn">
					</div>
				</form:form>
			</div>
		</div>
	</div>
</div>


	<%-- <h3 align="center">${requestScope.ErrorMessage}</h3>
	<form:form method="post" modelAttribute="video" enctype="multipart/form-data">
		<table style="background-color: cyan; margin: auto;">
				<tr>
				<td>Movie Name</td>
				<td><form:input type = "text" path="videoName" /></td>
			</tr>
			
			<tr>
				<td>Director</td>
				<td><form:input type = "text" path="director" /></td>
			</tr>
			<tr>
				<td>Actors</td>
				<td><form:input type = "text" path="actors" /></td>
			</tr>
			
			<tr>
				<td>Genre</td>
				<td><form:input type = "text" path="genre" /></td>
			</tr>
			<tr>
				<td>Year</td>
				<td><form:input type = "number" path="year" /></td>
			</tr>
			<tr>
				<td>runtime</td>
				<td><form:input type = "number" path="runtimee" /></td>
			</tr>
			
			<tr>
				<td>poster url</td>
				<td><form:input type = "text" path="poster" /></td>
			</tr>
			
			<tr>
				<td>Desc</td>
				<td><form:input type = "text" path="descr" /></td>
			</tr>
			<tr>
				<td>Video File</td>
				<td><input type="file" name="uploadedFile" id="uploadedFile"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Register Me" /></td>
			</tr>
		</table>
	</form:form> --%>

</body>
</html>