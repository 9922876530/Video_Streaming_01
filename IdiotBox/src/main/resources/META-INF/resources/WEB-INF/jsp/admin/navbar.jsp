<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Website Layout</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
	<link rel="stylesheet" href="style.css">
  <style type="text/css">
    @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,700');

html,body{
  height: 100%;
  width: 100%;
  font-family: 'Poppins',sans-serif;
  color: #222;
}
.navbar {
  padding: .1rem;
}
.navbar-nav li{
  padding-right: 20px;
}
.nav-link {
  font-size: 1.1em !important;
}
.carousel-inner img {
  width: 100%;
  height: 100%;
}
.carousel-caption {
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
}
.carousel-caption h1{
  font-size: 500%;
  text-transform: uppercase;
  text-shadow: 1px 1px 10px #000;
}
.carousel-caption h3 {
  font-size: 200%;
  font-weight: 500;
  text-shadow: 1px 1px 1px 10px #000;
}

/*---Media Queries---*/
@media (max-width: 992px){

}
@media (max-width: 768px){

}
@media (max-width: 576px){

}

/*---Fixed Background Image---*/
figure{
  position: relative;
  width: 100%;
  height: 60%;
  margin: 0!important;

}
.fixed-wrap{
  clip: rect(0,auto,auto,0);
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;

}
#fixed {
  background-image: url('img/mac.png');
  position: fixed;
  display: block;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-size: cover;
  background-position: center center;
  -webkit-transform: translateZ(0);
      transform: translateZ(0);
  will-change: transform;

}
/*---Bootstrap Padding Fix---*/
[class*="col-"]{
  padding: 1rem;
}

  </style>
</head>
<body>
 <nav class="navbar navbar-expand-md navbar-primary bg-dark sticky-top">
		<div class="container-fluid">

			<a class="navbar-brand" href="#"><img src="https://pbcdn1.podbean.com/imglogo/image-logo/1106231/IdiotBox6_large.png" height="60" width="150"></a>
      <a class="navbar-brand" href="#">idiotBox</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
    <ul class="nav nav-pills ml-auto">
     
      <li class="nav-item active">
        <a class="nav-link" href="#">Show all videos <span class="sr-only">(current)</span></a>
      </li>
     <!--  <li class="nav-item">
        <a class="nav-link" href="#">Features</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Pricing</a>
      </li> -->
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarResponsiveMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Setting
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarResponsiveMenuLink">
          <a class="dropdown-item" href="#">Change Password</a>
          <a class="dropdown-item" href="#">2-Factor Authentication</a>
          <a class="dropdown-item" href="#">Feedback</a>
          <a class="dropdown-item" href="#">Logout</a>
          
        </div>
      </li>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <form class="navbar-form navbar-right search-form" role="search">
        <input type="text" class="form-control" placeholder="Search" />
      </form>
    </ul>

  		</div>
		</div>
	</nav>
 
</body>
</html>