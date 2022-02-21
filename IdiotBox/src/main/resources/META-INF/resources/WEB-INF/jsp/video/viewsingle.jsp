<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ include file="navbar.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="d"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<d:eval
	expression="@environment.getProperty('spring.resources.staticLocations')"
	var="spring.resources.staticLocations" />
<html lang="en">
<head>
<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous" ></script>
<title>Movies</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Movies</title>
<style type="text/css">
div.row {
	padding: 30px;
}
/* body {
background-image: url("https://localhost:8080/IdiotBox/18526.jpg");
background-position: center; 
  background-repeat: no-repeat;
  background-size: cover; } */
</style>

</head>
<body>

	<div class="container-fluid" >

		<div class="row">
			<div class="col-sm-9" >
				<div class="row">
					<div class="col-sm-5">
						<img height="400" width="350" src="${requestScope.list.poster}"
							alt="not added">
					</div>
					<div class="col-sm-7" align="center">
		<b>
						<br> Name = "${requestScope.list.videoName}" <br> Year =
						"${requestScope.list.year }" <br> Actors =
						"${requestScope.list.actors }" <br> Director =
						"${requestScope.list.director }" <br> Genre =
						"${requestScope.list.genre }" <br> Runtime =
						"${requestScope.list.runtimee }" <br>
						Like="${requestScope.list.likee }"
						Dislike="${requestScope.list.dislikee}" <br> Desc =
						"${requestScope.list.descr }"
					</div></b>
				</div>
				<div class="row" align="center">	
					<br> <br>
					<video controls height="480" width="700"> <source
						src="<d:url value='${spring.resources.staticLocations}/${requestScope.list.videoPath}' />"
						type="video/mp4" /> </video>
						</div>
					<br> <br> <input type="button" value="like" id="sc">

					<input type="button" value="dislike" id="sb"> <br> <br>
				
				<div class="row">
					<h4>
						<u>Comments :</u>
					</h4>

					<spring:forEach var="dx" items="${requestScope.list.comments }">
						<fieldset>
							<legend>
								"${dx.username}" commented at <b> ${dx.dt} </b>
							</legend>
							<pre>"${dx.text}"
									<!-- check user id with comment user id before displaying this button to del. com -->
									<spring:choose>
										<spring:when test="${dx.userid==sessionScope.loggedUser.userId}">	
											<button id="dcom" onclick="delcom(${dx.cid})">Delete</button>
										</spring:when>
									</spring:choose>		
								
						</pre>
						</fieldset>
					</spring:forEach>


					<br>
					<form background-color="blue">

						Add comment<br>
						<textarea id="text" rows="4" cols="40"> </textarea>

						<input type="button" id="cmnt" value="comment" />
					</form>
				</div>

			</div>

			<div class="col-sm-3">
				<div id="d1">
					<h3 align="center">Recommendations for this movie</h3>
					<hr />
					<table cellspacing="5">
						<tr>
							<td align="center"><b>MOVIE</b></td>
							<td align="center"><b>DIRECTOR</b></td>
							<td align="right"><b>YEAR</b></td>
						</tr>

						<spring:forEach var="ad" items="${requestScope.reclist}">
							<tr>
								<td align="center">
								<a href="<spring:url value='/video/get/${ad.vid }'/>">
									<img alt="not added" src="${ad.poster}" width="120" height="175" />
								</a>
								</td>
								<td align="center">${ad.videoName}</td>
								<td align="center">${ad.director}</td>
								<td align="right">${ad.year}</td>
							</tr>
						</spring:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
	
	
	<script type="text/javascript">
	
	$('#cmnt').click(function(){
			var txt = $('#text').val();
			txt=txt.trim();
			var Comment = {};
			Comment["text"]=txt;
			Comment["userid"]="${sessionScope.loggedUser.userId}";<!-- take from user pojo -->
			Comment["username"]="${sessionScope.loggedUser.fName}"; <!-- take from user pojo -->
			var json = JSON.stringify(Comment);

		 $.ajax({ 
			    type: 'POST', 
			    url: 'http://localhost:7443/IdiotBoxServer/vcr/addcomment/${requestScope.list.vid}', 
			    data: json,
			    contentType: 'application/json; charset=utf-8',
			    dataType: 'json',
			    headers: {
			    	 "accept": "application/json",
			    		    }
			    
			});
		 window.location.href=window.location.href;
		 
	});
	</script>
	<script type="text/javascript">
	

	$('#sc').click(function(){
		 $.ajax({ 
			    type: 'GET', 
			    url: 'http://localhost:7443/IdiotBoxServer/vcr/like/${requestScope.list.vid}', 
			    			    dataType: 'text',
			    success: function (data) { 
			       
			         alert("U "+ data +"this video");
			    }
			});
		 window.location.href=window.location.href;
	});
	$('#sb').click(function(){
		 
		 
		 $.ajax({ 
			    type: 'GET', 
			    url: 'http://localhost:7443/IdiotBoxServer/vcr/dislike/${requestScope.list.vid}', 
			    			    dataType: 'text',
			    success: function (data) { 
			       
			         alert("U "+data+ "this video");
			    }
			});
		 window.location.href=window.location.href;
});
	function delcom(x){
			 
		 $.ajax({ 
			    type: 'DELETE', 
			    url: 'http://localhost:7443/IdiotBoxServer/vcr/deletecom/'+x, 
			    			    dataType: 'text',
			    success: function () { 
			       
			         alert("U deleted the comment");
			    }
			});
		 window.location.href=window.location.href;
}
	


	</script>
</body>
</html>