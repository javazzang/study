<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<%-- JSTL --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록폼</title>
<style>
	td {
		border:1px solid #000;
	}
</style>
</head>
<body>
	<!-- 등록폼 -->
	<form id="" name="" method="post" action="/member/memberRegister.do">
		
		<p>Email : <input type="text" id="userEmail" name="userEmail" value="" /></p>
		<p>Name : <input type="text" id="userName" name="userName" value="" /></p>
		<p>Password : <input type="password" id="userPwd" name="userPwd" value="" /></p>
		<p><button>저장해줘</button></p>
		
	</form>

	<h2>회원목록</h2>
	<table style="width:50%; border:2px solid #000;">
		<!--  title -->
		<tr>
			<td>번호</td>
			<td>회원번호</td>
			<td>이름</td>
			<td>이메일</td>
			<td>비밀번호</td>
			<td>A</td>
		</tr>
		<!-- // title -->
		
		<!-- // contents -->
		<c:forEach var="member" items="${memberList}" varStatus="status">
		<tr>
			<td>${memberList.size() - status.index}</td>
			<td>${member.userNo}</td>
			<td>${member.userName}</td>
			<td>${member.userEmail}</td>
			<td>${member.userPwd}</td>
			<td>[삭제]</td>
		</tr>
		</c:forEach>
	</table>

</body>
</html>