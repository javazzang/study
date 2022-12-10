<%@page import="org.apache.jasper.tagplugins.jstl.core.Out"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- http://localhost:9090/request01.jsp?name=%EC%A7%84%EC%A2%85%EB%B3%B5&id=test --%>
	<% 
		String name = request.getParameter("name");
		String id = request.getParameter("id");

		// 1. 삼항연산자 변수 자체의 값을 "" 이거나 id 로 치환 (무조건 String 객체화)
		//id = id == null ? "" : id;
		
		if(id != null && id.equals("test")) {
			out.print("<h1>어서오세요 " + id + "님 환영합니다.</h1><br/><br/>");
		}
	%>

	name : <%=name %><br/>
	id : <% out.print(id); %>

</body>
</html>