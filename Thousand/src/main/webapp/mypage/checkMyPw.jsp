<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
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
<meta charset="UTF-8">
<title>checkMyPw</title>
<style>
* {
	padding: 0;
	margin: 0;
	text-decoration: none;
}

#header {
	display: block;
	width: 100%;
	height: 150px;
	background-color: red;
	position: relative;
}

#nav {
	display: block;
	width: 100%;
	height: 50px;
	background-color: blue;
	position: relative;
}

#content {
	display: block;
	width: 100%;
	height: 1000px;
	background-color: aqua;
	position: relative;
}

#footer {
	display: block;
	width: 100%;
	height: 150px;
	background-color: pink;
	position: relative;
}

.logo {
	position: absolute;
	left: 0;
	width: 25%;
	height: 100%;
	background: white;
}

.logo img {
	left: 30%;
	top: 15%;
	width: 80%;
	position: absolute;
	z-index: 1;
}

.search {
	position: absolute;
	left: 25%;
	width: 50%;
	height: 100%;
	background: white;
}

#searchbox {
	position: absolute;
	left: 25%;
	top: 32%;
	width: 50%;
	height: 45px;
	background: wheat;
}

#searchbtn {
	position: absolute;
	left: 75%;
	top: 32%;
	width: 10%;
	height: 45px;
	background: blue;
}

.mypage {
	position: absolute;
	left: 75%;
	width: 25%;
	height: 100%;
	background: white;
}

.mylog {
	position: absolute;
	left: 9%;
	top: 27%;
	width: 15%;
	height: 60px;
	background-color: palegreen;
	border-radius: 70%;
	overflow: hidden;
}

.mypage img {
	position: absolute;
	left: 5%;
	top: 15%;
	width: 100%;
}

#write {
	position: absolute;
	left: 30%;
	top: 25%;
	width: 15%;
	height: 70px;
	text-align: center;
	font-size: 40px;
	border: 5px solid bisque;
}

#write i {
	color: black;
}

.menutxt {
	text-align: center;
	font-size: 24px;
}

.menu1 {
	position: absolute;
	left: 25%;
	width: 16%;
	height: 100%;
	background: green;
}

.menu2 {
	position: absolute;
	left: 42%;
	width: 16%;
	height: 100%;
	background: green;
}

.menu3 {
	position: absolute;
	left: 59%;
	width: 16%;
	height: 100%;
	background: green;
}

.entpw {
	position: absolute;
	left: 40%;
	top: 30%;
	width: 20%;
	height: 40px;
	border: solid orange 3px;
}

.txt {
	position: absolute;
	text-align: center;
	top: 15%;
	left: 45%;
}

.btn1 {
	position: absolute;
	text-align: center;
	top: 39%;
	left: 48%;
	height: 40px;
	background-color: orange;
}

@media screen and (max-width:767px) {
}
</style>
</head>

<body>
	<div id="header">
		<div class="logo">
			<img src="/Thousand/src/main/webapp/img/logo.png">
		</div>
		<div class="search">
			<div id="searchbox"></div>
			<div id="searchbtn"></div>
		</div>
		<div class="mypage">
			<div class="mylog">
				<img src="/Thousand/src/main/webapp/img/my.png">
			</div>
			<div id="write">
				<i class="fa-solid fa-utensils"></i>
			</div>
		</div>
	</div>

	<div id="nav">
		<div class="menu1">
			<p class="menutxt">Main</p>
		</div>
		<div class="menu2">
			<p class="menutxt">Popular</p>
		</div>
		<div class="menu3">
			<p class="menutxt">Recommand</p>
		</div>
	</div>

	<div id="content">
		<h2 class="txt">비밀번호 확인</h2>
		<div class="entpw">비밀번호 입력창</div>
		<div class="btn1">확인버튼</div>
	</div>

	<div id="footer"></div>

</body>

</html>