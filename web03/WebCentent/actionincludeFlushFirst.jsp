<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>action include Flush First</title>
</head>
<body>
첫번째 flush 인클루드 테스트 입니다.
<br/>
<jsp:include page="actionincludeFlushSecond.jsp" flush="true" />
</body>
</html>