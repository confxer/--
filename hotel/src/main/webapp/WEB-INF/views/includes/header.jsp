<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    <title>재활원</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">

    <link rel="stylesheet" href="${path}/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="${path}/resources/css/animate.css">
    
    <link rel="stylesheet" href="${path}/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${path}/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${path}/resources/css/magnific-popup.css">

    <link rel="stylesheet" href="${path}/resources/css/aos.css">

    <link rel="stylesheet" href="${path}/resources/css/ionicons.min.css">

    <link rel="stylesheet" href="${path}/resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="${path}/resources/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="${path}/resources/css/flaticon.css">
    <link rel="stylesheet" href="${path}/resources/css/icomoon.css">
    <link rel="stylesheet" href="${path}/resources/css/style.css">

</head>

<body>
  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="index.html">dirEngine.</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active"><a href="index.html" class="nav-link">Home</a></li>
          <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
          <li class="nav-item"><a href="tour.html" class="nav-link">Tour</a></li>
          <li class="nav-item"><a href="hotel.html" class="nav-link">Hotels</a></li>
          <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
          <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
          <li class="nav-item cta"><a href="contact.html" class="nav-link"><span>Add listing</span></a></li>
        </ul>
      </div>
    </div>
  </nav>
    <!-- END nav -->	
    
<div class="hero-wrap js-fullheight" style="background-image: url('${path}/resources/images/bg_1.jpg');">
  <div class="overlay"></div>
  <div class="container">
    <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
      <div class="col-md-9 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
        <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">첫마디</h1>
        <p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Find great places to stay, eat, shop, or visit from local experts</p>
        <div class="block-17 my-4">
          <form action="" method="post" class="d-block d-flex">
            <div class="fields d-block d-flex">
              <div class="textfield-search one-third">
              	<input type="text" class="form-control" placeholder="Ex: food, service, hotel">
              </div>
              <div class="select-wrap one-third">
                <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                <select name="" id="" class="form-control" placeholder="Keyword search">
                  <option value="">지역</option>
                  <option value="">1</option>
                  <option value="">2</option>
                  <option value="">3</option>
                  <option value="">4</option>
                </select>
              </div>
            </div>
            <input type="submit" class="search-submit btn btn-primary" value="Search">  
          </form>
        </div>
        <p>Or browse the highlights</p>
        <p class="browse d-md-flex">
        	<span class="d-flex justify-content-md-center align-items-md-center"><a href="#"><i class="flaticon-fork"></i>Restaurant</a></span>
        	<span class="d-flex justify-content-md-center align-items-md-center"><a href="#"><i class="flaticon-hotel"></i>Hotel</a></span> 
        	<span class="d-flex justify-content-md-center align-items-md-center"><a href="#"><i class="flaticon-meeting-point"></i>Places</a></span> 
        	<span class="d-flex justify-content-md-center align-items-md-	center"><a href="#"><i class="flaticon-shopping-bag"></i>Shopping</a></span>
        </p>
      </div>
    </div>
  </div>
</div>  

</body>

</html>