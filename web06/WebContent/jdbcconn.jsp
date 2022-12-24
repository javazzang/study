<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jdbcexam.JDBCConnect" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	JDBCConnect jdbc = new JDBCConnect();
	Connection conn = jdbc.getConnection();
	
%>
</body>
</html>