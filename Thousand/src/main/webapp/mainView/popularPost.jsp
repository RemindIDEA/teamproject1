<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <title>popularPost</title>
    <style>
    *{
        padding:0; margin:0; text-decoration:none; 
    }

    #header{ 
        display: block;  
        width: 100%; 
        height:150px; 
        background-color:red; 
        position: relative;
    } 
    #nav{
        display: block; 
        width: 100%; 
        height:50px; 
        background-color:blue;
        position: relative;
    }
    #content{
        display: block;
        width: 100%; 
        height:1000px;  
        background-color: aqua;
        position: relative;
    }
    #footer{
        display: block; 
        width: 100%; 
        height:150px;  
        background-color: pink;
        position: relative;
    }
    .logo{
        left: 0;
        width:25%;
        height: 100%;
        background: white;
        position: absolute; 
    }
    .logo img{
        left: 30%;
        top: 15%;
        width: 80%;
        position: absolute;
        z-index: 1;
    }
    .search{
        left:25%; 
        width: 50%;
        height: 100%;
        background: white  ;
        position: absolute;
    }
    #searchbox{
        position: absolute;
        left: 25%;
        top: 32%;
        width: 50%;
        height: 45px;
        background: wheat;
    }
    #searchbtn{
        position: absolute;
        left: 75%;
        top: 32%;
        width: 10%;
        height: 45px;
        background: blue;
    }
    .mypage{
        left: 75%; 
        width: 25%;
        height: 100%;
        background:white;
        position: absolute;
    }
    .mylog{
        position: absolute;
        left: 3%;
        top: 27%;
        width: 7%;
        height: 60px;
        background-color: palegreen;
        border-radius: 70%;
        overflow: hidden;
    }
    .mylog{
        position: absolute;
        left: 9%;
        top: 27%;
        width: 15%;
        height: 60px;
        background-color: palegreen;
        border-radius: 70%;
        overflow: hidden;
    }
    .mypage img{
        position: absolute;
        left: 5%;
        top: 15%;
        width: 100%;
    }
    #write{
        position: absolute;
        left: 30%;
        top: 25%;
        width: 15%;
        height: 70px;
        text-align: center;
        font-size: 40px;
        border: 5px solid bisque;
    }
    #write i{
        color: black;
    }
    .menutxt{
        text-align: center;
        font-size: 24px;
    }
    .menu1{
        left:25%; 
        width: 16%;
        height: 100%;
        background:green;
        position: absolute;
    }
    .menu2{
        left:42%; 
        width: 16%;
        height: 100%;
        background:green;
        position: absolute;
    }
    .menu3{
        position: absolute;
        left:59%; 
        width: 16%;
        height: 100%;
        background:green;
    }
    #popularPost{
        position: absolute;
        left: 30%; 
        top: 2%;
        width: 40%;
        height: 40px;
        text-align: center;
    }
    .btn1{
        position: absolute;
        left: 71%; 
        top: 4%;
        width: 4%;
        height: 3%;
        background:rgb(228, 191, 43);
        text-align: center;
    }
    .btn2{
        position: absolute;
        left: 75%; 
        top: 4%;
        width: 4%;
        height: 3%;
        background:rgb(237, 100, 100);
        text-align: center;
    }
    .pic1{
        position: absolute;
        left: 20%; 
        top: 10%;
        width: 17%;
        height: 350px;
        background:rgb(15, 0, 3);
    }
    .pic11{
        position: absolute;
        width: 100%;
        height: 220px;
        background:rgb(80, 80, 80);
    }
    .pic21{
        position: absolute;
        top: 63%;
        width: 100%;
        height: 130px;
        background:rgb(250 , 250, 250);
        opacity: 0.5;
    }
    .pic2{
        position: absolute;
        left: 41%; 
        top: 10%;
        width: 17%;
        height: 350px;
        background:rgb(15, 0, 3);
    }
    .pic12{
        position: absolute;
        width: 100%;
        height: 220px;
        background:rgb(80, 80, 80);
    }
    .pic22{
        position: absolute;
        top: 63%;
        width: 100%;
        height: 130px;
        background:rgb(250, 250, 250);
        opacity: 0.5;
    }
    .pic3{
        position: absolute;
        left: 62%; 
        top: 10%;
        width: 17%;
        height: 350px;
        background:rgb(15, 0, 3);
    }
    .pic13{
        position: absolute;
        width: 100%;
        height: 220px;
        background:rgb(80, 80, 80);
    }
    .pic23{
        position: absolute;
        top: 63%;
        width: 100%;
        height: 130px;
        background:rgb(250, 250, 250);
        opacity: 0.5;
    }
    .pic4{
        position: absolute;
        left: 20%; 
        top: 52%;
        width: 17%;
        height: 350px;
        background:rgb(15, 0, 3);
    }
    .pic14{
        position: absolute;
        width: 100%;
        height: 220px;
        background:rgb(80, 80, 80);
    }
    .pic24{
        position: absolute;
        top: 63%;
        width: 100%;
        height: 130px;
        background:rgb(250, 250, 250);
        opacity: 0.5;
    }
    .pic5{
        position: absolute;
        left: 41%; 
        top: 52%;
        width: 17%;
        height: 350px;
        background:rgb(15, 0, 3);
    }
    .pic15{
        position: absolute;
        width: 100%;
        height: 220px;
        background:rgb(80, 80, 80);
    }
    .pic25{
        position: absolute;
        top: 63%;
        width: 100%;
        height: 130px;
        background:rgb(250, 250, 250);
        opacity: 0.5;
    }
    .pic6{
        position: absolute;
        left: 62%; 
        top: 52%;
        width: 17%;
        height: 350px;
        background:rgb(15, 0, 3);
    }
    .pic16{
        position: absolute;
        width: 100%;
        height: 220px;
        background:rgb(80, 80, 80);
    }
    .pic26{
        position: absolute;
        top: 63%;
        width: 100%;
        height: 130px;
        background:rgb(250, 250, 250);
        opacity: 0.5;
    }
    .paging2{
        position: absolute;
        left: 30%; 
        top: 92%;
        width: 40%;
        height: 40px;
        background:rgb(137, 59, 75);
    }

    @media screen and (max-width:767px) {

    }
    </style>
</head>
<body>
    <div id="header">
        <div class="logo"><img src="/Thousand/src/main/webapp/img/logo.png"></div>
        <div class="search">
            <div id="searchbox"></div>
            <div id="searchbtn"></div>
        </div>
        <div class="mypage">
            <div class="mylog"><img src="/Thousand/src/main/webapp/img/my.png"></div>
            <div id="write"><i class="fa-solid fa-utensils"></i></div>
        </div>
    </div>

    <div id="nav">
        <div class="menu1"><p class="menutxt">Main</p></div>
        <div class="menu2"><p class="menutxt">Popular</p></div>
        <div class="menu3"><p class="menutxt">Recommand</p></div>
    </div> 

    <div id="content">
        <div id="popularPost"><h2>인기 게시물</h2></div>
        <div class="btn1">조회수</div>
        <div class="btn2">좋아요</div>

        <div class="pic1">
            <div class="pic11"></div>
            <div class="pic21"></div>
        </div>
        <div class="pic2">
            <div class="pic12"></div>
            <div class="pic22"></div>
        </div>
        <div class="pic3">
            <div class="pic13"></div>
            <div class="pic23"></div>
        </div>
        <div class="pic4">
            <div class="pic14"></div>
            <div class="pic24"></div>
        </div>
        <div class="pic5">
            <div class="pic15"></div>
            <div class="pic25"></div>
        </div>
        <div class="pic6">
            <div class="pic16"></div>
            <div class="pic26"></div>
        </div>

        <div class="paging2"></div>
    </div>

    <div id="footer"></div>
</body>
</html>