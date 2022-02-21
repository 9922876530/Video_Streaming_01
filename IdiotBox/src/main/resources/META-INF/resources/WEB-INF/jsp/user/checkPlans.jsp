<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="Plandemo.css">
<title>Plans</title>
<style>
	* {
  box-sizing: border-box;
}

.columns {
  float: left;
  width: 25%;
  padding: 8px;
}

.price {
  list-style-type: none;
  border: 1px solid #eee;
  margin: 0;
  padding: 0;
  -webkit-transition: 0.3s;
  transition: 0.3s;
}

.price:hover {
  box-shadow: 0 8px 12px 0 rgba(0,0,0,0.2)
}

.price .header {
  background-color: #111;
  color: white;
  font-size: 25px;
}

.price li {
  border-bottom: 1px solid #eee;
  padding: 20px;
  text-align: center;
}

.price .grey .row {
  background-color: #eee;
  font-size: 20px;
}

.button {
  
  background-color: #db4f4f;
  border: none;
  color: white;
  padding: 10px 25px;
  text-align: center;
  text-decoration: none;
  font-size: 18px;
}



@media only screen and (max-width: 600px) {
  .columns {
    width: 100%;
  }
}
	
</style>
</head>
<body>
	<div class="container">
	<h2 style="text-align:center">Pricing Table</h2>
    <p style="text-align:center">Choose your plan</p>
    <div class="row">
    <form method="post"  action="/IdiotBox/user/register">
    <div class="columns">
        <ul class="price">
            <li class="header">Basic</li>
            <li class="grey">499</li>
            <li>1 month</li>
            <li><input type = "radio" name="plan" value="499"/></li>
        </ul>
    </div>
    <div class="columns">
        <ul class="price">
            <li class="header">Silver</li>
            <li class="grey">1299</li>
            <li>3 months</li>
            <li><input type = "radio" name="plan" value="1299"/></li>
        </ul>
    </div>

    <div class="columns">
        <ul class="price">
            <li class="header">Gold</li>
            <li class="grey">2499</li>
            <li>6 months</li>
         	<li><input type = "radio" name="plan" value="2499"/>
        </ul>
    </div>

    <div class="columns">
        <ul class="price">
            <li class="header" style="background-color:#b91c1c">Pro</li>
            <li class="grey">4499</li>
            <li>12 months</li>
            <li><input type = "radio" name="plan" value="4499"/></li>
        </ul>
    </div>
    <div class="input-group form-group">
    <div>
    	<input type="submit" value="Proceed for payment" class="btn btn-lg btn-primary float-right"/>
    </div>
    </div>
    </form>
    <div>
    	<Note><strong>
			You will receive an otp on provided email for verification, 
			post that you will be redirected to payment page </strong>
		</Note>
    </div>
</div>
</div>
</body>
</html>