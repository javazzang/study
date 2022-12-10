<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>procLogin</title>
</head>
<body>

<%
	// user_id, user_pwd
	String user_id = request.getParameter("user_id"); // 회원 아이디
	String user_pwd = request.getParameter("user_pwd"); // 회원 비밀번호

	//-- 1. 3항연산자로 예외처리
	user_id  = user_id == null ? "" : user_id;
	user_pwd = user_pwd == null ? "" : user_pwd; 
	
	//-- 2. 공백제거
	// " te st " => 정규표현식으로 제거해야 함.
	
	
	user_id = user_id.trim();			// 앞 뒤 공백 제거
	user_pwd = user_pwd.trim();         // 앞 뒤 공백 제거
	
	//-- 2. 사용자가 값을 넣었냐? 확인
	if ( user_id.equals("") || user_pwd.equals("") ) {
	%>
		<h3>아이디와 비밀번호는 필수 값 입니다.</h3>
		<a href="loginForm.jsp">로그인 화면으로 돌아가기</a>
	<%
		return;
	}
	
	//-- 아이디가 test /  비번은 1234 일때만 로그인 허용
	if( user_id.equals("test") && user_pwd.equals("1234") ) {
		response.sendRedirect("loginSucc.jsp");
	} else { // 그 외에는 로그인 실패
		response.sendRedirect("loginFailed.jsp");		
	}
%>

</body>
</html>