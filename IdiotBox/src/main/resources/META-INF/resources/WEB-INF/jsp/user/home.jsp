<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="">

    <title>Idiotbox</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!-- Bootstrap core CSS -->
    <link href="static/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <!-- Custom styles for this template -->
    <link href="https://localhost:8080/IdiotBox/new-style.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://localhost:8080/IdiotBox/font-awesome.min.css" />
    <link href="https://localhost:8080/IdiotBox/lightbox.min.css" rel="stylesheet">
    <link href="https://localhost:8080/IdiotBox/lity.min.css" rel="stylesheet">
<title>Home</title>
</head>
<body>
 <header class="float-left w-100">
    <div class="top-head left">
      <div class="container-fluid">
        <div class="row px-3">
          <div class="col-md-6 col-lg-4 mt-2">
     
			<h2><a href="<spring:url value='/user/home'/>"><i>IdiotBox</i></a></h2>
          </div>
          <div class="col-md-6 col-lg-5 admin-bar ml-auto mt-2">
          
            <nav class="nav justify-content-end set">
			<li class="nav-item dropdown"> 
			<a class="nav-link dropdown-toggle setting" href="#" id="layouts" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			Setting <i class="fa fa-cog" aria-hidden="true"></i></a>
              <div class="dropdown-menu" aria-labelledby="layouts">
              	<ul class="dropdown-item" >${loggedUser.fName}</ul>
                <a class="dropdown-item" href="<spring:url value='/user/changePassword'/>">Change Password</a>
                <a class="dropdown-item" href="<spring:url value='/user/twofactorauth'/>">Turn on/off two way verification</a>
                <a class="dropdown-item" href="<spring:url value='/user/sendFeedback'/>">Send Feedback</a>
                <a class="dropdown-item" href="<spring:url value='/user/logout'/>">Logout</a>  
              </div>
            </li> 			  
            </nav>
            	
          </div>
        </div>
      </div>
    </div>
  </header>

  <!-- Top Navigation -->
  <section class="top-nav">
    <nav class="navbar navbar-expand-lg py-0">
      <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <i class="fa fa-bars" aria-hidden="true"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav">
            <li class="nav-item active"> <a class="nav-link" href="search">Home <span class="sr-only">(current)</span></a> </li>
            <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle" href="#" id="layouts" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Genres</a>
              <div class="dropdown-menu" aria-labelledby="layouts">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Crime</a>
                <a class="dropdown-item" href="#">Family</a>
                <a class="dropdown-item" href="#">Animated</a>
              </div>
            </li>
            <li class="nav-item"> <a class="nav-link" href="#">Bollywood</a> </li>
            <li class="nav-item"> <a class="nav-link" href="#">Hollywood</a> </li>
            <form method="get" action="<spring:url value='/video/searchn'/>">
           		 <li class="nav-item float-center" align="center"> <input type="search" name="s" placeholder="Search video" ></li>
            </form>
            
          </ul>
          <form class="ml-auto" action="/IdiotBox/video/">
            <div class="search">
              <input type="text" class="form-control" maxlength="64" placeholder="Search" name="searchedData"/>
              <button type="submit" class="btn btn-search"><i class="fa fa-search"></i></button>
            </div>
          </form>
        </div>
      </div>
    </nav>
  </section>

  <!-- Info Block-01 -->
  <section class="banner-sec float-left w-100 pt-4 pb-5">
    <div class="container-fluid">
	
      <div class="row px-3">
		
        <div class="col-md-3">
          <div class="card mb-4"><a href="<spring:url value='/video/get/4'/>"> <img class="img-fluid" src="https://localhost:8080/IdiotBox/01.jpg" alt=""></a>
            <div class="card-img-overlay"> <span class="badge badge-pill badge-danger">Animated</span> </div>
            <div class="card-body p-2">
              <div class="news-title">
                <h2 class=" title-small"><a href="#">Ice Age</a></h2>
              </div>
              <p class="card-text"><small class="text-time"><em>3 mins ago</em></small></p>
            </div>
          </div>
          <div class="card mb-4"> <a href="<spring:url value='/video/get/5'/>"><img class="img-fluid" src="https://localhost:8080/IdiotBox//02.jpg" alt=""></a>
            <div class="card-img-overlay"> <span class="badge badge-pill badge-danger">Crime</span> </div>
            <div class="card-body p-2">
              <div class="news-title">
                <h2 class=" title-small"><a href="#">Dead Man Down</a></h2>
              </div>
              <p class="card-text"><small class="text-time"><em>3 mins ago</em></small></p>
            </div>
          </div>  
        </div>
        <div class="col-md-3">
          <div class="card mb-4"> <a href="<spring:url value='/video/get/2'/>"><img class="img-fluid" src="https://localhost:8080/IdiotBox/03.jpg" alt=""></a>
            <div class="card-img-overlay"> <span class="badge badge-pill badge-danger">Action</span> </div>
            <div class="card-body p-2">
              <div class="news-title">
                <h2 class=" title-small"><a href="#">Avengers: Infinity War</a></h2>
              </div>
              <p class="card-text"><small class="text-time"><em>3 mins ago</em></small></p>
            </div>
          </div>
          <div class="card"> <a href="<spring:url value='/video/get/${ad.vid }'/>"> <img class="img-fluid" src="04.jpg" alt=""> </a>
            <div class="card-img-overlay"> <span class="badge badge-pill badge-danger">Family</span> </div>
            <div class="card-body p-2">
              <div class="news-title">
                <h2 class=" title-small"><a href="#">Mary Poppins Returns</a></h2>
              </div>
              <p class="card-text"><small class="text-time"><em>3 mins ago</em></small></p>
            </div>
          </div>
        </div>
		
		<div class="col-md-6 top-slider">
		<p class="trend">Trending</p>
          <div id="carousel-example-generic" class="carousel slide" data-ride="carousel"> 
            <!-- Indicators -->
            <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item active">
                <div class="news-block">
                  <div class="news-media"><a href="<spring:url value='/video/get/3'/>"> <img class="img-fluid" src="https://localhost:8080/IdiotBox/101.jpg" alt=""></a></div>
                  <div class="news-title">
                    <h2 class=" title-large"><a href="#">Ray madison may struggle to get best from Paul in a 4-2-3-1 formation</a></h2>
                  </div>
                  <div class="news-des">Condimentum ultrices mi est a arcu at cum a elementum per cum turpis dui vulputate vestibulum in vehicula montes vel. Mauris nam suspendisse consectetur mus...</div>
                  <div class="time-text"><strong>2h ago</strong></div>
                </div>
              </div>
              <div class="carousel-item">
                <div class="news-block">
                  <div class="news-media"><a href="<spring:url value='/video/get/8'/>"><img class="img-fluid" src="https://localhost:8080/IdiotBox/102.jpg" alt=""></a></div>
                  <div class="news-title">
                    <h2 class=" title-large"><a href="#">An Alternative Form of Mental Health Care Gains a Foothold</a></h2>
                  </div>
                  <div class="news-des">Condimentum ultrices mi est a arcu at cum a elementum per cum turpis dui vulputate vestibulum in vehicula montes vel. Mauris nam suspendisse consectetur mus...</div>
                  <div class="time-text"><strong>2h ago</strong></div>
                </div>
              </div>
              <div class="carousel-item">
                <div class="news-block">
                  <div class="news-media"><img class="img-fluid" src="https://localhost:8080/IdiotBox/103.jpg" alt=""></div>
                  <div class="news-title">
                    <h2 class=" title-large"><a href="#">Key Republican Senator Says She Will Not Vote for former president!</a></h2>
                  </div>
                  <div class="news-des">Condimentum ultrices mi est a arcu at cum a elementum per cum turpis dui vulputate vestibulum in vehicula montes vel. Mauris nam suspendisse consectetur mus...</div>
                  <div class="time-text"><strong>2h ago</strong></div>
                </div>
              </div>
            </div>
          </div>
        </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  
  <!-- Footer Section -->
  <footer>
    <div class="container-fluid">
      <div class="row px-3">
        <div class="col-lg-3 col-md-12">
          <h6 class="heading-footer">ABOUT US</h6>
          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
		  Lorem Ipsum has been the industry...</p>
        </div>
        <div class="col-lg-2 col-md-4">
          <h6 class="heading-footer">QUICK LINKS</h6>
            <ul class="footer-ul">
              <li><a href="#"> Career</a></li>
              <li><a href="#"> Privacy Policy</a></li>
              <li><a href="#"> Terms & Conditions</a></li>
              
            </ul>
        </div>
        <div class="col-lg-4 col-md-4">
          <h6 class="heading-footer">LATEST </h6>
          <div class="post">
            <p>Key Republicans sign letter warning against candidate.....<span>August 3,2015</span></p>
            <p>Obamacare Appears to Be Making People Healthie..... <span>August 3,2015</span></p>
          </div>
        </div>
        <div class="col-lg-3 col-md-4">
          <h6 class="heading-footer">Contat Us</h6>
          <p><i class="fa fa-phone"></i> <span>Call Us :</span> +91 9999 999 999</p>
          <p><i class="fa fa-envelope"></i> <span>Send Email :</span> info@idiotbox.com</p>
        </div>
      </div>
    </div>
  </footer>

  <!-- Copy footer start from here-->
  <div class="copyright">
    <div class="container-fluid">
      <div class="row px-3">
        <div class="col-lg-6 col-md-4">
          <p>© 2019 - <a href="#">Idiotbox.com</a></p>
        </div>
        <div class="col-lg-6 col-md-8">
          <ul class="bottom_ul">
            <li><a href="<spring:url value='/user/faq'/>"/>Faq's</a></li>
            <li><a href="#">Contact us</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
	
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
  	
<!-- Placed at the end of the document so the pages load faster --> 
<!-- <script src="https://localhost:8080/IdiotBox/jquery-3.2.1.min.js" crossorigin="anonymous"></script>
<script src="https://localhost:8080/IdiotBox/popper.js"></script> 
<script src="https://localhost:8080/IdiotBox/bootstrap.min.js"></script> 
<script src="https://localhost:8080/IdiotBox/core.js"></script>
<script src="https://localhost:8080/IdiotBox/lightbox-plus-jquery.min.js"></script> 
<script src="https://localhost:8080/IdiotBox/lity.min.js"></script> -->
</body>
</html>