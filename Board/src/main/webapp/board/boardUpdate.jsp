<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<h1>게시글 수정</h1>
			<form name="frm" method="post" action="BoardServlet">
				<input type="hidden" name="command" value="board_update">
				<input type="hidden" name="num" value="${board.num }">
				<table class="table table-striped table-bordered table-hover form-group">
					<tr>
						<th>작성자</th>
						<td><input type="text" size="12" class="form-control" name="name" value="${board.name }"> * 필수</td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="password" size="12" class="form-control" name="pass"> * 필수(게시물 수정 삭제시 필요합니다.)</td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input type="text" size="40" class="form-control" maxlength="50" name="email" value="${board.email }"></td>
					</tr>
					<tr>
						<th>제목</th>
						<td><input type="text" size="70"  class="form-control" name="title" value="${board.title }"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea cols="70" rows="15" class="form-control" name="content">${board.content }</textarea></td>
					</tr>
				</table>
				<br>
				<input class="btn btn-outline-info btn-sm" type="submit" value="등록" onclick="return boardCheck()">
				<input class="btn btn-outline-info btn-sm" type="reset" value="다시작성">
				<input class="btn btn-outline-info btn-sm" type="button" value="목록" onclick="location.href='Boardservlet?command=board_list'">
			</form>
		</div>		
	</body>
</html>