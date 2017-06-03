<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List of Books</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
	<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="${contextPath}/user/customerHome">Blaze eBooks</a>
      
    </div>
    <ul class="nav navbar-nav">
<!--      <li class="active"><a href="">Home</a></li>-->
      <li></li>

    </ul>
    <a class="navbar-right" href="${contextPath}/user/logout"><button class="btn btn-warning">Logout</button></a>
  </div>
</nav>
<form action="${contextPath}/order/cart.htm" method="POST">
	<table class="table table-hover">
		<thead><tr>
					<td><b>IMAGE</b></td>
			<td><b>BOOK TITLE</b></td>
			<td><b>AUTHOR</b></td>
			<td><b>ISBN</b></td>
			<td><b>YEAR</b></td>
			<td><b>PRICE</b></td>
			<td><b>PUBLISHER</b></td>
			
			<td><b>Quantity to purchase</b></td>
			
			
			
		</tr></thead>
		<c:forEach var="book" items="${sessionScope.books}">
			<tbody><tr>
							<td> <img height="150" width="150" src="${book.fileName}" /></td>
				<td>${book.title}</td>
				<td>${book.author}</td>
				<td>${book.isbn}</td>
				<td>${book.year}</td>
				<td>${book.price}</td>
				<td>${book.user.firstName}</td>
				<td><select name="orderedQuantity${book.bookId }">
  					<option value="1">1</option>
					  <option value="2">2</option>
					  <option  value="3">3</option>
					  <option value="4">4</option>
					</select></td>
<!-- 			<td><input type="text" name="orderedQuantity${book.bookId }" placeholder="add quantity"/> -->
				<td><button name="bookId" class="btn btn-info" type="submit" value="${book.bookId }">Add to cart</button></td>
				
			</tr></tbody>
		</c:forEach>
		
	</table>
				</form>
	
	<br><br><br>
<form action="cartfinal.htm" method="POST">
	<center><button type="submit" class="btn btn-info" value="Checkout">CHECKOUT</button></center>
	</form>
</body>
</html>