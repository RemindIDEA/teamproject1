<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
		<meta charset="UTF-8">
		<title></title>
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
                position: absolute; 
                left: 0;
                width:25%;
                height: 100%;
                background: white;

            }
            .search{
                position: absolute;
                left:25%; 
                width: 50%;
                height: 100%;
                background: violet;
            }
            .mypage{
                position: absolute;
                left:75%; 
                width: 50%;
                height: 100%;
                background:purple;
            }
            .menu1{
                position: absolute;
                left:25%; 
                width: 16%;
                height: 100%;
                background:green;
            }
            .menu2{
                position: absolute;
                left:42%; 
                width: 16%;
                height: 100%;
                background:green;
            }
            .menu3{
                position: absolute;
                left:59%; 
                width: 16%;
                height: 100%;
                background:green;
            }
            .con1{
                position: absolute;
                left:0; 
                width: 20%;
                height: 100%;
                background:rgb(128, 126, 0);
            }
            .con2{
                position: absolute;
                left:20%; 
                width: 65%;
                height: 100%;
                background:rgb(0, 128, 117);
            }
            .con3{
                position: absolute;
                left:85%; 
                width: 15%;
                height: 100%;
                background:rgb(228, 15, 11);
            }
            .category{
                position: absolute;
                left:10%; 
                top: 10%;
                width: 80%;
                height: 600px;
                background:rgb(8, 199, 49);
            }
            .cate1{
                position: absolute;
                left:5%; 
                top: 12px;
                width: 90%;
                height: 150px;
                background:rgb(69, 12, 119);
            }
            .cate2{
                position: absolute;
                left:5%; 
                top: 174px;
                width: 90%;
                height: 150px;
                background:rgb(183, 114, 11);
            }
            .cate3{
                position: absolute;
                left:5%; 
                top: 336px;
                width: 90%;
                height: 150px;
                background:rgb(132, 10, 198);
            }
            .btn1{
                position: absolute;
                left: 50%; 
                top: 500px;
                width: 20%;
                height: 6%;
                background:rgb(15, 0, 3);
            }
            .btn2{
                position: absolute;
                left: 75%; 
                top: 500px;
                width: 20%;
                height: 6%;
                background:rgb(15, 0, 3);
            }
            .pic1{
                position: absolute;
                left: 3%; 
                top: 7%;
                width: 25%;
                height: 350px;
                background:rgb(15, 0, 3);
            }
            .pic2{
                position: absolute;
                left: 33%; 
                top: 7%;
                width: 25%;
                height: 350px;
                background:rgb(15, 0, 3);
            }
            .pic3{
                position: absolute;
                left: 63%; 
                top: 7%;
                width: 25%;
                height: 350px;
                background:rgb(15, 0, 3);
            }
            .pic4{
                position: absolute;
                left: 3%; 
                top: 47%;
                width: 25%;
                height: 350px;
                background:rgb(15, 0, 3);
            }
            .pic5{
                position: absolute;
                left: 33%; 
                top: 47%;
                width: 25%;
                height: 350px;
                background:rgb(15, 0, 3);
            }
            .pic6{
                position: absolute;
                left: 63%; 
                top: 47%;
                width: 25%;
                height: 350px;
                background:rgb(15, 0, 3);
            }
            .paging{
                position: absolute;
                left: 25%; 
                top: 88%;
                width: 40%;
                height: 50px;
                background:rgb(137, 59, 75);
            }
            .late1{
                position: absolute;
                top: 7%;
                left: 30%;
                width: 40%;
                height: 10%;
                background: whitesmoke;

            }
            .late2{
                position: absolute;
                top: 19%;
                left: 30%;
                width: 40%;
                height: 10%;
                background: whitesmoke;

            }
            .late3{
                position: absolute;
                top: 31%;
                left: 30%;
                width: 40%;
                height: 10%;
                background: whitesmoke;

            }
            .late4{
                position: absolute;
                top: 43%;
                left: 30%;
                width: 40%;
                height: 10%;
                background: whitesmoke;

            }
           
		</style>
	</head>
	
	<body>
		<div id="header">
			<div class="logo"></div>
			<div class="search"></div>
			<div class="mypage"></div>
        </div>
		<div id="nav">
			<div class="menu1"></div>
			<div class="menu2"></div>
			<div class="menu3"></div>
        </div> 
		<div id="content">
			<div class="con1">
                <div class="category">
                    <div class="cate1">카테고리1</div>
                    <div class="cate2">카테고리2</div>
                    <div class="cate3">카테고리3</div>
                    <div class="btn1"></div>
                    <div class="btn2"></div>
                </div>
            </div>
			<div class="con2">
	                <div class="pic1"></div>
	                <div class="pic2"></div>
	                <div class="pic3"></div>
	                <div class="pic4"></div>
	                <div class="pic5"></div>
	                <div class="pic6"></div>
                <div class="paging"></div>
            </div>
			<div class="con3">
                <div class="late1"></div>
                <div class="late2"></div>
                <div class="late3"></div>
                <div class="late4"></div>
            </div>
        </div>
		<div id="footer">

        </div>
	</body>
</html>