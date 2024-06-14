<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../includes/header.jsp"%>

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">
<!-- Bootstrap core CSS -->
<link href="${path}/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Additional CSS Files -->
<link rel="stylesheet"
	href="${path}/resources/assets/css/fontawesome.css">
<link rel="stylesheet"
	href="${path}/resources/assets/css/templatemo-woox-travel.css">
<link rel="stylesheet" href="${path}/resources/assets/css/owl.css">

<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
<div class="hero-wrap js-fullheight" style="background-image: url('${path}/resources/images/bg_5.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Home</a></span> <span class="mr-2"><a href="hotel.html">Hotel</a></span> <span>Hotel Single</span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Hotels Details</h1>
          </div>
        </div>
      </div>
    </div>

 <section class="ftco-degree-bg" style="margin-bottom: 120px;">
 <c:forEach items="${a }" var="a">
      <div class="container">
<div class="visit-country">
	<div class="container">
	<div class="col-md-12 ftco-animate">
			<div class="single-slider owl-carousel">
				<div class="item">
					<div class="hotel-img"
						style="background-image: url('${path}/resources/images/hotel-2.jpg');"></div>
				</div>
				<div class="item">
					<div class="hotel-img"
						style="background-image: url('${path}/resources/images/hotel-3.jpg');"></div>
				</div>
				<div class="item">
					<div class="hotel-img"
						style="background-image: url('${path}/resources/images/hotel-4.jpg');"></div>
				</div>
			</div>
		</div>
		<div class="col-md-12 hotel-single mt-4 mb-5 ftco-animate">
			<div style="display: -webkit-inline-box;">
				<h1>${a.accommodation_name }</h1>
				<h3 style="margin: 15px 0px 0px 5px;"><span class="star">
           <i class="icon-star"></i>${a.star_rating}(${a.review_count})
				</span></h3>
			</div>
			<h6 class="rate mb-5">
				<span class="loc"><a href="#"><i class="icon-map"></i>
						${a.address }</a></span>
				<span class="loc"><a href="#"><i class="icon-phone"></i>
				${a.phone_number }</a></span> 
			</h6>
			<h6>${a.description }</h6>
		</div>
<!-- 		<div class="row"> -->
<!-- 			<div class="col-lg-5"> -->
<!-- 				<div class="section-heading"> -->
<!-- 					<h2>Visit One Of Our Countries Now</h2> -->
<!-- 					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed -->
<!-- 						do eiusmod tempor incididunt ut labore.</p> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
		<div class="row">
			<c:forEach items="${r }" var="r">
			<div class="col-lg-8">
				<div class="items">
					<div class="row">
						<div class="col-lg-12">
							<div class="item">
								<div class="row">
									<div class="col-lg-4 col-sm-5">
										<div class="image">
											<img src="${path}/resources/assets/images/country-01.jpg" alt="">
										</div>
									</div>
									<div class="col-lg-8 col-sm-7">
										<div class="right-content">
											<h4>${r.room_type }</h4>
											<div class="main-button">
												<a href="/reservation">예약</a>
											</div>
												<p>${r.description }</p>
											<ul class="info">
												<li><i class="fa fa-user"></i>${r.capacity }명</li>
												<li>${r.price }원</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
<!-- 						<div class="col-lg-12"> -->
<!-- 							<div class="item last-item"> -->
<!-- 								<div class="row"> -->
<!-- 									<div class="col-lg-4 col-sm-5"> -->
<!-- 										<div class="image"> -->
<%-- 											<img src="${path}/resources/assets/images/country-03.jpg" alt=""> --%>
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 									<div class="col-lg-8 col-sm-7"> -->
<!-- 										<div class="right-content"> -->
<!-- 											<h4>FRANCE</h4> -->
<!-- 											<span>Europe</span> -->
<!-- 											<div class="main-button"> -->
<!-- 												<a href="about.html">Explore More</a> -->
<!-- 											</div> -->
<!-- 											<p> -->
<!-- 												We hope this WoOx template is useful for you, please support -->
<!-- 												us a <a href="https://paypal.me/templatemo" target="_blank">small -->
<!-- 													amount of PayPal</a> to info [at] templatemo.com for our -->
<!-- 												survival. We really appreciate your contribution. -->
<!-- 											</p> -->
<!-- 											<ul class="info"> -->
<!-- 												<li><i class="fa fa-user"></i> 67.41 Mil People</li> -->
<!-- 												<li><i class="fa fa-globe"></i> 551.500 km2</li> -->
<!-- 												<li><i class="fa fa-home"></i> $425.600</li> -->
<!-- 											</ul> -->
<!-- 											<div class="text-button"> -->
<!-- 												<a href="about.html">Need Directions ? <i -->
<!-- 													class="fa fa-arrow-right"></i></a> -->
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="col-lg-12"> -->
<!-- 							<ul class="page-numbers"> -->
<!-- 								<li><a href="#"><i class="fa fa-arrow-left"></i></a></li> -->
<!-- 								<li><a href="#">1</a></li> -->
<!-- 								<li class="active"><a href="#">2</a></li> -->
<!-- 								<li><a href="#">3</a></li> -->
<!-- 								<li><a href="#"><i class="fa fa-arrow-right"></i></a></li> -->
<!-- 							</ul> -->
<!-- 						</div> -->
					</div>
				</div>
			</div>
			<div class="col-lg-4"></div>
			</c:forEach>
		</div>
	</div>
</div>
<script src="${path}/resources/vendor/jquery/jquery.min.js"></script>
<script src="${path}/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

<script src="${path}/resources/assets/js/isotope.min.js"></script>
<script src="${path}/resources/assets/js/owl-carousel.js"></script>
<script src="${path}/resources/assets/js/wow.js"></script>
<script src="${path}/resources/assets/js/tabs.js"></script>
<script src="${path}/resources/assets/js/popup.js"></script>
<script src="${path}/resources/assets/js/custom.js"></script>

<script>
	function bannerSwitcher() {
		next = $('.sec-1-input').filter(':checked').next('.sec-1-input');
		if (next.length)
			next.prop('checked', true);
		else
			$('.sec-1-input').first().prop('checked', true);
	}

	var bannerTimer = setInterval(bannerSwitcher, 5000);

	$('nav .controls label').click(function() {
		clearInterval(bannerTimer);
		bannerTimer = setInterval(bannerSwitcher, 5000)
	});
</script>
<div class="tab-pane fade show active" id="review" role="tabpanel"
	aria-labelledby="review-tab">
	<div class="row">
		<div class="col-lg-12">

			<div class="review_list">
				<div class="review_item">
					<div class="media">
						<div class="d-flex">
							<img src="img/product/review-1.png" alt="">
						</div>
						<div class="media-body">
							<h4>Blake Ruiz</h4>
							<span class="star">
								<c:forEach begin="1" end="${a.star_rating}">
			           	<i class="icon-star"></i>
			          </c:forEach>
			          <c:forEach begin="${a.star_rating + 1}" end="5">
			       			<i class="icon-star-o"></i>
			     			</c:forEach>
			     		</span>
						</div>
					</div>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
						nisi ut aliquip ex ea commodo</p>
				</div>
				<div class="review_item">
					<div class="media">
						<div class="d-flex">
							<img src="img/product/review-2.png" alt="">
						</div>
						<div class="media-body">
							<h4>Blake Ruiz</h4>
							<i class="icon-star"></i> <i class="icon-star"></i> <i
								class="icon-star"></i> <i class="icon-star"></i> <i
								class="icon-star"></i>
						</div>
					</div>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
						nisi ut aliquip ex ea commodo</p>
				</div>
				<div class="review_item">
					<div class="media">
						<div class="d-flex">
							<img src="img/product/review-3.png" alt="">
						</div>
						<div class="media-body">
							<h4>Blake Ruiz</h4>
							<span class="star"><i class="icon-star"></i> <i class="icon-star"></i> <i
								class="icon-star"></i> <i class="icon-star"></i> <i
								class="icon-star"></i></span>
						</div>
					</div>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
						nisi ut aliquip ex ea commodo</p>
				</div>
			</div>
		</div>

	</div>
</div>
</div>
</c:forEach>
</section>
<%@include file="../includes/footer.jsp"%>
