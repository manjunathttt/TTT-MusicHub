<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image:url('/resources/images/m1.jpg');">
<h1 style="color:red;">Product Details are:.....</h1>

<table border="1">
        <tr>
            <th>ProductName</th>
            <th>ProductId</th>
            <th>ProductPrice</th>
            <th>ProductCondition</th>
            <th>ProductDescription</th>
            <th>Select Product</th>
        </tr>
        
        
        <c:forEach items="${allproduct}" var="product">
        <tr>
                <td>${product.name}</td>
                <td>${product.id}</td>
                <td>${product.price}</td>
                <td>${product.condition}</td>
                <td>${product.description}</td>
                <td><a href="spec_products?pid=${product.id }" >View More</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>