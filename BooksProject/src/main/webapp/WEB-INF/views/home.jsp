<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  
<title>Blaze eBooks</title>
<style>
body{
background-image: url("/uploadimages/bookstore3.jpg");
background-repeat: no-repeat;
background-size: 100% 100%;
color: white;
}

#main{
	opacity: 0.9;
}


</style>

</head>


<body>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="${contextPath}/user/">Blaze eBooks</a>
      
    </div>
    <ul class="nav navbar-nav">
<!--      <li class="active"><a href="">Home</a></li>-->
      <li></li>

    </ul>
    
  </div>
</nav>
<div class="container-fluid">
	

<div class="container-fluid" id="main"><center>
<br><br><br><br>
	<h1>Login</h1>
	<form action="user/login" method="post">
	
		<div class="form-group well-sm" id="form">
    <label for="email">Username:</label>
		     <input type="text" name="username" class="form-control" style="width: 300px;" required="required"  />
		     </div>
			<div class="form-group well-sm" id="form">
    <label for="email">Password:</label>
		     <input type="password" class="form-control" name="password" style="width: 300px;" required="required" />
					</div>
					<div class="checkbox" id="form">
    <label><input type="checkbox"> Remember me</label>
  </div>
  
	          	  <button type="submit" class="btn btn-success" id="form""><b>LOGIN</b></button>                                                               

	</form>	      <br>    	  <a href="user/register.htm"><button type="submit" class="btn btn-info" id="form"><b>REGISTER</b></button></a><br/><br><br><br><br>
	</center></div>
	</div>
	<footer>
<center>
<nav>

<br>
<br>
<a href="mailto:chaudhari.k@husky.neu.edu"><font color="white">chaudhari.k@husky.neu.edu</font></a>
<br>
<br>
COPYRIGHT &copy 2017-18 ALL RIGHT RESERVED Kaustubh Chaudhari
<br>
<br>
<a href="#"><font color="black">Terms & Conditions</font></a>
</nav>
</center>
</footer>
</body>
</html>