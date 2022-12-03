<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scopeRequest2</title>
</head>
<body>
<% Thread.sleep(2000); %>
<jsp:useBean 
	id="cVo2" 
	class="vo.CreationObjectVO"
	scope="request"
></jsp:useBean>
REQ2 : <%=cVo2.getCreationDate() %><br/>
</body>
</html>