<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<title>login</title>
<style>
* {
	padding: 0;
	margin: 0;
	text-decoration: none;
}

#box {
	display: block;
	position: relative;
	background-color: white;
	width: 100%;
	height: 1200px;
}

#logbox {
	position: absolute;
	left: 34%;
	top: 25%;
	width: 30%;
	height: 400px;
	z-index: 3;
	border: solid orange 3px;
}

.logo {
	position: absolute;
	left: 36%;
	top: 10%;
	width: 25%;
	height: 100px;
}

.logo img {
	position: absolute;
	top: 15%;
	width: 100%;
}

.idbox {
	position: absolute;
	left: 25%;
	top: 18%;
	width: 50%;
	height: 40px;
	border: solid orange 3px;
}

.pwbox {
	position: absolute;
	left: 25%;
	top: 35%;
	width: 50%;
	height: 40px;
	border: solid orange 3px;
}

.logintxt {
	position: absolute;
	left: 3%;
	top: 12%;
}

.login {
	position: absolute;
	left: 25%;
	top: 55%;
	width: 50%;
	height: 50px;
	background-color: orange;
	border: solid orange 3px;
	border-radius: 30px 30px 30px 30px;
}

.logintxt2 {
	text-align: center;
	font-size: 24px;
}

.searchId {
	position: absolute;
	left: 20%;
	top: 78%;
	color: orange;
	text-decoration: underline;
}

.searchPw {
	position: absolute;
	left: 41%;
	top: 78%;
	color: orange;
	text-decoration: underline;
}

.join {
	position: absolute;
	left: 67%;
	top: 78%;
	color: orange;
	text-decoration: underline;
}

#footer {
	display: block;
	width: 100%;
	height: 150px;
	background-color: pink;
	position: relative;
}

@media screen and (max-width:767px) {
}
</style>
</head>

<body>
	<div id="box">

		<div id="logbox">
			<div class="idbox">
				<p class="logintxt">ID</p>
			</div>
			<div class="pwbox">
				<p class="logintxt">PW</p>
			</div>
			<div class="login">
				<p class="logintxt2">LogIn</p>
			</div>

			<p class="searchId">아이디 찾기</p>
			<p class="searchPw">비밀번호 찾기</p>
			<p class="join">회원가입</p>
		</div>

		<div class="logo">
			<img src="/Thousand/src/main/webapp/img/logo.png">
		</div>
	</div>
	<div id="footer"></div>
</body>
</html>