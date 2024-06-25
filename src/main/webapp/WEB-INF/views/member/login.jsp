<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"></script>
<div class="hero-wrap js-fullheight"
    style="background-image: url('${path}/resources/images/bg_5.jpg');">
    <div class="overlay"></div>
    <div class="container">
        <div
            class="row no-gutters slider-text js-fullheight align-items-center justify-content-center"
            data-scrollax-parent="true">
            <div class="col-md-9 ftco-animate text-center"
                data-scrollax=" properties: { translateY: '70%' }">
                <h1 class="mb-3 bread"
                    data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">로그인</h1>
            </div>
        </div>
    </div>
</div>

<section class="ftco-section ftco-degree-bg">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <form id="loginForm" action="login" method="post"
                    class="p-5 bg-light">
                    <div class="form-group">
                        <label for="member_id">아이디</label> 
                        <input type="text" class="form-control" id="member_id" name="member_id" required>
                    </div>
                    <div class="form-group">
                        <label for="password">비밀번호</label> 
                        <input type="password" class="form-control" id="password" name="password" required>
                    </div>
                    <div class="form-group">
                        <input type="submit" value="로그인" class="btn btn-primary py-3 px-5 btn-custom">
                    </div>
                    <div class="form-group">
                    <button id="login-naver-btn" class="btn btn-custom btn-success">
                        네이버 로그인
                    </button>
                    </div>
                    <div class="form-group">
                        <a href="/member/register" class="btn btn-secondary py-3 px-5 btn-custom">회원 가입</a>
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

    // 네이버 로그인 버튼 클릭 시 이벤트 리스너 추가
    document.getElementById('login-naver-btn').addEventListener('click', function() {
        // 네이버 로그인 URL로 리다이렉트
        location.href = 'https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=LO2vjhWJmTRVcdCU6cZU&redirect_uri=http://localhost:8090/member/callback2';
    });
</script>

<script>
    document.getElementById('loginForm').addEventListener('submit', function(e) {
        var memberId = document.getElementById('member_id').value;
        var password = document.getElementById('password').value;

        if (!memberId || !password) {
            e.preventDefault();
            alert('아이디와 비밀번호를 모두 입력해주세요.');
            return;
        }
    });
</script>

<%@include file="../includes/footer.jsp"%>
