<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>findId</title>
<style>
* {
	padding: 0;
	margin: 0;
	text-decoration: none;
}

#content {
	display: block;
	width: 100%;
	height: 1200px;
	text-align: center;
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

.mylogo {
	position: absolute;
	left: 35%;
	top: 17%;
	width: 10%;
	height: 170px;
	border-radius: 70%;
}

.mylogo img {
	left: 10%;
	top: 10%;
	width: 100%;
}

.entpw {
	position: absolute;
	left: 41%;
	top: 36%;
	width: 20%;
	height: 40px;
	border: solid orange 3px;
}

.txt {
	position: absolute;
	text-align: center;
	top: 25%;
	left: 48%;
}

.btn1 {
	position: absolute;
	text-align: center;
	top: 45%;
	left: 41%;
	height: 40px;
	width: 200px;
	border-radius: 30px 30px 30px 30px;
	background-color: orange;
}

.btn2 {
	position: absolute;
	text-align: center;
	top: 45%;
	left: 54%;
	height: 40px;
	width: 130px;
	border-radius: 30px 30px 30px 30px;
	background-color: orange;
}

@media screen and (max-width:767px) {
}
</style>
</head>

<body>
	<div id="content">
		<h2 class="txt">ID 확인</h2>
		<div class="mypage">
			<div class="mylogo">
				<img src="/Thousand/src/main/webapp/img/my.png">
			</div>
		</div>
		<div class="entpw">E-mail 입력창</div>
		<div class="btn1">찾기버튼</div>
		<div class="btn2">돌아가기</div>
	</div>
	<div id="footer"></div>
</body>
</html>