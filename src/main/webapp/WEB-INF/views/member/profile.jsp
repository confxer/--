<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../includes/header.jsp"%>

<div class="hero-wrap js-fullheight" style="background-image: url('${path}/resources/images/bg_5.jpg');">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
            <div class="col-md-9 ftco-animate text-center" data-scrollax="properties: { translateY: '70%' }">
                <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Profile</h1>
            </div>
        </div>
    </div>
</div>

<section class="ftco-section ftco-degree-bg">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <form id="profileForm" action="updateProfile" method="post" class="p-5 bg-light">
                    <div class="form-group">
                        <label for="member_id">아이디</label> 
                        <input type="text" class="form-control" id="member_id" name="member_id" value="${sessionScope.loggedInUser.member_id}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="name">이름</label> 
                        <input type="text" class="form-control" id="name" name="name" value="${sessionScope.loggedInUser.name}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="nickname">닉네임</label> 
                        <input type="text" class="form-control" id="nickname" name="nickname" value="${sessionScope.loggedInUser.nickname}" required>
                    </div>
                    <div class="form-group">
                        <label for="phone_number">전화번호</label> 
                        <input type="text" class="form-control" id="phone_number" name="phone_number" value="${sessionScope.loggedInUser.phone_number}" required>
                    </div>
                    <div class="form-group">
                        <label for="birth_date">생년월일</label> 
                        <input type="text" class="form-control" id="birth_date" name="birth_date" value="<fmt:formatDate value='${sessionScope.loggedInUser.birth_date}' pattern='yyyy-MM-dd' />" readonly>
                    </div>
                    
                    
                    <div class="form-group">
                        <label for="integration">연동</label> 
                        <input type="text" class="form-control" id="integration" name="integration" value="${sessionScope.loggedInUser.integration}" readonly>
                    </div>
                    
                    <div class="form-group">
                        <input type="submit" value="Update Profile" class="btn btn-primary py-3 px-5 btn-custom">
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<script>
    // 공통 버튼 스타일 설정
    var buttons = document.querySelectorAll('.btn-custom');
    buttons.forEach(function(button) {
        button.style.width = '100%';  // 너비 100%
        button.style.fontSize = '16px';  // 글자 크기
        button.style.fontWeight = 'bold';  // 글자 굵기
        button.style.height = '50px';  // 높이 설정
    });
    document.getElementById('phone_number').addEventListener('input', function (e) {
        var x = e.target.value.replace(/\D/g, '').match(/(\d{0,3})(\d{0,4})(\d{0,4})/);
        e.target.value = !x[2] ? x[1] : x[1] + '-' + x[2] + (x[3] ? '-' + x[3] : '');
    });
</script>

<%@include file="../includes/footer.jsp"%>
