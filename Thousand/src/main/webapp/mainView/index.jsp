<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta charset="UTF-8">
    <link rel="stylesheet" href=" integrity="
        sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="
        anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="../css/main.css" />
</head>

<body>

    <div id="header">
        <div id="top">
            <div class="logo">
                <a href="#"><img src="../img/logo.png" alt="로고"></a>
            </div>
            <div class="search">
                <div class="input-group">
                    <input type="text" class="form-control" size="50" placeholder="검색어를 입력하세요." required="">
                    <div class="input-group-btn">
                        <button type="summit" class="btn btn-danger">Search</button>
                    </div>
                </div>
            </div>
            <div class="mypage">
                <div class="icon1"><i class="fa-solid fa-user-large" style="font-size: 50px"></i></div>
                <div class="icon2"><i class="fa-regular fa-pen-to-square" style="font-size: 50px"></i></div>
            </div>
        </div>
    </div>

    <div id="nav">
        <div id="navbar">
            <ul class="nav nav-pills">
                <li class="nav-item menu1 border border-2">
                    <a class="nav-link" data-toggle="pill" href="#home">Home</a>
                </li>
                <li class="nav-item menu2 border border-right-1">
                    <a class="nav-link" data-toggle="pill" href="#menu1">Menu 1</a>
                </li>
                <li class="nav-item menu3 border border-right-1">
                    <a class="nav-link" data-toggle="pill" href="#menu2">Menu 2</a>
                </li>
            </ul>
        </div>
    </div>


    <div id="content">
        <div class="maincontent">
            <div class="pic1 card border border-warning">
                <img class="card-img-top" src="article01.jpg" alt="test">
                <div class="card-body">
                    <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
                </div>
            </div>
            <div class="pic2 card border border-warning">

            </div>
            <div class="pic3 card border border-warning">

            </div>
            <div class="pic4 card border border-warning">

            </div>
            <div class="pic5 card border border-warning">

            </div>
            <div class="pic6 card border border-warning">

            </div>


            <div class="category">
                <div class="cate1 rounded-lg border border-warning">카테고리1</div>
                <div class="cate2 rounded-lg border border-warning">카테고리2</div>
                <div class="cate3 rounded-lg border border-warning">카테고리3</div>
                <div class="btn1 rounded-lg border border-warning">검색</div>
                <div class="btn2 rounded-lg border border-warning">취소</div>
            </div>

            <div class="paging">
                <a href="#">&laquo;</a>
                <a href="#">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                <a href="#">5</a>
                <a href="#">&raquo;</a>
            </div>
            <div class="mainback"></div>
        </div>

        <div id="footer">
            <div class="footcontent ">
                <br>
                <p>서울시 관악구 남부순환로 1820,에그엘로우14층 전화번호 : 02-6020-0055 팩스번호 : 02-3285-0012</p>
                <p>Copyright 2017 (주)천개의 레시피. ALL RIGHTS RESERVED.</p>
            </div>
        </div>

    </div>

</body>

</html>