<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Add Book Form</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  body{
background-image: url("/uploadimages/bookstore5.jpg");
background-repeat: no-repeat;
background-size: 100% 100%;
color: white;
}
  .form-control{
  opacity:0.7;}
  </style>
  
  
</head>
<body>
	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="${contextPath}/user/userHome">Blaze eBooks</a>
      
    </div>
    <ul class="nav navbar-nav">
<!--      <li class="active"><a href="">Home</a></li>-->
      <li></li>

    </ul>
    <a class="navbar-right" href="${contextPath}/user/logout"><button class="btn btn-warning">Logout</button></a>
  </div>
</nav>

<div class="container-fluid">
	<h2>Posting a New Book</h2>

<center>
	<form:form action="${contextPath}/book/add" method="post"
		commandName="book" enctype="multipart/form-data">

						 		<div class="form-group well-sm">
			
				<label> Posted By </label>
				 ${sessionScope.user.userName} 
				<b><form:hidden path="postedBy"
						value="${sessionScope.user.personId}" /> </b>
			 </div>
			
			 			 		<div class="form-group well-sm ">
			 
				<label> Book Title:</label> 
				 <form:input type="text" class="form-control" path="title" style="width:500px;" /><font color="red"><form:errors path="title" /></font>  
			 </div>
			 
			 			 		<div class="form-group well-sm">			 
				 <label>Author:</label> 
				 <form:input type="text" class="form-control" path="author" style="width:500px;"  /><font color="red"><form:errors path="author" /></font>  
			 </div>
			 
			
			 			 		<div class="form-group well-sm">
				 <label>ISBN:</label> 
				 <form:input type="text" class="form-control" path="isbn" style="width:500px;" /><font color="red"><form:errors path="isbn" /></font>  
			 </div>
			
			 			 		<div class="form-group well-sm">
				 <label>Year:</label> 
				 <form:input type="text" class="form-control" path="year" style="width:500px;" /><font color="red"><form:errors path="year" /></font>  
			 </div>

			 			 		<div class="form-group well-sm">
			 
				 <label>Price:</label> 
				 <form:input type="text" class="form-control" path="price" style="width:500px;" /><font color="red"><form:errors path="price" /></font>  
			 </div>
			
			 			 		<div class="form-group well-sm">
			 
				 <label>Quantity:</label> 
				 <form:input type="text" class="form-control" path="quantity" style="width:500px;" /><font color="red"><form:errors path="quantity" /></font>  
			 </div>
			
			 
			 			 		<div class="form-group well-sm">
			 
				 <label>Create album:</label> 
				 <input type="text" class="form-control" style="width:500px;" name="fileName"/> 
			 </div>
			 
			 
			
			 			 		<div class="form-group well-sm">

				 <label>Select photo</label> 
				 <form:input type="file" class="form-control" style="width:500px;" name="photo" path="photo"/> 
			 </div>
			
		<b><button class="btn btn-info" type="submit">Add a book</button> </b>

	</form:form></center>
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