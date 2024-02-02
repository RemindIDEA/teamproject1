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
    <div class="findpw border border-warning">
        <br>
        <h2 style="text-align: center;">아이디 찾기</h2>

        <form action="#">
            <div class="form-group findpwgroup">
                <br>
                <label for="id">
                    <h3>아이디</h3>
                </label>
                <input type="text" class="form-control findpwform border border-warning" placeholder="아이디를 입력하세요"
                    id="id">
            </div>
            <div class="form-group findpwgroup">
                <br>
                <label for="email">
                    <h3>이메일</h3>
                </label>
                <input type="text" class="form-control findpwform border border-warning" placeholder="이메일을 입력하세요"
                    id="email">
            </div>


            <br>
            <button type="submit" class="btn btn-primary border border-warning  findpwbtn">아이디찾기</button>
            <button type="submit" class="btn btn-primary border border-warning  findpwcancelbtn">취소</button>
        </form>
    </div>
</body>

</html>