<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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

    <div class="updatemyinform border border-warning">
        <br>
        <h2 style="text-align: center;">내정보 수정</h2>

        <form action="#">
            <div class="form-group form-inline updatemyinformngroup">
                <label style="width:100px;" for="id">아 이 디</label>
                <input type="text" name="id" style="width:270px;" class="form-control border border-warning"
                    placeholder="아이디" id="id" readonly>
            </div>
            <div class="form-group form-inline updatemyinformngroup">
                <label style="width:100px;" for="password">비 밀 번 호</label>
                <input type="password" style="width:270px;" class="form-control border border-warning"
                    placeholder="비밀번호를 입력하세요" id="password">
            </div>
            <div class="form-group form-inline updatemyinformngroup">
                <label style="width:100px; font-size:15px;" for="password">비밀번호 확인</label>
                <input type="password" style="width:270px;" class="form-control border border-warning"
                    placeholder="비밀번호를 입력하세요" id="password">
            </div>
            <div class="form-group form-inline updatemyinformngroup">
                <label style="width:100px;" for="password">이 메 일</label>
                <input type="password" style="width:270px;" class="form-control border border-warning"
                    placeholder="비밀번호를 입력하세요" id="password">
            </div>
            <div class="form-group form-inline joingroup">
                <label style="width:100px;" for="password">닉 네 임</label>
                <input type="password" style="width:270px;" class="form-control border border-warning"
                    placeholder="비밀번호를 입력하세요" id="password">
                &nbsp;&nbsp;<input type="button" class="btn btn-primary border border-warning" name="checknickname"
                    onclick="checkid.jsp" value="중복체크" />
            </div>
            <br>
            <button type="submit" class="btn btn-primary border border-warning  updatemyinformbtn">나 의 정 보 수 정</button>
            <button type="submit" class="btn btn-primary border border-warning updatemyinformcancelbtn">취소</button>
        </form>
    </div>
</body>

</html>