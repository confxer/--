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
             <c:forEach items="${r}" var="r">
           			<h1 class="mb-4" style="text-align: center;">예약하기</h1>
           			<h2 class=""><c:out value="${name }"></c:out></h2>
           			<input type="hidden" id="accommodation_no" value="${r.accommodation_no}">
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
																		<h4>${r.room_type } 
																		<span style="display: contents;font-size: large;"><i class="fa fa-user"></i> ${r.capacity }명</span>
																		</h4>
																	</div>
																	
																	<div class="fields">
									          				<div class="row">
											           			<div class="col-md-6">
													              <div class="form-group">
													                <input type="text" id="checkin_date" class="form-control" placeholder="입실일" required>
													              </div>
												              </div>
												              <div class="col-md-6">
													              <div class="form-group">
													                <input type="text" id="checkout_date" class="form-control" placeholder="퇴실일" required>
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
          			<div class="fields mb-3 item">
          				<div class="row">
          					<div class="col-md-6">
				              <div class="form-group">
				                <input type="text" id="name" class="form-control" placeholder="이름" required>
				              </div>
			              </div>
			              <div class="col-md-6">
				              <div class="form-group">
				                <input type="text" id="phone_number" oninput="autoHyphen(this)" class="form-control" placeholder="핸드폰 번호(숫자만 입력 ex.01012345678)" required>
				              </div>
				            </div>
				            <div class="col-md-6">
				              <div class="form-group">
				                <input type="text" id="birth" class="form-control" placeholder="생년월일" required>
				              </div>
				            </div>
				            <div class="col-md-6">
					            <div class="form-group">
				                <div class="select-wrap one-third">
			                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
			                    <select name="" id="guest_count" class="form-control" required>
			                      <option value="0">인원</option>
			                      <c:forEach var="i" begin="1" end="${r.capacity }">
			                      	<option value="${i}">${i}명</option>
			                      </c:forEach>
			                    </select>
			                  </div>
				              </div>
			              </div>
		              </div>
		           </div>
		           
		           <h4 class="mb-4">할인&amp;결제 정보</h4>
          			<div class="fields">
          				<div class="row">
          					<div class="col-md-12">
				              <div style="display: flex;">
				              	<div class="col-md-6">
				                <h5 id="nightsResult">객실 가격(1박)</h5>
				                </div>
				                <div class="col-md-6" style="margin-left:1.2em;">
				                <h5 id="price"><c:out value="${r.price}" /> 원</h5>
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
				                <div class="col-md-6" style="margin-left: 1.2em;">
				                <h5>00000원</h5>
				                </div>
				              </div>
			              </div>
				            <div class="col-md-12">
				              <div class="form-group">
<!-- 				              value="Check Availability" -->
				                <input type="submit" value="예약하기" class="btn btn-primary py-3" onclick="Validation()">
				              </div>
			              </div>
		              </div>
		           </div>
		        </c:forEach>
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

<%@include file="../includes/footer.jsp"%>

<script>

$(document).ready(function(){
	//함수가 여러 번 호출되는 것을 방지하기 위해 연이어 호출되는 함수 중 마지막 함수만 실행되도록 하는 기술
	var debounceTimer;
	
	var priceElement = document.querySelector('#price'); // #price 요소 선택
	var roomPrice = parseFloat(priceElement.textContent); // 요소의 텍스트 
	
  function calculatePrice(nights) {
		var resultPrice = roomPrice * nights;
		return resultPrice;
	}
  
  $("#checkin_date, #checkout_date").on("change", function() {
      clearTimeout(debounceTimer); // 이전 타이머 제거
      debounceTimer = setTimeout(updateStayInfo, 300); // 300ms 후에 함수 실행
  });
	 
	 function updateStayInfo() {
		 var checkinDate = new Date($("#checkin_date").val());
		 var checkoutDate = new Date($("#checkout_date").val());
		 
		//날짜는 null 대신 Invalid Date 반환
		 if(!isNaN(checkinDate.getTime()) && !isNaN(checkoutDate.getTime())){
		 	var timeDiff = checkoutDate.getTime() - checkinDate.getTime();
		 	var nights = timeDiff / (1000 * 3600 * 24);
		 	//1000: ms->s		3600:s->h		24:h->d
		 	
		 	if(nights > 0){
		 		$("#nightsResult").html("객실 가격("+nights+"박)");
		 		$("#price").html(calculatePrice(nights)+" 원");
		 	}else{
		 		alert("체크아웃 날짜는 체크인 날짜 이후여야 합니다.");
		 	}
		 }
	 }
});

//유효성 검사
function Validation() {
		var checkinDate = document.getElementById("checkin_date");
		var checkoutDate = document.getElementById("checkout_date");
    var name = document.getElementById("name");
    var phone_number = document.getElementById("phone_number");
    var birth = document.getElementById("birth");
    var guest_count = document.getElementById("guest_count");
    
    //정규식 사용
    var regName = /^[가-힣a-zA-Z]{2,15}$/;
    var regPhone = /^(01[016789]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
    
    if (checkinDate.value == "") {
        alert("입실일을 선택하세요.");
        checkinDate.focus();
        return false;
    }
    
    if (checkoutDate.value == "") {
        alert("퇴실일을 선택하세요.");
        checkoutDate.focus();
        return false;
    }
    
    if (name.value == "" || name.value == null) {
        alert("이름을 입력하세요.");
        name.focus();
        return false;
    } else if (!regName.test(name.value)) { 
        alert("이름은 최소 2글자 이상, 한글과 영어만 입력 가능합니다.");
        name.focus();
        return false;
    }
    
    if (phone_number.value == "" || phone_number.value == null) {
        alert("전화번호를 입력하세요.");
        phone_number.focus(); 
        return false;
    } else if (!regPhone.test(phone_number.value)) { 
        alert("숫자만 입력하여 올바른 형식의 전화번호를 써주세요. ex)010-1234-5678");
        phone_number.focus(); 
        return false;
    }
		
    if (guest_count.value == "") {
        alert("인원수를 선택하세요.");
        guest_count.focus();
        return false;
    }
    
    return true; // 모든 검사를 통과하면 true 반환
}

//전화번호 입력 시 자동 하이픈 넣기
function autoHyphen(input) {
	//숫자만 남기고 모든 문자 제거
	var phone = input.value.replace(/[^\d]/g, "");
	
	//전화번호 형식에 맞게 하이푼 추가
	if (phone.length >= 4 && phone.length <= 7) {
        input.value = phone.slice(0, 3) + "-" + phone.slice(3);
    } else if (phone.length >= 8) {
        input.value = phone.slice(0, 3) + "-" + phone.slice(3, 7) + "-" + phone.slice(7);
    }
}

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
