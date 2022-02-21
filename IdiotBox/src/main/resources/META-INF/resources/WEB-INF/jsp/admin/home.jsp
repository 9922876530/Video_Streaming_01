<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%-- <%@ include file = "header.jsp" %>
<%@ include file = "sidebar.jsp" %>
<%@ include file = "footer.jsp" %> --%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="spring"%> --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


 <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<style>
#cardcontent
{
	font-color:white;
}
	body,
html {
  width: 100%;
  height: 100%;
}

body {
  font-family: 'Merriweather', 'Helvetica Neue', Arial, sans-serif;
}

hr {
  max-width: 50px;
  border-width: 3px;
  border-color: #F05F40;
}

hr.light {
  border-color: #fff;
}

a {
  color: #F05F40;
  -webkit-transition: all 0.2s;
  transition: all 0.2s;
}

a:hover {
  color: #f05f40;
}

h1,
h2,
h3,
h4,
h5,
h6 {
  font-family: 'Open Sans', 'Helvetica Neue', Arial, sans-serif;
}

.bg-primary {
  background-color: #F05F40 !important;
}

.bg-dark {
  background-color: #212529 !important;
}

.text-faded {
  color: rgba(255, 255, 255, 0.7);
}

section {
  padding: 8rem 0;
}

.section-heading {
  margin-top: 0;
}

::-moz-selection {
  color: #fff;
  background: #212529;
  text-shadow: none;
}

::selection {
  color: #fff;
  background: #212529;
  text-shadow: none;
}

img::-moz-selection {
  color: #fff;
  background: dark;
}

img::selection {
  color: #fff;
  background: dark;
}

img::-moz-selection {
  color: #fff;
  background: dark;
}

#mainNav {
  border-bottom: 1px solid rgba(33, 37, 41, 0.1);
  background-color: #fff;
  font-family: 'Open Sans', 'Helvetica Neue', Arial, sans-serif;
  -webkit-transition: all 0.2s;
  transition: all 0.2s;
}

#mainNav .navbar-brand {
  font-weight: 700;
  text-transform: uppercase;
  color: #F05F40;
  font-family: 'Open Sans', 'Helvetica Neue', Arial, sans-serif;
}

#mainNav .navbar-brand:focus, #mainNav .navbar-brand:hover {
  color: #f05f40;
}

#mainNav .navbar-nav > li.nav-item > a.nav-link,
#mainNav .navbar-nav > li.nav-item > a.nav-link:focus {
  font-size: .9rem;
  font-weight: 700;
  text-transform: uppercase;
  color: #212529;
}

#mainNav .navbar-nav > li.nav-item > a.nav-link:hover,
#mainNav .navbar-nav > li.nav-item > a.nav-link:focus:hover {
  color: #F05F40;
}

#mainNav .navbar-nav > li.nav-item > a.nav-link.active,
#mainNav .navbar-nav > li.nav-item > a.nav-link:focus.active {
  color: #F05F40 !important;
  background-color: transparent;
}

#mainNav .navbar-nav > li.nav-item > a.nav-link.active:hover,
#mainNav .navbar-nav > li.nav-item > a.nav-link:focus.active:hover {
  background-color: transparent;
}

@media (min-width: 992px) {
  #mainNav {
    border-color: transparent;
    background-color: black;
  }
  #mainNav .navbar-brand {
    color: rgba(255, 255, 255, 0.7);
  }
  #mainNav .navbar-brand:focus, #mainNav .navbar-brand:hover {
    color: #fff;
  }
  #mainNav .navbar-nav > li.nav-item > a.nav-link {
    padding: 0.5rem 1rem;
  }
  #mainNav .navbar-nav > li.nav-item > a.nav-link,
  #mainNav .navbar-nav > li.nav-item > a.nav-link:focus {
    color: rgba(255, 255, 255, 0.7);
  }
  #mainNav .navbar-nav > li.nav-item > a.nav-link:hover,
  #mainNav .navbar-nav > li.nav-item > a.nav-link:focus:hover {
    color: #fff;
  }
  #mainNav.navbar-shrink {
    border-bottom: 1px solid rgba(33, 37, 41, 0.1);
    background-color: #fff;
  }
  #mainNav.navbar-shrink .navbar-brand {
    color: #F05F40;
  }
  #mainNav.navbar-shrink .navbar-brand:focus, #mainNav.navbar-shrink .navbar-brand:hover {
    color: #f05f40;
  }
  #mainNav.navbar-shrink .navbar-nav > li.nav-item > a.nav-link,
  #mainNav.navbar-shrink .navbar-nav > li.nav-item > a.nav-link:focus {
    color: #212529;
  }
  #mainNav.navbar-shrink .navbar-nav > li.nav-item > a.nav-link:hover,
  #mainNav.navbar-shrink .navbar-nav > li.nav-item > a.nav-link:focus:hover {
    color: #F05F40;
  }
}

header.masthead {
  padding-top: 10rem;
  padding-bottom: calc(10rem - 56px);
  background-image: url("../img/header.jpg");
  background-position: center center;
  background-size: cover;
}

header.masthead hr {
  margin-top: 30px;
  margin-bottom: 30px;
}

header.masthead h1 {
  font-size: 2rem;
}

header.masthead p {
  font-weight: 300;
}

@media (min-width: 768px) {
  header.masthead p {
    font-size: 1.15rem;
  }
}

@media (min-width: 992px) {
  header.masthead {
    height: 100vh;
    min-height: 650px;
    padding-top: 0;
    padding-bottom: 0;
  }
  header.masthead h1 {
    font-size: 3rem;
  }
}

@media (min-width: 1200px) {
  header.masthead h1 {
    font-size: 4rem;
  }
}

.service-box {
  max-width: 400px;
}

.portfolio-box {
  position: relative;
  display: block;
  max-width: 650px;
  margin: 0 auto;
}

.portfolio-box .portfolio-box-caption {
  position: absolute;
  bottom: 0;
  display: block;
  width: 100%;
  height: 100%;
  text-align: center;
  opacity: 0;
  color: #fff;
  background: rgba(240, 95, 64, 0.9);
  -webkit-transition: all 0.2s;
  transition: all 0.2s;
}

.portfolio-box .portfolio-box-caption .portfolio-box-caption-content {
  position: absolute;
  top: 50%;
  width: 100%;
  -webkit-transform: translateY(-50%);
  transform: translateY(-50%);
  text-align: center;
}

.portfolio-box .portfolio-box-caption .portfolio-box-caption-content .project-category,
.portfolio-box .portfolio-box-caption .portfolio-box-caption-content .project-name {
  padding: 0 15px;
  font-family: 'Open Sans', 'Helvetica Neue', Arial, sans-serif;
}

.portfolio-box .portfolio-box-caption .portfolio-box-caption-content .project-category {
  font-size: 14px;
  font-weight: 600;
  text-transform: uppercase;
}

.portfolio-box .portfolio-box-caption .portfolio-box-caption-content .project-name {
  font-size: 18px;
}

.portfolio-box:hover .portfolio-box-caption {
  opacity: 1;
}

.portfolio-box:focus {
  outline: none;
}

@media (min-width: 768px) {
  .portfolio-box .portfolio-box-caption .portfolio-box-caption-content .project-category {
    font-size: 16px;
  }
  .portfolio-box .portfolio-box-caption .portfolio-box-caption-content .project-name {
    font-size: 22px;
  }
}

.text-primary {
  color: #F05F40 !important;
}

.btn {
  font-weight: 700;
  text-transform: uppercase;
  border: none;
  border-radius: 300px;
  font-family: 'Open Sans', 'Helvetica Neue', Arial, sans-serif;
}

.btn-xl {
  padding: 1rem 2rem;
}

.btn-primary {
  background-color: #F05F40;
  border-color: #F05F40;
}

.btn-primary:hover, .btn-primary:focus, .btn-primary:active {
  color: #fff;
  background-color: #ee4b28 !important;
}

.btn-primary:active, .btn-primary:focus {
  -webkit-box-shadow: 0 0 0 0.2rem rgba(240, 95, 64, 0.5) !important;
  box-shadow: 0 0 0 0.2rem rgba(240, 95, 64, 0.5) !important;
}

</style>
</head>
<body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-black fixed-top" id="mainNav">
      <div class="container">
      	<a class="navbar-brand" href="<spring:url value='/admin/home'/>">
          <img src="https://cdn1.iconfinder.com/data/icons/business-and-office-5-2/128/243-512.png" width="150" height="70" alt="">
        </a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" 
        aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li>
              <a class="nav-link js-scroll-trigger" href="<spring:url value='/admin/logout'/>">Logout</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
            </li>
            <li class="nav-item">
             <a class="nav-link js-scroll-trigger" >${loggedAdmin.fName}</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <header class="masthead text-center text-black d-flex">
      <div class="container my-auto">
        <div class="row">
          <div class="col-lg-10 mx-auto">
            <h1 class="text-uppercase">
              <strong>Your Favorite Source of entertainment : IdiotBox</strong>
            </h1>
            <hr>
          </div>
          <div class="col-lg-8 mx-auto">
            
            <a class="btn btn-primary btn-xl js-scroll-trigger" href="/IdiotBox/admin/addVideo">Add Video</a>
            
             <a class="btn btn-primary btn-xl js-scroll-trigger" href="/IdiotBox/admin/view">View ALL/Remove Video</a>
              <a class="btn btn-primary btn-xl js-scroll-trigger" href="/IdiotBox/admin/comments">View Comments</a>
              <br><br>
               <a class="btn btn-primary btn-xl js-scroll-trigger" href="/IdiotBox/admin/register">Add new admin</a>
                <a class="btn btn-primary btn-xl js-scroll-trigger" href="/IdiotBox/admin/viewAdmins">List all admins</a>
                 <a class="btn btn-primary btn-xl js-scroll-trigger"  href="/IdiotBox/admin/getFeedback">List all feedbacks</a>
                 <br><br>
                  <a class="btn btn-primary btn-xl js-scroll-trigger" href="#">Change Password</a>
                  <a class="btn btn-primary btn-xl js-scroll-trigger" href="#">Change Plans</a>
                  
                  
          </div>
        </div>
      </div>
    </header>

    <section class="bg-secondary" id="about">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
            <h2 class="section-heading">Let's Get In Touch!</h2>
            <hr class="my-4">
            <p class="mb-5">For any query, feel free to contact us!</p>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-4 ml-auto text-center">
            <i class="fas fa-phone fa-3x mb-3 sr-contact-1"></i>
            <p>9040434935</p>
            <p>9479097397</p>
            <p>8707631688</p>
            <p></p>
          </div>
          <div class="col-lg-4 mr-auto text-center">
            <i class="fas fa-envelope fa-3x mb-3 sr-contact-2"></i>
            <p>
              <a href="mailto:idiotboxstreamingservices@gmail.com" >idiotboxstreamingservices@gmail.com</a>
            </p>
          </div>
        </div>
      </div>
    </section>

  

</body>
</html>