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

<title>LOGIN PAGE</title>
</head>
<body bgcolor="aqua">
<div class="container">
<div>
<h1 style="color:red;">Enter Your ID and Password</h1>
</div>
<div>
<form action="home.jsp" method="POST"><br>
USERNAME: <input type="text" name="user" size="10"/><br><br>
PASSWORD: <input type="password" name="pswd" size="10"/><br><br>
<input type="submit" value="LOGIN"/>
</form>
</div>
</div>
<br><br>
<div>
<%@ include file="footer.jsp" %>
</div>

</body>
</html> 