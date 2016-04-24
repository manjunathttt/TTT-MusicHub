<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>ADD PRODUCT</title>
</head>
<body bgcolor="gray">
	<div class="container">
		<div>
			<h1 style="color:red;">Enter New Product</h1>
		</div>
		<div>
			<form:form commandName="ADDPRD" action="success" method="post">
  				<div class="form-group">
    				<label for="username">PRODUCT ID: </label>
    				<input type="text" class="form-control" id="username">
 	 			</div>
				<div class="form-group">
    				<label for="phone">PRODUCT NAME: </label>
    				<input type="text" class="form-control" id="phone">
 	 			</div>
				<div class="form-group">
    				<label for="adrs">PRICE: </label>
    				<input type="text" class="form-control" id="adrs">
 	 			</div>
				<div class="form-group">
    				<label for="email">CONDITION: </label>
    				<input type="text" class="form-control" id="email">
 	 			</div>
				<div class="form-group">
    				<label for="usid">DESCRIPTION: </label>
    				<input type="text" class="form-control" id="usid">
 	 			</div>
  				<button type="submit" class="btn btn-default">ADD PRODUCT</button>
  			</form:form>
    	</div>
	</div>
	<br><br>
	<div>
		<%@ include file="footer.jsp" %>
	</div>
</body>
</html>