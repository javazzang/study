<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<%
	String  type = request.getParameter("type");
	if (type.equals("main")) {
%>
    <nav class="navbar nav-global fixed-top navbar-expand-sm">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img class="img-brand" alt="당근마켓" width="132" src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/header/logo-basic-00b7e471b721ce9db8b0758c05a84684413c8aef1ad54caa0f3fcbe7328c947f.svg">
            </a>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a href="item_create.jsp"><i class="material-icons ic-create">create</i></a>
                </li>
            </ul>
        </div>
    </nav>
<%
	} else if (type.equals("categorized_index")) {
%>    
    <nav class="navbar nav-global fixed-top navbar-expand-sm">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">
                <img class="img-brand" alt="당근마켓" width="132" src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/header/logo-basic-00b7e471b721ce9db8b0758c05a84684413c8aef1ad54caa0f3fcbe7328c947f.svg">
            </a>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <button class="btn-filter active" data-toggle="modal" data-target="#section-filter">
                        <!-- filter가 적용되어 있다면 btn-filter에 active 클레스를 추가해주세요.-->
                        <i class="material-icons ic-filter">filter_list</i>
                    </button>
                </li>

                <li class="nav-item">
                    <a href="item_create.html"><i class="material-icons ic-create">create</i></a>
                </li>
            </ul>
        </div>
    </nav>
<%
	} else if (type.equals("detail")) {
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
	} else if (type.equals("detail")) {
%>    
    <nav class="navbar nav-global fixed-top navbar-expand-sm">
        <div class="container">
            <a class="navbar-brand" href="javascript:history.back()">
                <i class="material-icons ic-filter">arrow_back_ios</i>뒤로
            </a>
        </div>
    </nav>
<%
	} else {}
%>    
