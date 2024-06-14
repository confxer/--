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
	
<style>
#coupon{
    border-top: none;
    border-left: none;
    border-right: none;
}

#finalPay{
	display: flex;
	border-top:inset;
	padding: 2rem 1em 2rem 0em;
}

@media (min-width: 576px) {
   #imgDiv {
       -webkit-box-flex: 0;
       -ms-flex: 0 0 41.66667%;
       flex: 0 0 41.66667%;
       max-width: 41.66667%;
       }
}

@media (min-width: 770px) {
    #imgDiv {
        -webkit-box-flex: 0;
        -ms-flex: 0 0 33.33333%;
        flex: 0 0 33.33333%;
        max-width: 33.33333%;
    }
}

@media (min-width: 992px) {
    #imgDiv {
        -webkit-box-flex: 0;
        -ms-flex: 0 0 33.33333%;
        flex: 0 0 33.33333%;
        max-width: 33.33333%;
    }
}

</style>

<div class="hero-wrap js-fullheight" style="background-image: url('${path}/resources/images/bg_5.jpg');">
  <div class="overlay"></div>
  <div class="container">
    <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
      <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
        <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Reservation</h1>
      </div>
    </div>
  </div>
</div>
    
<section class="ftco-section ftco-degree-bg">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
         <div class="row">
           <div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">
           			<h1 class="mb-4" style="text-align: center;">예약하기</h1>
           			<h2 class="">호텔 이름</h2>
           			<div class="visit-country" style="margin-top:inherit;">
										<div class="col-lg-8" style="padding: 0;">
	           			<div class="col-lg-12" style="padding: 0;">
											<div class="items">
												<div class="row">
														<div class="item" style="border:none;">
															<div style="display:flex; align-items:center;">
																<div class="col-lg-4 col-sm-5" id="imgDiv">
																	<div class="image">
																		<img src="${path}/resources/assets/images/country-01.jpg" alt="">
																	</div>
																</div>
																
																<div class="col-lg-12 col-sm-7">
																	<div class="right-content" style="margin-bottom:1rem;">
																		<h4>방타입  
																		<span style="display: contents;font-size: large;"><i class="fa fa-user"></i> 2명</span>
																		</h4>
																	</div>
																	<div class="fields">
									          				<div class="row">
											           			<div class="col-md-6">
													              <div class="form-group">
													                <input type="text" id="checkin_date" class="form-control" placeholder="입실일">
													              </div>
												              </div>
												              <div class="col-md-6">
													              <div class="form-group">
													                <input type="text" id="checkin_date" class="form-control" placeholder="퇴실일">
													              </div>
													            </div>
													          </div>
													        </div>
																	
																</div>
															</div>
														</div>
												  
												  
										    </div>
										  </div>
										</div>
									</div>
								</div>
          			<h4 class="mb-2">예약자 정보</h4>
          			<div class="fields mb-3">
          				<div class="row">
          					<div class="col-md-6">
				              <div class="form-group">
				                <input type="text" class="form-control" placeholder="이름">
				              </div>
			              </div>
			              <div class="col-md-6">
				              <div class="form-group">
				                <input type="text" class="form-control" placeholder="핸드폰 번호">
				              </div>
			              </div>
			              
<!-- 				            <div class="col-md-6"> -->
<!-- 					            <div class="form-group"> -->
<!-- 				                <div class="select-wrap one-third"> -->
<!-- 			                    <div class="icon"><span class="ion-ios-arrow-down"></span></div> -->
<!-- 			                    <select name="" id="" class="form-control" placeholder="Guest"> -->
<!-- 			                      <option value="0">Guest</option> -->
<!-- 			                      <option value="1">1</option> -->
<!-- 			                      <option value="2">2</option> -->
<!-- 			                      <option value="3">3</option> -->
<!-- 			                      <option value="4">4</option> -->
<!-- 			                    </select> -->
<!-- 			                  </div> -->
<!-- 				              </div> -->
<!-- 			              </div> -->
<!-- 			              <div class="col-md-6"> -->
<!-- 					            <div class="form-group"> -->
<!-- 				                <div class="select-wrap one-third"> -->
<!-- 			                    <div class="icon"><span class="ion-ios-arrow-down"></span></div> -->
<!-- 			                    <select name="" id="" class="form-control" placeholder="Children"> -->
<!-- 			                      <option value="0">Children</option> -->
<!-- 			                      <option value="1">1</option> -->
<!-- 			                      <option value="2">2</option> -->
<!-- 			                      <option value="3">3</option> -->
<!-- 			                      <option value="4">4</option> -->
<!-- 			                    </select> -->
<!-- 			                  </div> -->
<!-- 				              </div> -->
<!-- 			              </div> -->
		              </div>
		           </div>
		           
		           <h4 class="mb-4">할인&amp;결제 정보</h4>
          			<div class="fields">
          				<div class="row">
          					<div class="col-md-12">
				              <div style="display: flex;">
				              	<div class="col-md-6">
				                <h5>객실 가격(n박)</h5>
				                </div>
				                <div class="col-md-6" style="margin-left:1.2em;">
				                <h5>00000원</h5>
				                </div>
				              </div>
			              </div>
			              <div class="col-md-12" style="display: flex;">
				              <div class="col-md-6" style="align-content: center;">
				              	<h5>쿠폰</h5>
				              </div>
					            <div class="col-md-6">
						            <div class="form-group">
					                <div class="select-wrap one-third">
				                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
				                    <select name="" id="coupon" class="form-control" placeholder="보유 쿠폰">
				                      <option value="0">보유 쿠폰</option>
				                      <option value="1">쿠폰1</option>
				                      <option value="2">쿠폰2</option>
				                      <option value="3">3</option>
				                    </select>
				                  </div>
					              </div>
				              </div>
				            </div>
				            <div class="col-md-12">
				              <div id="finalPay">
				              	<div class="col-md-6">
				                <h5>총 결제 금액</h5>
				                </div>
				                <div class="col-md-6" style="margin-left: 1em;">
				                <h5>00000원</h5>
				                </div>
				              </div>
			              </div>
				            <div class="col-md-12">
				              <div class="form-group">
<!-- 				              value="Check Availability" -->
				                <input type="submit" value="예약하기" class="btn btn-primary py-3">
				              </div>
			              </div>
		              </div>
		           </div>
          </div>	
        </div>
      </div>
    </div>
  </div>
</section>
        		
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

<%@include file="../includes/footer.jsp"%>