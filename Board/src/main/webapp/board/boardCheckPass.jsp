<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<script type="text/javascript" src="script/board.js"></script>
		<link rel="stylesheet" type="text/css" href="css/board.css">
	</head>
	
	<body>
		<div align="center">
		<h1>비밀번호 확인</h1>
		<form action="BoardServlet" name="frm" method="get">
			<input type="hidden" name="command" value="board_check_pass">
			<input type="hidden" name="num" value="${param.num}">
			<table style="width: 80%" class="table table-striped table-bordered table-hover form-group">
				<tr>
					<th>비밀번호</th>
					<td><input type="password" class="form-control" name="pass" size="20"></td>
				</tr>
			</table>
			<br> 
			<input class="btn btn-outline-info btn-sm" type="submit" value=" 확 인 "
				onclick="return passCheck()"> <br>
			<br>${message}
		</form>
	</div>
	</body>
</html>