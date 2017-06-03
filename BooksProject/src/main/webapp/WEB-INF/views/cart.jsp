<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
  body{
background-image: url("/uploadimages/bookstore2.jpg");
background-repeat: no-repeat;
background-size: 100% 100%;
}
</style>

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
    <a class="navbar navbar-right" href="${contextPath}/user/logout"><button class="btn btn-warning">Logout</button></a>
  </div>
</nav>
<h1><b>Review your cart</b></h1>	
<div class="container-fluid">		
	<c:forEach  var="orderItem" items="${sessionScope.orderItemList}">
                    				<div class="well">
                    
                        
                       <b>Book title: </b> ${orderItem.title}<br><hr>
                       <b>Author: </b> ${orderItem.author}<br><hr>
                       <b>ISBN: </b> ${orderItem.isbn}<br><hr>
                       <b>Year: </b> ${orderItem.year}<br><hr>
                       <b>Price per Unit: </b> ${orderItem.price}<br><hr>
                       <b>Quantity Ordered: </b> ${orderItem.orderedQuantity}<br><hr>
                        <hr>
                                    </div>
                    
                </c:forEach>

<form action="delivery.htm" method="POST">

		
		
		<center><button type="submit" class="btn btn-success">Checkout</button></center>

</form>
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