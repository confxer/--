<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../includes/header.jsp"%>

<div class="hero-wrap js-fullheight"
	style="background-image: url('${path}/resources/images/bg_5.jpg');">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text js-fullheight align-items-center justify-content-center"
			data-scrollax-parent="true">
			<div class="col-md-9 ftco-animate text-center"
				data-scrollax=" properties: { translateY: '70%' }">
				<p class="breadcrumbs"
					data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">
					<span class="mr-2"><a href="home">Home</a></span> <span>Accommodations</span>
				</p>
				<h1 class="mb-3 bread"
					data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">${category}</h1>
			</div>
		</div>
	</div>
</div>


<section class="ftco-section ftco-degree-bg">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 sidebar">
				<div class="sidebar-wrap bg-light ftco-animate">
					<h3 class="heading mb-4">Find City</h3>
					<form method="get" action="/list/${category}s">
						<div class="fields">
							<div class="form-group">
									<label for="region">지역</label>
									<select name="region" id="region" class="form-control">
										<option value="">선택</option>
										<option value="Seoul">서울</option>
			              <option value="Gyeonggi">경기</option>
			              <option value="Incheon">인천</option>
			              <option value="Jeju">제주</option>
									</select>
							</div>
							<div class="form-group">
								<label for="startDate">입실일</label>
								<input name="startDate" type="text" id="checkin_date"
									class="form-control" placeholder="Date from" >
							</div>
							<div class="form-group">
								<label for="endDate">퇴실일</label>
								<input name="endDate" type="text" id="checkin_date"
									class="form-control" placeholder="Date to">
							</div>
							<div class="form-group">
							<label for="sort">정렬</label>
							<select name="sort" id="sort" class="form-control">
								<option value="">선택</option>
								<option value="rating">별점</option>
								<option value="reviews">리뷰수</option>
							</select>
							</div>
							<div class="form-group">
								<input type="submit" value="Search"
									class="btn btn-primary py-3 px-5">
							</div>
						</div>
					</form>
				</div>

			</div>
			<div class="col-lg-9">
				<div class="row">
					<c:forEach items="${accommodations }" var="accommodation">
						<div class="col-md-4 ftco-animate">
							<div class="destination">
								<a href="accommodationsDetail.jsp"
									class="img img-2 d-flex justify-content-center align-items-center"
									style="background-image: url(${path}/resources/images/hotel-1.jpg);">
									<div
										class="icon d-flex justify-content-center align-items-center">
										<span class="icon-search2"></span>
									</div>
								</a>
								<div class="text p-3">
									<div class="d-flex">
										<div class="one">
											<h3>
												<a href="accommodationsDetail.jsp">${accommodation.accommodation_name}</a>
											</h3>
											<p class="rate">
												<c:forEach begin="1" end="${accommodation.star_rating}">
                        	<i class="icon-star"></i>
                        </c:forEach>
                        <c:forEach begin="${accommodation.star_rating + 1}" end="5">
						              <i class="icon-star-o"></i>
						            </c:forEach>
						            <span>(${accommodation.review_count})</span>
											</p>
										</div>
										<div class="two">
											<span class="price per-price">50000<br>
											<small>/night</small></span>
										</div>
									</div>
									<p>${accommodation.description}</p>
									<hr>
									<p class="bottom-area d-flex">
										<span><i class="icon-map-o"></i>${accommodation.region}</span>
                    <span class="ml-auto"><a href="#">♥</a></span>
									</p>
								</div>
							</div>
						</div>
					</c:forEach>
					
					<div class="row mt-5">
						<div class="col text-center">
							<div class="block-27">
								<ul>
									<c:if test="${pageDTO.prev}">
							        <li><a href="?category=${category}&page=${pageDTO.startPage - 1}">&lt;</a></li>
							    </c:if>
							    <c:forEach begin="${pageDTO.startPage}" end="${pageDTO.endPage}" var="i">
							        <c:choose>
							            <c:when test="${i eq pageDTO.cri.pageNum}">
							                <li class="active"><span>${i}</span></li>
							            </c:when>
							            <c:otherwise>
							
					                <li><a href="?category=${category}&page=${i}">${i}</a></li>
							            </c:otherwise>
							        </c:choose>
							    </c:forEach>
							    <c:if test="${pageDTO.next}">
							        <li><a href="?category=${category}&page=${pageDTO.endPage + 1}">&gt;</a></li>
							    </c:if>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- .col-md-8 -->
		</div>
	</div>
</section>
<!-- .section -->

<%@include file="../includes/footer.jsp"%>
