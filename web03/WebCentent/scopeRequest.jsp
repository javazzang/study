<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scopeRequest</title>
</head>
<body>

<jsp:useBean 
	id="creationObjectVo" 
	class="vo.CreationObjectVO"
	scope="request"
></jsp:useBean>
REQ1 : <%=creationObjectVo.getCreationDate() %><br/>
<%@ include file="scopeRequest2.jsp" %>
</body>
</html>