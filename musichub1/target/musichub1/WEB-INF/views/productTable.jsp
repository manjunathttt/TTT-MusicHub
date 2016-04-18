<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet" 
href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
<script type="text/javascript" 
src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" 
src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
    $('#myTable').dataTable();
});
</script>

</head>
<body>
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
            <td>201</td>  
            <td>tabala gold</td>   
            <td>10000</td> 
            <td>NEW</td>
            <td>Gold tabala from France</td>
            <td><a href="productguitar.jsp">click here</a> 
          </tr>  
          <tr>  
            <td>202</td>  
            <td>guitar</td>   
            <td>28000</td>  
            <td>NEW</td>
            <td>Gold Guitar from Russia</td>
          </tr>  
          <tr>  
            <td>203</td> 
            <td>violin</td>  
             <td>7000</td>  
              <td>NEW</td>
            <td>Gold Guitar from Russia</td>
          </tr>  
           <tr>  
            <td>204</td> 
            <td>violin</td>  
             <td>7000</td>  
              <td>NEW</td>
            <td>Gold Guitar from Russia</td>  
          </tr>  
          <tr>  
            <td>205</td> 
            <td>violin</td>  
             <td>7000</td>  
              <td>NEW</td>
            <td>Gold Guitar from Russia</td> 
          </tr>  
          <tr>  
            <td>206</td> 
            <td>violin</td>  
             <td>7000</td>  
              <td>NEW</td>
            <td>Gold Guitar from Russia</td> 
          </tr>  
          
           <tr>  
            <td>207</td> 
            <td>violin</td>  
             <td>7000</td>  
              <td>NEW</td>
            <td>Gold Guitar from Russia</td>  
          </tr>  
          <tr>  
            <td>208</td> 
            <td>violin</td>  
             <td>7000</td>  
              <td>NEW</td>
            <td>Gold Guitar from Russia</td> 
          </tr>  
          <tr>  
            <td>209</td> 
            <td>violin</td>  
             <td>7000</td>  
              <td>NEW</td>
            <td>Gold Guitar from Russia</td> 
          </tr>  
          
            <tr>  
            <td>210</td> 
            <td>violin</td>  
             <td>7000</td>  
              <td>NEW</td>
            <td>Gold Guitar from Russia</td>  
          </tr>  
          <tr>  
            <td>211</td> 
            <td>violin</td>  
             <td>7000</td>  
              <td>NEW</td>
            <td>Gold Guitar from Russia</td> 
          </tr>  
          <tr>  
            <td>212</td> 
            <td>violin</td>  
             <td>7000</td>  
              <td>NEW</td>
            <td>Gold Guitar from Russia</td> 
          </tr>  
        </tbody>  
      </table> 
</body>
</html>