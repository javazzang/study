<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>당근마켓 - 우리 동네 중고거래</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/10.6.2/css/bootstrap-slider.min.css" integrity="sha256-G3IAYJYIQvZgPksNQDbjvxd/Ca1SfCDFwu2s2lt0oGo=" crossorigin="anonymous" />
    <link rel="stylesheet" type="text/css" href="/assets/css/style.css">
</head>
<body>
<%-- Header --%> 
<%
   String type = request.getParameter("type");
   
   if(type.equals("main")) {
	// main header 
%>
<nav class="navbar nav-global fixed-top navbar-expand-sm">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img class="img-brand" alt="당근마켓" width="132" src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/header/logo-basic-00b7e471b721ce9db8b0758c05a84684413c8aef1ad54caa0f3fcbe7328c947f.svg">
            </a>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a href="item_create.html"><i class="material-icons ic-create">create</i></a>
                </li>
            </ul>
        </div>
</nav>
<%
   } else if(type.equals("detail")) {
	// detail header 
%>
    <nav class="navbar nav-global fixed-top navbar-expand-sm">
        <div class="container">
            <a class="navbar-brand" href="javascript:history.back()">
                <i class="material-icons ic-filter">arrow_back_ios</i>뒤로
            </a>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a href="" class="btn btn-sm btn-warning disabled">채팅으로 거래하기</a>
                </li>
            </ul>
        </div>
    </nav>
<%
   } else {
	// etc 
%>
    <nav class="navbar nav-global fixed-top navbar-expand-sm">
        <div class="container">
            <a class="navbar-brand" href="javascript:history.back()">
                <i class="material-icons ic-filter">arrow_back_ios</i>뒤로
            </a>
        </div>
    </nav>
<%
   } 
%>