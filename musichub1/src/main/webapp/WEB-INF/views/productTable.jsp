<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<style>
<link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
<script type="text/javascript" 
src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" 
src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
    $('#myTable').dataTable();
});
</script>
<title> Product details </title>
</head>
<body>
<div class="container">
<table id="myTable">  
        <thead>  
          <tr>  
            <th>product id</th>  
            <th>product name</th>  
            <th>price</th>  
            <th>condition</th>
          <th>Description</th>  
          </tr>
        </thead>  
        <tbody>  
          <tr>  
           <td>${spe_prod.id }</td>
           <td>${spe_prod.name }</td>
           <td>${spe_prod.price}</td>
           <td>${spe_prod.condition}</td>
           <td>${spe_prod.description}</td>
          </tr>  
        </tbody>  
      </table> 
      </div>
      <div>
<%@ include file="footer.jsp" %>
</div>
</body>
</html>