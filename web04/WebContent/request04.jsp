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
		String[] name =	request.getParameterValues("name");
	
		if (name != null) {
			for(String value : name) {
				out.print("value=" + value + "<br/>");
			}
		} else {	//사용자가 parameter로 name은 넘겨주지 않았을때	
	%>
		name  값은 필수입니다.
	<% } %>	

</body>
</html>