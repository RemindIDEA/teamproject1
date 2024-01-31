<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>posting</title>
<style>
* {
	padding: 0;
	margin: 0;
	text-decoration: none;
}

#background {
	width: 100%;
	height: 1350px;
	position: relative;
}

#top {
	position: absolute;
	width: 90%;
	height: 30%;
	background-color: white;
	left: 5%;
	color: rgb(235, 218, 218);
}

.titleicon {
	position: absolute;
	width: 10%;
	height: 10.7%;
	background-color: orange;
	top: 5%;
	border-radius: 10%;
	color: white;
	text-align: center;
	font-size: large;
	line-height: 2.5;
}

.title {
	position: absolute;
	width: 50%;
	height: 10.7%;
	top: 5%;
	left: 15%;
	text-align: center;
}

.mainimg {
	position: absolute;
	width: 30%;
	height: 50%;
	background-color: rgb(0, 26, 26);
	top: 5%;
	right: 0%;
}

.sammaryicon {
	position: absolute;
	width: 10%;
	height: 10.7%;
	background-color: orange;
	top: 20.7%;
	border-radius: 10%;
	color: white;
	text-align: center;
	font-size: large;
	line-height: 2.5;
}

.sammary {
	position: absolute;
	width: 50%;
	height: 21.4%;
	top: 20.7%;
	left: 15%;
	text-align: center;
}

.categoryicon {
	position: absolute;
	width: 10%;
	background-color: orange;
	top: 47.1%;
	border-radius: 10%;
	color: white;
	text-align: center;
	font-size: large;
	line-height: 2.5;
}

#category {
	position: absolute;
	width: 50%;
	height: 10.7%;
	background-color: aqua;
	top: 47.1%;
	left: 15%;
}

.recipe {
	position: absolute;
	width: 30%;
	height: 100%;
	background-color: red;
	left: 0%;
}

.local {
	position: absolute;
	width: 30%;
	height: 100%;
	background-color: red;
	left: 35%;
}

.item {
	position: absolute;
	width: 30%;
	height: 100%;
	background-color: red;
	right: 0;
}

.stepicon {
	position: absolute;
	width: 10%;
	background-color: orange;
	top: 62.8%;
	border-radius: 10%;
	color: white;
	text-align: center;
	font-size: large;
	line-height: 2.5;
}

.recipeitem {
	position: absolute;
	width: 50%;
	height: 32.1%;
	top: 62.8%;
	left: 15%;
}

#middle {
	position: absolute;
	width: 90%;
	height: 60%;
	top: 30%;
	left: 5%;
	color: rgb(235, 218, 218);
}

#step1 {
	position: absolute;
	width: 55%;
	height: 9%;
	color: black;
	background-color: white;
	top: 1%;
	left: 15%;
}

.steptext1 {
	position: absolute;
	width: 65%;
	height: 100%;
}

.stepimg1 {
	position: absolute;
	width: 25%;
	height: 100%;
	background-color: aqua;
	left: 67%;
}

.plus1 {
	position: absolute;
	width: 5%;
	height: 40%;
	background-color: aqua;
	top: 5%;
	right: 0%;
}

.minus1 {
	position: absolute;
	width: 5%;
	height: 40%;
	background-color: aqua;
	top: 50%;
	right: 0%;
}

#step2 {
	position: absolute;
	width: 55%;
	height: 9%;
	color: black;
	background-color: white;
	top: 11%;
	left: 15%;
}

.steptext2 {
	position: absolute;
	width: 65%;
	height: 100%;
}

.stepimg2 {
	position: absolute;
	width: 25%;
	height: 100%;
	background-color: aqua;
	left: 67%;
}

.plus2 {
	position: absolute;
	width: 5%;
	height: 40%;
	background-color: aqua;
	top: 5%;
	right: 0%;
}

.minus2 {
	position: absolute;
	width: 5%;
	height: 40%;
	background-color: aqua;
	top: 50%;
	right: 0%;
}

#step3 {
	position: absolute;
	width: 55%;
	height: 9%;
	color: black;
	background-color: white;
	top: 21%;
	left: 15%;
}

.steptext3 {
	position: absolute;
	width: 65%;
	height: 100%;
}

.stepimg3 {
	position: absolute;
	width: 25%;
	height: 100%;
	background-color: aqua;
	left: 67%;
}

.plus3 {
	position: absolute;
	width: 5%;
	height: 40%;
	background-color: aqua;
	top: 5%;
	right: 0%;
}

.minus3 {
	position: absolute;
	width: 5%;
	height: 40%;
	background-color: aqua;
	top: 50%;
	right: 0%;
}

#step4 {
	position: absolute;
	width: 55%;
	height: 9%;
	color: black;
	background-color: white;
	top: 31%;
	left: 15%;
}

.steptext4 {
	position: absolute;
	width: 65%;
	height: 100%;
}

.stepimg4 {
	position: absolute;
	width: 25%;
	height: 100%;
	background-color: aqua;
	left: 67%;
}

.plus4 {
	position: absolute;
	width: 5%;
	height: 40%;
	background-color: aqua;
	top: 5%;
	right: 0%;
}

.minus4 {
	position: absolute;
	width: 5%;
	height: 40%;
	background-color: aqua;
	top: 50%;
	right: 0%;
}

#step5 {
	position: absolute;
	width: 55%;
	height: 9%;
	color: black;
	background-color: white;
	top: 41%;
	left: 15%;
}

.steptext5 {
	position: absolute;
	width: 65%;
	height: 100%;
}

.stepimg5 {
	position: absolute;
	width: 25%;
	height: 100%;
	background-color: aqua;
	left: 67%;
}

.plus5 {
	position: absolute;
	width: 5%;
	height: 40%;
	background-color: aqua;
	top: 5%;
	right: 0%;
}

.minus5 {
	position: absolute;
	width: 5%;
	height: 40%;
	background-color: aqua;
	top: 50%;
	right: 0%;
}

#step6 {
	position: absolute;
	width: 55%;
	height: 9%;
	color: black;
	background-color: white;
	top: 51%;
	left: 15%;
}

.steptext6 {
	position: absolute;
	width: 65%;
	height: 100%;
}

.stepimg6 {
	position: absolute;
	width: 25%;
	height: 100%;
	background-color: aqua;
	left: 67%;
}

.plus6 {
	position: absolute;
	width: 5%;
	height: 40%;
	background-color: aqua;
	top: 5%;
	right: 0%;
}

.minus6 {
	position: absolute;
	width: 5%;
	height: 40%;
	background-color: aqua;
	top: 50%;
	right: 0%;
}

#step7 {
	position: absolute;
	width: 55%;
	height: 9%;
	color: black;
	background-color: white;
	top: 61%;
	left: 15%;
}

.steptext7 {
	position: absolute;
	width: 65%;
	height: 100%;
}

.stepimg7 {
	position: absolute;
	width: 25%;
	height: 100%;
	background-color: aqua;
	left: 67%;
}

.plus7 {
	position: absolute;
	width: 5%;
	height: 40%;
	background-color: aqua;
	top: 5%;
	right: 0%;
}

.minus7 {
	position: absolute;
	width: 5%;
	height: 40%;
	background-color: aqua;
	top: 50%;
	right: 0%;
}

#step8 {
	position: absolute;
	width: 55%;
	height: 9%;
	color: black;
	background-color: white;
	top: 71%;
	left: 15%;
}

.steptext8 {
	position: absolute;
	width: 65%;
	height: 100%;
}

.stepimg8 {
	position: absolute;
	width: 25%;
	height: 100%;
	background-color: aqua;
	left: 67%;
}

.plus8 {
	position: absolute;
	width: 5%;
	height: 40%;
	background-color: aqua;
	top: 5%;
	right: 0%;
}

.minus8 {
	position: absolute;
	width: 5%;
	height: 40%;
	background-color: aqua;
	top: 50%;
	right: 0%;
}

#step9 {
	position: absolute;
	width: 55%;
	height: 9%;
	color: black;
	background-color: white;
	top: 81%;
	left: 15%;
}

.steptext9 {
	position: absolute;
	width: 65%;
	height: 100%;
}

.stepimg9 {
	position: absolute;
	width: 25%;
	height: 100%;
	background-color: aqua;
	left: 67%;
}

.plus9 {
	position: absolute;
	width: 5%;
	height: 40%;
	background-color: aqua;
	top: 5%;
	right: 0%;
}

.minus9 {
	position: absolute;
	width: 5%;
	height: 40%;
	background-color: aqua;
	top: 50%;
	right: 0%;
}

#step10 {
	position: absolute;
	width: 55%;
	height: 9%;
	color: black;
	background-color: white;
	top: 91%;
	left: 15%;
}

.steptext10 {
	position: absolute;
	width: 65%;
	height: 100%;
}

.stepimg10 {
	position: absolute;
	width: 25%;
	height: 100%;
	background-color: aqua;
	left: 67%;
}

.plus10 {
	position: absolute;
	width: 5%;
	height: 40%;
	background-color: aqua;
	top: 5%;
	right: 0%;
}

.minus10 {
	position: absolute;
	width: 5%;
	height: 40%;
	background-color: aqua;
	top: 50%;
	right: 0%;
}

#bottom {
	position: absolute;
	width: 90%;
	height: 10%;
	background-color: rgb(255, 255, 255);
	top: 90%;
	left: 5%;
}

.insert {
	position: absolute;
	width: 10%;
	height: 19.1%;
	background-color: orange;
	bottom: 10%;
	left: 20%;
}

.temp {
	position: absolute;
	width: 10%;
	height: 19.1%;
	background-color: orange;
	bottom: 10%;
	left: 45%;
}

.cancel {
	position: absolute;
	width: 10%;
	height: 19.1%;
	background-color: orange;
	bottom: 10%;
	right: 20%;
}
</style>
</head>

<body>
	<div id="background">
		<div id="top">
			<div class="titleicon">제목</div>
			<input class="title" type="text" placeholder="제목을 입력해주세요">
			<div class="sammaryicon">소개글</div>
			<input class="sammary" type="text" placeholder="소개글을 입력해주세요">
			<div class="categoryicon">카테고리</div>
			<div id="category">
				<div class="recipe">조리법</div>
				<div class="local">지역별</div>
				<div class="item">재료별</div>
			</div>
			<div class="mainimg">대표 이미지</div>
			<div class="stepicon">요리순서</div>
			<input class="recipeitem" type="text" placeholder="재료를 적어주세요">
		</div>

		<div id="middle">
			<div id="step1">
				<input class="steptext1" type="text">
				<div class="stepimg1">요리순서 이미지1</div>
				<div class="plus1">+</div>
				<div class="minus1">-</div>
			</div>
			<div id="step2">
				<input class="steptext2" type="text">
				<div class="stepimg2">요리순서 이미지2</div>
				<div class="plus2">+</div>
				<div class="minus2">-</div>
			</div>
			<div id="step3">
				<input class="steptext3" type="text">
				<div class="stepimg3">요리순서 이미지3</div>
				<div class="plus3">+</div>
				<div class="minus3">-</div>
			</div>
			<div id="step4">
				<input class="steptext4" type="text">
				<div class="stepimg4">요리순서 이미지4</div>
				<div class="plus4">+</div>
				<div class="minus4">-</div>
			</div>
			<div id="step5">
				<input class="steptext5" type="text">
				<div class="stepimg5">요리순서 이미지5</div>
				<div class="plus5">+</div>
				<div class="minus5">-</div>
			</div>
			<div id="step6">
				<input class="steptext6" type="text">
				<div class="stepimg6">요리순서 이미지6</div>
				<div class="plus6">+</div>
				<div class="minus6">-</div>
			</div>
			<div id="step7">
				<input class="steptext7" type="text">
				<div class="stepimg7">요리순서 이미지7</div>
				<div class="plus7">+</div>
				<div class="minus7">-</div>
			</div>
			<div id="step8">
				<input class="steptext8" type="text">
				<div class="stepimg8">요리순서 이미지8</div>
				<div class="plus8">+</div>
				<div class="minus8">-</div>
			</div>
			<div id="step9">
				<input class="steptext9" type="text">
				<div class="stepimg9">요리순서 이미지9</div>
				<div class="plus9">+</div>
				<div class="minus9">-</div>
			</div>
			<div id="step10">
				<input class="steptext10" type="text">
				<div class="stepimg10">요리순서 이미지10</div>
				<div class="plus10">+</div>
				<div class="minus10">-</div>
			</div>
		</div>

		<div id="bottom">
			<button type="button" class="insert btn-warning">등록</button>
			<button type="button" class="temp btn-warning">임시저장</button>
			<button type="button" class="cancel btn-warning">취소</button>
		</div>
	</div>
</body>
</html>