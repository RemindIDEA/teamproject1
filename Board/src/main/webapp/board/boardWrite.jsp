<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/board.css">
		<script type="text/javascript" src="script/board.js"></script>
	</head>
	<body>
		<div id="wrap" align="center">
			<h1>게시글 등록</h1>
			<form name="frm" method="post" action="BoardServlet">
				<input type="hidden" name="command" value="board_write">
				<table class="table table-striped table-bordered table-hover form-group">
					<tr>
						<th>작성자</th>
						<td><input type="text" class="form-control" name="name"> * 필수</td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="password" class="form-control" name="pass"> * 필수 (게시물 수정 삭제시 필요합니다.)</td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input type="text" class="form-control" name="email"></td>
					</tr>
					<tr>
						<th>제목</th>
						<td><input type="text" class="form-control" size="70" name="title"> * 필수</td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea cols="70" class="form-control" rows="15" name="content"></textarea></td>
					</tr>
				</table>
				<br>
				<br>
				<input class="btn btn-outline-info btn-sm" type="submit" value="등록" onclick="return boardCheck()">
				<input class="btn btn-outline-info btn-sm" type="reset" value="다시 작성">
				<input class="btn btn-outline-info btn-sm" type="button" value="목록" onclick="location.href='BoardServlet?command=board_list'"> 		
			</form>
		</div>
	</body>
</html>