<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="controller.Counter" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//Counter counter = new Counter();
	//counter.setCounter();
%>
<jsp:useBean id="counter" class="controller.Counter" scope="application"></jsp:useBean>
<% counter.setCounter(); %>

counter2. 접속자수 : <%=counter.getCounter() %><br/>

</body>
</html>