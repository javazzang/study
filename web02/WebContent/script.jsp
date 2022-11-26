<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 2일차</title>
</head>
<style type="text/css">
.w_100 {
	font-size:30px;
	color: red;
	width: 100%;
	height: 200px;
	border:1px solid;
	text-align: center;
}
</style>
<body>

<% 
	//-- 자바주석문 가능
	/* 자바 여러줄 주석 가능 */
	String name = "진종복";
	System.out.println(name + " 을 index를 호출하였습니다.(서버콘솔)");
	out.println(name + " 을 index를 호출하였습니다.(웹)");
	
	out.println(age + "살입니다.");	
%>


<%!
	//-- jsp 선언문
	String age = "10";
%>

<br><br>
<p class="w_100">
<%=age%> 살 입니다.
</p>

</body>
</html>