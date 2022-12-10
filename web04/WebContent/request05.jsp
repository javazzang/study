<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1><%="요고를 활용해 볼께용" %></h1><br/>

웹브라우저 IP : <%=request.getRemoteAddr() %><br/>

요청주소 : <%=request.getRequestURI() %><br/>
요청주소 : <%=request.getRequestURL() %><br/>
요청방식(Method) : <%=request.getMethod() %><br/>
QueryString : <%=request.getQueryString() %><br/>


<%
	String url = request.getRequestURL().toString();
	String queryString = request.getQueryString();
	String full_url = null; 
	
	if(queryString == null) full_url = url;
	else full_url = url + "?" + queryString;
%>

사용자가 요청한 Full URL : <%=full_url%>

</body>
</html>