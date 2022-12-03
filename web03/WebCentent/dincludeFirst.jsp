<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.net.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	//선언문 
	//dIncludeFirst_jsp.java 클래스의 멤버(변수/메서드)로 선언된다.
	String name = "진종복";
 %>
 
 <%--
 	Directive include 의 경우는
 	1. 파일붙이기 -> 2. java로 변환 -> 3. 컴파일 -> 4. 실행
 	이기 때문에 host(붙이는놈)에 정의된 변수/메소드를 guest(붙임당하는놈)
 	공유할 수 있다.  
 	<%@ include file="dincludeSecond.jsp" %>   // 에러가 아닙니다.
 --%>
 
 <%--
	Action Tag 방식의 경우는
	(호스트) 1. java로 변환 -> 컴파일 -> 3. 실행
	(게스트) 4. 게스트 java변환 -> 5. 게스트실행 -> 6. 호스트/게스트 합치기
	이 경우는 host의 변수/메서드 등 공유자원을 사용하지 못하고
	독립적으로 동작한다.
 	<jsp:include page="dincludeSecond.jsp" />    // 그래서 얜 에러다.
--%>
  
<jsp:include page="dincludeSecond.jsp">
	<jsp:param name="userName" value="<%=URLEncoder.encode(name) %>" />
	
	<jsp:param name="callingDate" value="<%=new Date().toString()%>" />	
</jsp:include>
  
  
  
</body>
</html>