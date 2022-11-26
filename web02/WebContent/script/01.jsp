<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>web02 - 01</title>
</head>
<body>
<%
	// 스크립틀릿
	// _jspService() 메소드 내의 지역변수/로직등을 선언하는 부분입니다.
	for( int i=0; i<10; i++ ) {
		//-- 자바코드에 HTML 코드 넣기
		//out.println("<strong>i = " + i + "</strong><br>");
		
		//-- HTML에 자바코드 넣기
		%>
		<strong>i = <% out.print(i); %></strong><br>
		<%
	}

	String greeting = "Hello World";
	out.print(greeting);
		
	out.print(selfToLowerCase(greeting));
	out.print(selfToUpperCase(greeting));	
	
	// 스크립틀릿은 클래스의 멤버메서드 한군데 (_jspService()) 에서 동작하는 코드를
	// 기술하는 곳 이므로, 추가적인 메서더의 정의는 불가능 합니다.
	// 에러에러
	//String selfToLowerCaseA(String str) {
	//	return str.toLowerCase();
	//}
%>

<%!
	// 선언문
	// 클래스의 멤버를 정의합니다. (Class 전역 변수/메소드 등을 선언 )
	
	//-- 소문자로 바꿔주는 놈
	String selfToLowerCase(String str) {
		return str.toLowerCase();
	}

	//-- 무조건 대문자로
	String selfToUpperCase(String str) {
		return str.toUpperCase();
	}	
%>

</body>
</html>