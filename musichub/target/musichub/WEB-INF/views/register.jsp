<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>REGISTER PAGE</title>
</head>
<body bgcolor="gray">
	<div class="container">
		<div>
			<h1 style="color:red;">Enter Details to Register</h1>
		</div>
		<div>
			<form:form commandName="me" action="success" method="post">
  				<div class="form-group">
    				<label for="username">USER NAME: </label>
    				<input type="text" class="form-control" id="username">
 	 			</div>
				<div class="form-group">
    				<label for="phone">PHONE NO: </label>
    				<input type="text" class="form-control" id="phone">
 	 			</div>
				<div class="form-group">
    				<label for="adrs">ADDRESS: </label>
    				<input type="text" class="form-control" id="adrs">
 	 			</div>
				<div class="form-group">
    				<label for="email">EMAIL ID: </label>
    				<input type="text" class="form-control" id="email">
 	 			</div>
				<div class="form-group">
    				<label for="usid">USER ID: </label>
    				<input type="text" class="form-control" id="usid">
 	 			</div>
  				<div class="form-group">
    				<label for="pwd">PASSWORD:</label>
    				<input type="password" class="form-control" id="pwd">
  				</div>
  				<button type="submit" class="btn btn-default">REGISTER</button>
  			</form:form>
    	</div>
	</div>
	<br><br> 
	<br><br>
	<div>
		<%@ include file="footer.jsp" %>
	</div>
</body>
</html>