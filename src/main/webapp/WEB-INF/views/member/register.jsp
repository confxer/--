<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>

<div class="hero-wrap js-fullheight" style="background-image: url('${path}/resources/images/bg_5.jpg');">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
            <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
                <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Register</h1>
            </div>
        </div>
    </div>
</div>

<section class="ftco-section ftco-degree-bg">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <form id="registerForm" action="register" method="post" class="p-5 bg-light">
                    <div class="form-group">
                        <label for="member_id">Member ID</label>
                        <input type="text" class="form-control" id="member_id" name="member_id" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" id="password" name="password" required>
                    </div>
                    <div class="form-group">
                        <label for="confirm_password">Confirm Password</label>
                        <input type="password" class="form-control" id="confirm_password" required>
                    </div>
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" id="name" name="name" required>
                    </div>
                    <div class="form-group">
                        <label for="nickname">Nickname</label>
                        <input type="text" class="form-control" id="nickname" name="nickname" required>
                    </div>
                    <div class="form-group">
                        <label for="phone_number">Phone Number</label>
                        <input type="text" class="form-control" id="phone_number" name="phone_number" placeholder="XXX-XXXX-XXXX" maxlength="13" pattern="\d{3}-\d{4}-\d{4}" required>
                    </div>
                    <div class="form-group">
                        <label for="birth_date">Birth Date</label>
                        <input type="date" class="form-control" id="birth_date" name="birth_date" required>
                    </div>
                    <div class="form-group">
                        <label for="type">Type</label>
                        <select class="form-control" id="type" name="type" onchange="toggleBusinessNumber()" required>
                            <option value="0">User</option>
                            <option value="1">Admin</option>
                            <option value="2">Manager</option>
                        </select>
                    </div>
                    <div class="form-group" id="business_number_field" style="display: none;">
                        <label for="business_number">Business Number</label>
                        <input type="text" class="form-control" id="business_number" name="business_number">
                    </div>
                    
                    <div class="form-group">
                        <input type="submit" value="Register" class="btn btn-primary py-3 px-5">
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<script>
    function toggleBusinessNumber() {
        var type = document.getElementById("type").value;
        var businessNumberField = document.getElementById("business_number_field");
        if (type == "1") {
            businessNumberField.style.display = "block";
        } else {
            businessNumberField.style.display = "none";
        }
    }

    document.getElementById('phone_number').addEventListener('input', function (e) {
        var x = e.target.value.replace(/\D/g, '').match(/(\d{0,3})(\d{0,4})(\d{0,4})/);
        e.target.value = !x[2] ? x[1] : x[1] + '-' + x[2] + (x[3] ? '-' + x[3] : '');
    });

    document.getElementById('registerForm').addEventListener('submit', function (e) {
        var password = document.getElementById('password').value;
        var confirmPassword = document.getElementById('confirm_password').value;
        var phoneNumber = document.getElementById('phone_number').value;

        if (password !== confirmPassword) {
            e.preventDefault();
            alert('Passwords do not match. Please try again.');
            return;
        }

        if (phoneNumber.length !== 13) {
            e.preventDefault();
            alert('Phone number must be in the format XXX-XXXX-XXXX.');
            return;
        }
    });
</script>

<%@include file="../includes/footer.jsp"%>
