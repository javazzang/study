<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>

<!--
	page 디레티브태그에 import가 없을 경우에는
	package 포함 full class 경로를 사용해야 한다.
	ex) <%=new java.util.Date().toString() %>
 -->
Second.jsp 실행시간 : <%=new Date().toString() %>