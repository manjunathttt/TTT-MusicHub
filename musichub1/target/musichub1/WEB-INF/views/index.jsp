<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="header.jsp" %>
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<spring:url value="/resources/images" var="image"/>
<style>

#nav {
    line-height:30px;
    float:right;
    background-color:gray;
    height:300px;
    width:100px;
    float:left;
    padding:5px;	      
}
#section {
    width:200px;
    float:right;
    padding:5px;
    background-color:#eeeeee; 	 
}


.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
</style>
</head>


<body>


 <div class="container">
 <%--
<div id="header">
<h1>MUSIC HUB</h1>
</div>
--%>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="guitar">HOME</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="about">ABOUT US</a></li>
      <li class="active"><a href="contact">CONTACT US</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>



<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>
<div class="carousel-inner" role="listbox">
	<div class="item active">
      <img src="${image}/img1.jpg" />
    </div>

    <div class="item">
      <img src="${image}/img2.jpg" />
    </div>

    <div class="item">
      <img src="${image}/img3.jpeg" />
    </div>

    <div class="item">
      <img src="${image}/img4.jpg" />
    </div>
  </div>
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  
 <div class="row">
  <div class="col-md-4">
    <a href="home" class="thumbnail">
      <p>Guitar categories</p> 
      <img src="${image}/guitar.png" alt="guitar" style="width:150px;height:150px">
    </a>
  </div>
  <div class="col-md-4">
    <a href="home" class="thumbnail">
      <p>Violin categories</p> 
      <img src="${image}/violin.jpg" alt="violin" style="width:150px;height:150px">
    </a>
  </div>
  <div class="col-md-4">
    <a href="home" class="thumbnail">
      <p>Piano categories</p> 
      <img src="${image}/piano.jpg" alt="piano" style="width:150px;height:150px">
    </a>
  </div>
</div>
  
  <%-- <div id="footer">
  Copyright © MusicHub.com
</div>--%>

</div>
<div>
<%@ include file="footer.jsp" %>
</div>
</body>
</html>
