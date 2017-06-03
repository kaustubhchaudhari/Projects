<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer home</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  
  <style>
    body{
background-image: url("/uploadimages/bookstore2.jpg");
background-repeat: no-repeat;
background-size: 100% 100%;
color: white;
}
  </style>
  
</head>
<body>
	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<nav class="navbar navbar-default ">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="${contextPath}/user/customerHome">Blaze eBooks</a>
      
    </div>
    <ul class="nav navbar-nav">
<!--      <li class="active"><a href="">Home</a></li>-->
      <li></li>

    </ul>
    <a class="navbar navbar-right" href="${contextPath}/user/logout"><button class="btn btn-danger">Logout</button></a>
  </div>
</nav>

<div class="container-fluid"><br><br><br><br><center>
	<h1>Hi, ${user.firstName}</h1>
	<br><br><br>
	<a href="${contextPath}/order/list.htm"><button class="btn btn-info">View all the books</button></a>
	<br><br><br><br>
	</center>
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