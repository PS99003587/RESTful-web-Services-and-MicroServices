<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ page errorPage = "error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<spring:url var="css" value="/resources/css"></spring:url>
<spring:url var="js" value="/resources/js"></spring:url>

<spring:url var="images" value="/resources/images"></spring:url>

<html>
<head>
<title>Online Shoe Store</title>
<!-- To Access the Bootstrap link -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<style type="text/css">
  .backgroundclr
  { 
    background-color: #1a0000;
  }
</style>
</head>
<body>
<br>
<br>
<br>
<%-- <center>
<!--<img src="./resources/images/mainlogo.jpg" alt="Photo" id="pic" />-->
<img src="<s:url value="/resources/images/banner.jpg"></s:url>"/>
</center> --%>
<jsp:include page="header.jsp"></jsp:include>
<!-- Divider scroll different images -->
<div class="container">
  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators" >
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <center><img src="./resources/images/entertainment.jpg" alt="movie" style="width:80%;"></center>
        <div class="carousel-caption">
          <h3 style="font-family: monospace;">Entertainment Videos</h3>
          <p style="font-family: monospace;">View to fun!!</p>
        </div>
      </div>

      <div class="item">
        <center><img src="./resources/images/educational.jpg" alt="School" style="width:80%;"></center>
        <div class="carousel-caption">
          <h3 style="font-family:monospace;">Educational Videos</h3>
          <p style="font-family: monospace;">View to learn</p>
        </div>
      </div>
    
      
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<div>
<hr>
<!-- Footer of the webpages -->
<center><a href="#"><img src="./resources/images/bookfooter.jpg"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=""><img src="./resources/images/book1footer.jpg"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=""><img src="./resources/images/bagsfooter.jpg"></a></center>
<hr>
 <div class="container">
<center><h4 style="font-family: fantasy;">Subscribe@SocialNetwork</h4>
    <hr />
        <div class="text-center center-block">
            <p class="txt-railway"></p>
            <br />
                <a href="https://www.facebook.com/"><i class="fa fa-facebook-square fa-3x social"></i></a>
	            <a href="https://twitter.com/"><i class="fa fa-twitter-square fa-3x social"></i></a>
	            <a href="https://plus.google.com/"><i class="fa fa-google-plus-square fa-3x social"></i></a>
	            <a href=""><i class="fa fa-envelope-square fa-3x social"></i></a>
</div>
</div>
</div>
</center>
</body>
</html>
