<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getMethod</title>
</head>
<body>

<%
	//-- 사용자에게 값을 받는데, 그 방식은 GET 방식으로 받겠다.
	
	String name = request.getParameter("name");
	String id = request.getParameter("id");

%>

ID : <%=id %> <br/>
NAME : <%=name %> <br/>
</body>
</html>