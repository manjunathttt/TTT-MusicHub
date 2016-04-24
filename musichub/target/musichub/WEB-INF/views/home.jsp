<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ include file="header.jsp" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<title>VIEW PRODUCTS</title>
</head>
<body>
<br><br>
<div class="container">
		<table class="table">
			<thead>
				<tr>
					<th>Product Id</th>
					<th>Product Name</th>
					<th>Product Price</th>
					<th>Product Condition</th>
					<th>Product Description</th>
					<th>Select Product</th>
					<th>Edit | Delete</th>

				</tr>
			</thead>

			<c:forEach items="${allproduct}" var="product">
				<tbody>
					<tr>
						<td>${product.id}</td>
						<td>${product.name}</td>
						<td>${product.price}</td>
						<td>${product.condition}</td>
						<td>${product.description}</td>
						<td><a href="spec_products?pid=${product.id }">View More</a></td>
						<td align="center"><a href="edit?pid=${product.id}">Edit</a> |
							<a href="delete?pid=${product.id}">Delete</a>
						</td>
					</tr>
				</tbody>
			</c:forEach>
		</table>
		<br><br>
     <a href="/addProduct">Click Here to add new Product</a>
    </div>
    <br><br>
<div>
<%@ include file="footer.jsp" %>
</div>
</body>
</html>