<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Register User Form</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<c:set var="contextPath" value="${pageContext.request.contextPath}" />

	<a href="${contextPath}">Go Back</a><br/>

	<h2>Register a New User</h2>

	<form:form action="${contextPath}/user/register" commandName="user"
		method="post">

			 		<div class="form-group well-sm">
			 
				 First Name: 
				 <form:input path="firstName" style="width: 500px;" class="form-control"   />
					<font color="red"><form:errors path="firstName" /></font> 
			 </div>

			 		<div class="form-group well-sm">
			 
				 Last Name: 
				 <form:input path="lastName" style="width: 500px;" class="form-control"   />
					<font color="red"><form:errors path="lastName" /></font> 
							</div>			 


			 		<div class="form-group well-sm">
			 
				 User Name: 
				 <form:input path="userName" style="width: 500px;" class="form-control"   />
					<font color="red"><form:errors path="userName" /></font> 
			 </div>

			 		<div class="form-group well-sm">
			 
				 Password: 
				 <form:password path="password" style="width: 500px;" class="form-control"
						  /> <font color="red"><form:errors
							path="password" /></font> 
			 </div>

			 
			 		<div class="form-group well-sm">
			 
				 Email Id: 
				 <form:input path="email" style="width: 500px;" class="form-control"
						type="email"   /> <font color="red"><form:errors
							path="email" /></font> 
			 </div>
			
			 		<div class="form-group well-sm">
			 
				 Phone Number: 
				 <form:input path="phoneNumber" style="width: 500px;" class="form-control"
						   /> <font color="red"><form:errors
							path="phoneNumber" /></font> 
			 </div>
					
		 		<div class="form-group well-sm">
		 
		 Status:  
		 <form:radiobutton path="status" value="Customer"/> Customer
		<form:radiobutton path="status" value="Publisher"/> Publisher 
		 </div>
			
			 <button type="submit" class="btn btn-info">Register User</button>
			 
	</form:form>

</body>
</html>