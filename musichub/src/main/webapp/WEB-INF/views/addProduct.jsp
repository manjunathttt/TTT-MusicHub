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
			<form:form commandName="pro" class="form-horizontal" id="registration" method="post" action="add">
  				<div class="form-group">
    				<label for="username">PRODUCT ID: </label>
    				<form:input class="form-control" path="id"/>
 	 			</div>
				<div class="form-group">
    				<label for="phone">PRODUCT NAME: </label>
    				<form:input class="form-control" path="name"/>
 	 			</div>
				<div class="form-group">
    				<label for="adrs">PRICE: </label>
    				<form:input class="form-control" path="price"/>
 	 			</div>
				<div class="form-group">
    				<label for="email">CONDITION: </label>
    				<form:input class="form-control" path="condition"/>
 	 			</div>
				<div class="form-group">
    				<label for="usid">DESCRIPTION: </label>
    				<form:input class="form-control" path="description"/>
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