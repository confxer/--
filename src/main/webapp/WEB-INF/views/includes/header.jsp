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
      <a class="navbar-brand" href="/">dirEngine.</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active"><a href="/" class="nav-link">Home</a></li>
          <li class="nav-item"><a href="/list/hotels" class="nav-link">Hotel</a></li>
          <li class="nav-item"><a href="/list/motels" class="nav-link">Motel</a></li>
          <li class="nav-item"><a href="/list/pensions" class="nav-link">Pension</a></li>
          <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
          <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
          <c:choose>
            <c:when test="${not empty sessionScope.loggedInUser}">
              <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      내 정보
    </a>
    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
      <a class="dropdown-item" href="/member/profile">프로필</a>
      <a class="dropdown-item" href="/reservation">예약 조회</a>
      <a class="dropdown-item" href="/wishlist">위시리스트</a>
      <a class="dropdown-item" href="/wishlist">쿠폰함 </a>
    </div>
  </li>
              <li class="nav-item cta"><a href="/member/logout" class="nav-link"><span>로그아웃</span></a></li>
            </c:when>
            <c:when test="${not empty sessionScope.loggedInUser}">
  <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      내 정보
    </a>
    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
      <a class="dropdown-item" href="/member/profile">프로필</a>
      <a class="dropdown-item" href="/reservation">예약 조회</a>
      <a class="dropdown-item" href="/wishlist">찜 리스트</a>
      <a class="dropdown-item" href="/member/info">개인 정보 조회</a>
      <a class="dropdown-item" href="/member/logout">로그아웃</a>
    </div>
  </li>
</c:when>
            
            <c:otherwise>
              <li class="nav-item cta"><a href="/member/login" class="nav-link"><span>로그인</span></a></li>
            </c:otherwise>
          </c:choose>
        </ul>
      </div>
    </div>
  </nav>
    <!-- END nav -->	
    


</body>

</html>
