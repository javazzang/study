<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name = request.getParameter("userName");
	String callingDate = request.getParameter("callingDate");
	name = java.net.URLDecoder.decode(name);
%>

<%=name %><br/>
..콜링데이트 : <%=callingDate%>


</body>
</html>