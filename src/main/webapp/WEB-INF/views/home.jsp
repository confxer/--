<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="includes/header.jsp" %>
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
<section class="ftco-section">
	<div class="container">
		<div class="row justify-content-start mb-5 pb-3">
      		<div class="col-md-7 heading-section ftco-animate">
      		<span class="subheading">Special Offers</span>
        	<h2 class="mb-4"><strong>Popular</strong> Hotels</h2>
      		</div>
        </div>    		
    	<div class="row">
   			<div class="col-md-6 col-lg-3 ftco-animate">
   				<div class="destination">
   					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${path}/resources/images/restaurant-1.jpg);">
   						<div class="icon d-flex justify-content-center align-items-center">
   							<span class="icon-search2"></span>
   						</div>
   					</a>
   					<div class="text p-3">
   						<h3><a href="#">Luxury Restaurant</a></h3>
   						<p class="rate">
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star-o"></i>
   							<span>8 Rating</span>
   						</p>
   						<p>Far far away, behind the word mountains, far from the countries</p>
   						<hr>
   						<p class="bottom-area d-flex">
   							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
   							<span class="ml-auto"><a href="#">Discover</a></span>
   						</p>
   					</div>
   				</div>
   			</div>
   			<div class="col-md-6 col-lg-3 ftco-animate">
   				<div class="destination">
   					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${path}/resources/images/restaurant-2.jpg);">
   						<div class="icon d-flex justify-content-center align-items-center">
   							<span class="icon-search2"></span>
   						</div>
   					</a>
   					<div class="text p-3">
   						<h3><a href="#">Luxury Restaurant</a></h3>
   						<p class="rate">
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star-o"></i>
   							<span>8 Rating</span>
   						</p>
   						<p>Far far away, behind the word mountains, far from the countries</p>
   						<hr>
   						<p class="bottom-area d-flex">
   							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
   							<span class="ml-auto"><a href="#">Book Now</a></span>
   						</p>
   					</div>
   				</div>
   			</div>
   			<div class="col-md-6 col-lg-3 ftco-animate">
   				<div class="destination">
   					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${path}/resources/images/restaurant-3.jpg);">
   						<div class="icon d-flex justify-content-center align-items-center">
   							<span class="icon-search2"></span>
   						</div>
   					</a>
   					<div class="text p-3">
   						<h3><a href="#">Luxury Restaurant</a></h3>
   						<p class="rate">
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star-o"></i>
   							<span>8 Rating</span>
   						</p>
   						<p>Far far away, behind the word mountains, far from the countries</p>
   						<hr>
   						<p class="bottom-area d-flex">
   							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
   							<span class="ml-auto"><a href="#">Book Now</a></span>
   						</p>
   					</div>
   				</div>
   			</div>
   			<div class="col-md-6 col-lg-3 ftco-animate">
   				<div class="destination">
   					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${path}/resources/images/restaurant-4.jpg);">
   						<div class="icon d-flex justify-content-center align-items-center">
   							<span class="icon-search2"></span>
   						</div>
   					</a>
   					<div class="text p-3">
   						<h3><a href="#">Luxury Restaurant</a></h3>
   						<p class="rate">
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star-o"></i>
   							<span>8 Rating</span>
   						</p>
   						<p>Far far away, behind the word mountains, far from the countries</p>
   						<hr>
   						<p class="bottom-area d-flex">
   							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
   							<span class="ml-auto"><a href="#">Book Now</a></span>
   						</p>
   					</div>
   				</div>
   			</div>
   		</div>
	</div>
</section>

<section class="ftco-section">
	<div class="container">
		<div class="row justify-content-start mb-5 pb-3">
      		<div class="col-md-7 heading-section ftco-animate">
      		<span class="subheading">Special Offers</span>
        	<h2 class="mb-4"><strong>Popular</strong> Motels</h2>
      		</div>
        </div>    		
    	<div class="row">
   			<div class="col-md-6 col-lg-3 ftco-animate">
   				<div class="destination">
   					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${path}/resources/images/restaurant-1.jpg);">
   						<div class="icon d-flex justify-content-center align-items-center">
   							<span class="icon-search2"></span>
   						</div>
   					</a>
   					<div class="text p-3">
   						<h3><a href="#">Luxury Restaurant</a></h3>
   						<p class="rate">
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star-o"></i>
   							<span>8 Rating</span>
   						</p>
   						<p>Far far away, behind the word mountains, far from the countries</p>
   						<hr>
   						<p class="bottom-area d-flex">
   							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
   							<span class="ml-auto"><a href="#">Discover</a></span>
   						</p>
   					</div>
   				</div>
   			</div>
   			<div class="col-md-6 col-lg-3 ftco-animate">
   				<div class="destination">
   					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${path}/resources/images/restaurant-2.jpg);">
   						<div class="icon d-flex justify-content-center align-items-center">
   							<span class="icon-search2"></span>
   						</div>
   					</a>
   					<div class="text p-3">
   						<h3><a href="#">Luxury Restaurant</a></h3>
   						<p class="rate">
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star-o"></i>
   							<span>8 Rating</span>
   						</p>
   						<p>Far far away, behind the word mountains, far from the countries</p>
   						<hr>
   						<p class="bottom-area d-flex">
   							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
   							<span class="ml-auto"><a href="#">Book Now</a></span>
   						</p>
   					</div>
   				</div>
   			</div>
   			<div class="col-md-6 col-lg-3 ftco-animate">
   				<div class="destination">
   					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${path}/resources/images/restaurant-3.jpg);">
   						<div class="icon d-flex justify-content-center align-items-center">
   							<span class="icon-search2"></span>
   						</div>
   					</a>
   					<div class="text p-3">
   						<h3><a href="#">Luxury Restaurant</a></h3>
   						<p class="rate">
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star-o"></i>
   							<span>8 Rating</span>
   						</p>
   						<p>Far far away, behind the word mountains, far from the countries</p>
   						<hr>
   						<p class="bottom-area d-flex">
   							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
   							<span class="ml-auto"><a href="#">Book Now</a></span>
   						</p>
   					</div>
   				</div>
   			</div>
   			<div class="col-md-6 col-lg-3 ftco-animate">
   				<div class="destination">
   					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${path}/resources/images/restaurant-4.jpg);">
   						<div class="icon d-flex justify-content-center align-items-center">
   							<span class="icon-search2"></span>
   						</div>
   					</a>
   					<div class="text p-3">
   						<h3><a href="#">Luxury Restaurant</a></h3>
   						<p class="rate">
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star-o"></i>
   							<span>8 Rating</span>
   						</p>
   						<p>Far far away, behind the word mountains, far from the countries</p>
   						<hr>
   						<p class="bottom-area d-flex">
   							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
   							<span class="ml-auto"><a href="#">Book Now</a></span>
   						</p>
   					</div>
   				</div>
   			</div>
   		</div>
	</div>
</section>

<section class="ftco-section">
	<div class="container">
		<div class="row justify-content-start mb-5 pb-3">
      		<div class="col-md-7 heading-section ftco-animate">
      		<span class="subheading">Special Offers</span>
        	<h2 class="mb-4"><strong>Popular</strong> Pensions</h2>
      		</div>
        </div>    		
    	<div class="row">
   			<div class="col-md-6 col-lg-3 ftco-animate">
   				<div class="destination">
   					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${path}/resources/images/restaurant-1.jpg);">
   						<div class="icon d-flex justify-content-center align-items-center">
   							<span class="icon-search2"></span>
   						</div>
   					</a>
   					<div class="text p-3">
   						<h3><a href="#">Luxury Restaurant</a></h3>
   						<p class="rate">
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star-o"></i>
   							<span>8 Rating</span>
   						</p>
   						<p>Far far away, behind the word mountains, far from the countries</p>
   						<hr>
   						<p class="bottom-area d-flex">
   							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
   							<span class="ml-auto"><a href="#">Discover</a></span>
   						</p>
   					</div>
   				</div>
   			</div>
   			<div class="col-md-6 col-lg-3 ftco-animate">
   				<div class="destination">
   					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${path}/resources/images/restaurant-2.jpg);">
   						<div class="icon d-flex justify-content-center align-items-center">
   							<span class="icon-search2"></span>
   						</div>
   					</a>
   					<div class="text p-3">
   						<h3><a href="#">Luxury Restaurant</a></h3>
   						<p class="rate">
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star-o"></i>
   							<span>8 Rating</span>
   						</p>
   						<p>Far far away, behind the word mountains, far from the countries</p>
   						<hr>
   						<p class="bottom-area d-flex">
   							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
   							<span class="ml-auto"><a href="#">Book Now</a></span>
   						</p>
   					</div>
   				</div>
   			</div>
   			<div class="col-md-6 col-lg-3 ftco-animate">
   				<div class="destination">
   					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${path}/resources/images/restaurant-3.jpg);">
   						<div class="icon d-flex justify-content-center align-items-center">
   							<span class="icon-search2"></span>
   						</div>
   					</a>
   					<div class="text p-3">
   						<h3><a href="#">Luxury Restaurant</a></h3>
   						<p class="rate">
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star-o"></i>
   							<span>8 Rating</span>
   						</p>
   						<p>Far far away, behind the word mountains, far from the countries</p>
   						<hr>
   						<p class="bottom-area d-flex">
   							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
   							<span class="ml-auto"><a href="#">Book Now</a></span>
   						</p>
   					</div>
   				</div>
   			</div>
   			<div class="col-md-6 col-lg-3 ftco-animate">
   				<div class="destination">
   					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${path}/resources/images/restaurant-4.jpg);">
   						<div class="icon d-flex justify-content-center align-items-center">
   							<span class="icon-search2"></span>
   						</div>
   					</a>
   					<div class="text p-3">
   						<h3><a href="#">Luxury Restaurant</a></h3>
   						<p class="rate">
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star"></i>
   							<i class="icon-star-o"></i>
   							<span>8 Rating</span>
   						</p>
   						<p>Far far away, behind the word mountains, far from the countries</p>
   						<hr>
   						<p class="bottom-area d-flex">
   							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
   							<span class="ml-auto"><a href="#">Book Now</a></span>
   						</p>
   					</div>
   				</div>
   			</div>
   		</div>
	</div>
</section>

<%@include file="includes/footer.jsp" %>
