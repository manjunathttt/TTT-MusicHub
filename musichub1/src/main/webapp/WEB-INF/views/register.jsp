<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>REGISTER PAGE</title>
</head>
<body bgcolor="gray">
<div class="container">
	<div>
		<h1 style="color:red;">Enter Details to Register</h1>
	</div>

	<div>
	<table border="3px" bgcolor="yellow">
		<form action="success.jsp" method="POST"><br>
			<tr><td>ENTER NAME: </td><td><input type="text" name="user" size="20"/></td></tr>
			<tr><td>ENTER PHONE:</td><td> <input type="text" name="phone" size="20"/></td></tr>
			<tr><td>ENTER ADDRS:</td><td> <input type="text" name="addrs" size="20"/></td></tr>
			<tr><td>ENTER EMAIL ID: </td><td><input type="text" name="user" size="20"/></td></tr>
			<tr><td>ENTER USER ID: </td><td><input type="text" name="user" size="20"/></td></tr>
			<tr><td>PASSWORD:</td><td> <input type="password" name="pswd" size="20"/></td></tr>
			<tr><td style="text-align: center;"><input type="submit" value="REGISTER"/></td><td style="text-align: center;"><input type="reset" value="RESET"/></td></tr>
		</form>
	</table>
    </div>
</div>
<br><br>
	<div>
		<%@ include file="footer.jsp" %>
	</div>
</body>
</html>