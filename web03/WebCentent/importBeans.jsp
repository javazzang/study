<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "vo.MemberVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>importBeans</title>
</head>
<body>

사용자 정의 클래스를 사용하는 방법 1 : Import <br/>
<%
	MemberVO vo = new MemberVO();

	vo.setId("jbjin");
	vo.setName("진종복");
%>

<h1> Welcome!! </h1><br/>
ID : <%=vo.getId() %><br/>
NAME : <%=vo.getName() %><br/>


</body>
</html>