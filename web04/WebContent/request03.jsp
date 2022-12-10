<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		Enumeration<String> names = request.getParameterNames();
	
		while(names.hasMoreElements()) {
			String name = names.nextElement();// name 가져오기 (파라미터에서)
			String value = request.getParameter(name); // 값 가져오기
			out.print(name + "=" + value + "<br/>");
		}
	%>
</body>
</html>