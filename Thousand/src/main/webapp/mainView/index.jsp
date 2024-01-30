<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
		<meta charset="UTF-8">
		<title></title>
	</head>
	
	<body>
		<c:forEach var="post" items="${postList}">
			<tr class="record">
				<input type="hidden" name="pno" value="${post.pno}">
				<td>${post.title}</td>		
				<td>${post.summary}</td>
				<td>${post.id}</td>
				<td>${post.readcount}</td>
				<img src="C:\upload\${post.mainimg}">
			</tr>
		</c:forEach>
		
	</body>
</html>