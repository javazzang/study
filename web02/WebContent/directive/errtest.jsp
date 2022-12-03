<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	errorPage="error.jsp"    
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	String name = "진종복";
	String age = null;
	out.print(name);
	out.print(age.toString());   // null point exception 발생

%>
</body>
</html>