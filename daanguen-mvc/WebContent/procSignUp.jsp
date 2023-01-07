<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memberService" type="service.MemberService" class="service.MemberServiceImpl" scope="application">
</jsp:useBean>

<%@ page import="vo.MemberVo" %>
<%@ page import="java.util.*" %>
<%

	//MVC type1 방식
	request.setCharacterEncoding("UTF-8"); //한글 깨짐 방지 (request)
	response.setCharacterEncoding("UTF-8"); //한글 깨짐 방지 (response)

	//1. 사용자의 입력값을 받습니다.
	String userEmail = request.getParameter("userEmail"); // 회원아이디
	String userName = request.getParameter("userName"); // 회원명
	String userPwd = request.getParameter("userPwd"); // 회원비밀번호
	String userPwdConfirm = request.getParameter("userPwdConfirm"); // 회원비밀번호 확인(DB안들어감)
	
	//2. Vo 객체 생성(메신저)
	MemberVo member = new MemberVo();
	member.setUserName(userName);
	member.setUserEmail(userEmail);
	member.setUserPwd(userPwd);
	
	//3. Service 실행
	Map<String,Object> result = memberService.registUser(member);
	
	//-- 가입 실패일때
	if(result.get("result").toString().equals("false")) {
	%>
		<script>
			alert("<%=result.get("message")%>");
			history.back();
		</script>
	<%
		return;

	}

	//가입성공
%>
<script>
alert("<%=result.get("message")%>");
location.href = "/signin.jsp"; //로그인 페이지로 이동
</script>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>