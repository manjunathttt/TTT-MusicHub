<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
  <spring:url value="/resources/images" var="image"/>
<title>HELLO USER</title>
</head>
<body>


     
  <div class="container">
  <h1> Select below Guitars </h1>
  <br><br>
  <div class="row">
    <div class="col-lg-4">
      <a href="${image}/g1.png" class="thumbnail">   
        <img src ="${image}/g1.png" style="width:150px;height:150px"/>
      </a>
    </div>
    <div class="col-lg-4">
      <a href="${image}/g2.jpg" class="thumbnail">
        
        <img src="${image}/g2.jpg" style="width:150px;height:150px"/>
      </a>
    </div>
    <div class="col-lg-4">
      <a href="${image}/g3.jpg" class="thumbnail">
              
        <img src="${image}/g3.jpg" style="width:150px;height:150px"/>
      </a>
    </div>
   </div>
   
    
 
  <div class="row">
    <div class="col-lg-4">
      <a href="${image}/g4.jpg" class="thumbnail">
         
        <img src="${image}/g3.jpg" style="width:150px;height:150px"/>
      </a>
    </div>
    <div class="col-lg-4">
      <a href="${image}/g5.jpg" class="thumbnail">
       
        <img src="${image}/g3.jpg" style="width:150px;height:150px"/>
      </a>
    </div>
    <div class="col-lg-4">
      <a href="${image}/g6.jpg" class="thumbnail">
              
        <img src="${image}/g3.jpg" style="width:150px;height:150px"/>
      </a>
    </div>
  </div>
  </div>
  
<div>
<%@ include file="footer.jsp" %>
</div>

</body>
</html>