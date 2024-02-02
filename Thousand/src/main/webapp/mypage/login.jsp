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
    <div class="loginlogo">
        <img src="../img/logo.png" alt="로고이미지" style="width:350px; height:100px;" />
    </div>
    <div class="login border border-warning">
        <form action="#">
            <div class="form-group logingroup">
                <br>
                <label for="id">
                    <h3>아 이 디</h3>
                </label>
                <input type="text" class="form-control loginform border border-warning" placeholder="아이디를 입력하세요"
                    id="id">
            </div>
            <div class="form-group logingroup">
                <label for="password">
                    <h3>비 밀 번 호</h3>
                </label>
                <input type="password" class="form-control loginform border border-warning" placeholder="비밀번호를 입력하세요"
                    id="password">
            </div>
            <br>
            <button type="submit" class="btn btn-primary border border-warning  loginbtn">로그인</button>
            <button type="submit" class="btn joinbtn">회원가입</button>
            <button type="submit" class="btn findidbtn">아이디찾기</button>
            <button type="submit" class="btn findpwbtn">비밀번호찾기</button>
        </form>
    </div>
</body>

</html>