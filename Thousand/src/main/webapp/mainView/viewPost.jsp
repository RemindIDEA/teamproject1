<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>viewPost.jsp</title>
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

img {
	position: absolute;
	width: 100%;
	height: 100%;
}

#top {
	position: absolute;
	width: 80%;
	height: 35%;
	background-color: white;
	left: 10%;
	color: rgb(235, 218, 218);
}

.mainimg {
	position: absolute;
	width: 80%;
	height: 38%;
	top: 1%;
	left: 10%;
}

.writer {
	position: absolute;
	width: 60%;
	height: 4.5%;
	top: 40%;
	left: 20%;
	text-align: center;
}

.title {
	position: absolute;
	width: 60%;
	height: 9.1%;
	top: 45.5%;
	left: 20%;
	text-align: center;
}

.sammary {
	position: absolute;
	width: 60%;
	height: 13.4%;
	top: 55.6%;
	left: 20%;
	text-align: center;
}

#like {
	position: absolute;
	width: 60%;
	height: 4.5%;
	top: 70%;
	left: 20%;
	color: rgb(235, 218, 218);
}

.likeimg {
	position: absolute;
	width: 26%;
	height: 100%;
	top: 0%;
	left: 30%;
}

.likecount {
	position: absolute;
	width: 26%;
	height: 100%;
	background-color: navy;
	top: 0%;
	left: 37%;
}

.readcount {
	position: absolute;
	width: 26%;
	height: 100%;
	background-color: purple;
	top: 0%;
	left: 69%;
}

.item {
	position: absolute;
	width: 60%;
	height: 13.4%;
	top: 75.5%;
	left: 20%;
}

.box {
	position: absolute;
	width: 10%;
	height: 9.1%;
	background-color: orange;
	top: 90.9%;
	left: 20%;
	text-align: center;
	color: white;
	line-height: 3;
}

#middle {
	position: absolute;
	width: 72%;
	height: 50%;
	top: 35%;
	left: 14%;
	color: rgb(235, 218, 218);
}

.stepcount1 {
	position: absolute;
	width: 15%;
	height: 9%;
	background-color: yellow;
	top: 1%;
	left: 0%;
}

.steptext1 {
	position: absolute;
	width: 68%;
	height: 9%;
	top: 1%;
	left: 16%;
}

.stepimg1 {
	position: absolute;
	width: 15%;
	height: 9%;
	background-color: blue;
	top: 1%;
	right: 0%;
}

.stepcount2 {
	position: absolute;
	width: 15%;
	height: 9%;
	background-color: yellow;
	top: 11%;
	left: 0%;
}

.steptext2 {
	position: absolute;
	width: 68%;
	height: 9%;;
	top: 11%;
	left: 16%;
}

.stepimg2 {
	position: absolute;
	width: 15%;
	height: 9%;
	background-color: blue;
	top: 11%;
	right: 0%;
}

.stepcount3 {
	position: absolute;
	width: 15%;
	height: 9%;
	background-color: yellow;
	top: 21%;
	left: 0%;
}

.steptext3 {
	position: absolute;
	width: 68%;
	height: 9%;;
	top: 21%;
	left: 16%;
}

.stepimg3 {
	position: absolute;
	width: 15%;
	height: 9%;
	background-color: blue;
	top: 21%;
	right: 0%;
}

.stepcount4 {
	position: absolute;
	width: 15%;
	height: 9%;
	background-color: yellow;
	top: 31%;
	left: 0%;
}

.steptext4 {
	position: absolute;
	width: 68%;
	height: 9%;;
	top: 31%;
	left: 16%;
}

.stepimg4 {
	position: absolute;
	width: 15%;
	height: 9%;
	background-color: blue;
	top: 31%;
	right: 0%;
}

.stepcount5 {
	position: absolute;
	width: 15%;
	height: 9%;
	background-color: yellow;
	top: 41%;
	left: 0%;
}

.steptext5 {
	position: absolute;
	width: 68%;
	height: 9%;;
	top: 41%;
	left: 16%;
}

.stepimg5 {
	position: absolute;
	width: 15%;
	height: 9%;
	background-color: blue;
	top: 41%;
	right: 0%;
}

.stepcount6 {
	position: absolute;
	width: 15%;
	height: 9%;
	background-color: yellow;
	top: 51%;
	left: 0%;
}

.steptext6 {
	position: absolute;
	width: 68%;
	height: 9%;;
	top: 51%;
	left: 16%;
}

.stepimg6 {
	position: absolute;
	width: 15%;
	height: 9%;
	background-color: blue;
	top: 51%;
	right: 0%;
}

.stepcount7 {
	position: absolute;
	width: 15%;
	height: 9%;
	background-color: yellow;
	top: 61%;
	left: 0%;
}

.steptext7 {
	position: absolute;
	width: 68%;
	height: 9%;;
	top: 61%;
	left: 16%;
}

.stepimg7 {
	position: absolute;
	width: 15%;
	height: 9%;
	background-color: blue;
	top: 61%;
	right: 0%;
}

.stepcount8 {
	position: absolute;
	width: 15%;
	height: 9%;
	background-color: yellow;
	top: 71%;
	left: 0%;
}

.steptext8 {
	position: absolute;
	width: 68%;
	height: 9%;;
	top: 71%;
	left: 16%;
}

.stepimg8 {
	position: absolute;
	width: 15%;
	height: 9%;
	background-color: blue;
	top: 71%;
	right: 0%;
}

.stepcount9 {
	position: absolute;
	width: 15%;
	height: 9%;
	background-color: yellow;
	top: 81%;
	left: 0%;
}

.steptext9 {
	position: absolute;
	width: 68%;
	height: 9%;;
	top: 81%;
	left: 16%;
}

.stepimg9 {
	position: absolute;
	width: 15%;
	height: 9%;
	background-color: blue;
	top: 81%;
	right: 0%;
}

.stepcount10 {
	position: absolute;
	width: 15%;
	height: 9%;
	background-color: yellow;
	top: 91%;
	left: 0%;
}

.steptext10 {
	position: absolute;
	width: 68%;
	height: 9%;;
	top: 91%;
	left: 16%;
}

.stepimg10 {
	position: absolute;
	width: 15%;
	height: 9%;
	background-color: blue;
	top: 91%;
	right: 0%;
}

#bottom {
	position: absolute;
	width: 50%;
	height: 15%;
	background-color: rgb(255, 255, 255);
	top: 85%;
	left: 25%;
}

.finalimg {
	position: absolute;
	width: 50%;
	height: 50%;
	background-color: red;
	bottom: 40%;
	left: 25%;
}

.update {
	position: absolute;
	width: 10%;
	height: 19.1%;
	bottom: 10%;
	left: 20%;
}

.list {
	position: absolute;
	width: 10%;
	height: 19.1%;
	bottom: 10%;
	left: 45%;
}

.delete {
	position: absolute;
	width: 10%;
	height: 19.1%;
	bottom: 10%;
	right: 20%;
}
</style>


</head>
<body>
	<div id="background">
		<div id="top">
			<div class="mainimg">
				<img src="/Thousand/img/temp.png">
			</div>
			<input class="writer" type="text" placeholder="게시글 작성자"> <input
				class="title" type="text" placeholder="게시글 제목"> <input
				class="sammary" type="text" placeholder="게시글 소개글">
			<div id="like">
				<div class="likeimg">
					<i class="fa-regular fa-thumbs-up"></i>
				</div>
				<div class="likecount">좋아요 카운트</div>
				<div class="readcount">조회수</div>
			</div>
			<input class="item" type="text" placeholder="재료">

			<div class="box">요리순서</div>
		</div>

		<div id="middle">
			<div class="stepcount1">요리순서 번호1</div>
			<input class="steptext1" type="text">
			<div class="stepimg1">요리순서 이미지1</div>

			<div class="stepcount2">요리순서 번호2</div>
			<input class="steptext2" type="text">
			<div class="stepimg2">요리순서 이미지2</div>

			<div class="stepcount3">요리순서 번호3</div>
			<input class="steptext3" type="text">
			<div class="stepimg3">요리순서 이미지3</div>

			<div class="stepcount4">요리순서 번호4</div>
			<input class="steptext4" type="text">
			<div class="stepimg4">요리순서 이미지4</div>

			<div class="stepcount5">요리순서 번호5</div>
			<input class="steptext5" type="text">
			<div class="stepimg5">요리순서 이미지5</div>

			<div class="stepcount6">요리순서 번호6</div>
			<input class="steptext6" type="text">
			<div class="stepimg6">요리순서 이미지6</div>

			<div class="stepcount7">요리순서 번호7</div>
			<input class="steptext7" type="text">
			<div class="stepimg7">요리순서 이미지7</div>

			<div class="stepcount8">요리순서 번호8</div>
			<input class="steptext8" type="text">
			<div class="stepimg8">요리순서 이미지8</div>

			<div class="stepcount9">요리순서 번호9</div>
			<input class="steptext9" type="text">
			<div class="stepimg9">요리순서 이미지9</div>

			<div class="stepcount10">요리순서 번호10</div>
			<input class="steptext10" type="text">
			<div class="stepimg10">요리순서 이미지10</div>
		</div>

		<div id="bottom">
			<div class="finalimg">요리완성 사진</div>
			<button type="button" class="update btn-warning">수정</button>
			<button type="button" class="list btn-warning">목록</button>
			<button type="button" class="delete btn-warning">삭제</button>
		</div>
	</div>
</body>
</html>