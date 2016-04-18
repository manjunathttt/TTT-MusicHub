<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1> Select below violins </h1>

<div class="container">     
  <div class="row">
    <div class="col-md-4">
      <a href="images/g1.png" class="thumbnail">
           
        <img src="<c:url value='images/g1.png'/" style="width:150px;height:150px">
      </a>
    </div>
    <div class="col-md-4">
      <a href="images/g2.jpg" class="thumbnail">
        
        <img src="<c:url value='images/g2.jpg'/" style="width:150px;height:150px">
      </a>
    </div>
    <div class="col-md-4">
      <a href="images/g3.jpg" class="thumbnail">
           
        <img src="<c:url value='images/g3.jpg'/" style="width:150px;height:150px">
      </a>
    </div>
    </div>
    <div class="row">
    <div class="col-md-4">
      <a href="images/g4.jpg" class="thumbnail">
            
        <img src="<c:url value='images/g4.jpg'/" style="width:150px;height:150px">
      </a>
    </div>
    <div class="col-md-4">
      <a href="images/g5.jpg" class="thumbnail">
        
        <img src="<c:url value='images/g5.jpg'/" style="width:150px;height:150px">
      </a>
    </div>
    <div class="col-md-4">
      <a href="images/g6.jpg" class="thumbnail">
             
        <img src="<c:url value='images/g6.jpg'/" style="width:150px;height:150px">
      </a>
    </div>
    </div>
  </div>
</body>
</html>