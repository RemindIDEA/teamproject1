<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href=" integrity="
        sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="
        anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="../css/main.css" />
</head>

<body>
    <div class="loginlogo">
        <img src="../img/logo.png" alt="로고이미지" style="width:350px; height:100px;" />
    </div>
    <div class="join border border-warning">
        <br>
        <h2 style="text-align: center;">회 원 가 입</h2>

        <form action="#">
            <div class="form-group form-inline joingroup">
                <label style="width:100px;" for="id">아 이 디</label>
                <input type="text" name="id" style="width:270px;" class="form-control border border-warning"
                    placeholder="아이디를 입력하세요" id="id">
                &nbsp;&nbsp;<input type="button" class="btn btn-primary border border-warning" name="checkid"
                    onclick="checkid.jsp" value="중복체크" />
            </div>
            <div class="form-group form-inline joingroup">
                <label style="width:100px;" for="password">비 밀 번 호</label>
                <input type="password" style="width:270px;" class="form-control border border-warning"
                    placeholder="비밀번호를 입력하세요" id="password">
            </div>
            <div class="form-group form-inline joingroup">
                <label style="width:100px; font-size:15px;" for="password">비밀번호 확인</label>
                <input type="password" style="width:270px;" class="form-control border border-warning"
                    placeholder="비밀번호를 입력하세요" id="password">
            </div>
            <div class="form-group form-inline joingroup">
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
            <button type="submit" class="btn btn-primary border border-warning  joinformbtn">회 원 가 입</button>
            <button type="submit" class="btn btn-primary border border-warning joincancelbtn">취소</button>
        </form>
    </div>
</body>

</html>