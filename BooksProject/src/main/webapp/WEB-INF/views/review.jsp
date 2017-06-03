<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Review order</title>
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
<h2>Your Order Details:</h2>

<h4>Items In Order:</h4>
				<table class="table table-bordered">
				<thead><tr>
				<td>Item Name: </td>
				<td>Price per Unit: </td>
				<td>Quantity Ordered: </td>
				<td>Sub total: </td>
				</tr>
				</thead>
				
				
				<tbody>
				<c:forEach  var="orderItem" items="${sessionScope.orderItemList}">
				<tr>
					<td>${orderItem.title}</td>
                    <td>${orderItem.price}</td>
                    <td>${orderItem.orderedQuantity}</td>
                    <td>${orderItem.orderedQuantity*orderItem.price}</td>
                
                </tr>
                </c:forEach>
                </tbody>
                </table>
                
                
                
<div class="well">
<h4>Order total:</h4>
${sessionScope.orderItemList[0].order.orderTotal}</div>



<div class="well">
<h4>Delivery Address:</h4>
<label>Name:</label>${sessionScope.user.firstName} ${sessionScope.user.lastName}<br>
<label>Email:</label>${sessionScope.user.email}<br>
<label>Phone number:</label>${sessionScope.user.phoneNumber}<br>
<label>Street:</label>${sessionScope.orderItemList[0].order.street}<br>
<label>City:</label>${sessionScope.orderItemList[0].order.city}<br>
<label>State:</label>${sessionScope.orderItemList[0].order.state}<br>
<label>Country:</label>${sessionScope.orderItemList[0].order.country}<br>
<label>Zip code:</label>${sessionScope.orderItemList[0].order.zip}<br>
</div>


<div class="well">
<h4>Expected Delivery Date:</h4>
${sessionScope.orderItemList[0].order.deliveryDate}<br>
</div>


<div class="well">
<h4>Payment Details:</h4>
<label>Card number:</label>${sessionScope.orderItemList[0].order.cardNo}<br>
<label>Expiry month:</label>${sessionScope.orderItemList[0].order.expiryMonth}<br>
<label>Expiry year:</label>${sessionScope.orderItemList[0].order.expiryYear}<br>
</div>



<form action="confirmation.htm" method="POST">

		<button type="submit" class="btn btn-success">SUBMIT ORDER</button>

</form>


</body>
</html>