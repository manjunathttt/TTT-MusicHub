<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ include file="header.jsp" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<title>EDIT PRODUCTS</title>
</head>
<body>
<%-- <c:url var="userRegistration" value="saveUser.html" /> --%>
<form:form id="registerForm" commandName="me" method="post"  
   action="success">  
   <div class="container">
	<table class="table">  
	<tbody>
    <tr>  
     <td><form:label path="id">Product ID</form:label></td>  
     <td><form:input path="id" value="${productObject.id}" /></td>  
    </tr>  
    <tr>  
     <td><form:label path="name">Product Name</form:label></td>  
     <td><form:input path="name" value="${productObject.name}"/></td>  
    </tr>  
    <tr>  
     <td><form:label path="price">Price</form:label></td>  
     <td><form:input path="price" value="${productObject.price}"/></td>  
    </tr>  
    <tr>  
     <td><form:label path="condition">Condition</form:label></td>  
     <td><form:input path="condition" value="${productObject.condition}"/></td>  
    </tr>
    <tr>
    <tr>  
     <td><form:label path="description">Description</form:label></td>  
     <td><form:input path="description" value="${productObject.description}"/></td>  
    </tr>  
    <tr> 
    </tr>  
    <tr>  
     <td></td>  
     <td><input type="submit" value="Update" />  
     </td>  
    </tr>  
    </tbody>
   </table>  
   </div>
  </form:form>  