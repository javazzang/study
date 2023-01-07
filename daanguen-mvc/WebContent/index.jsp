<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import="vo.MemberVo" %>

<%
/*
	Dao 동작확인 jsp:useBean id="memberDao" class="dao.MemberDaoImpl"></jsp:useBean
	MemberVo vo = new MemberVo();
	vo.setUserName("홍길동");
	vo.setUserEmail("test@gmail.com");
	vo.setUserPwd("12345");
	
	memberDao.insertMember(vo);
*/

	MemberVo member = (MemberVo)session.getAttribute("sess_member");
%>

<jsp:include page="/inc/header.jsp">
	<jsp:param name="type" value="main" />
</jsp:include>

<div class="container container-main-index">
    <h5 class="container-headline">중고 거래 제품</h5>

    <div class="categories-group">
        <a href="categorized_index.jsp" class="btn btn-category">차량</a>
        <a href="#" class="btn btn-category">
        	<% if(member != null) out.print(member.getUserEmail() + " 로그인 성공");  %>
        </a>
        <a href="#" class="btn btn-category">가구/인테리어</a>
        <a href="#" class="btn btn-category">유아동/유아도서</a>
        <a href="#" class="btn btn-category">생활/가공식품</a>
    </div>

    <ul class="list-products row">
        <li class="list-products-item col-12 col-md-4 col-lg-3">
            <a href="detail.jsp">
                <div class="card">
                    <div class="card-img-top" style="background: url('https://dnvefa72aowie.cloudfront.net/origin/article/201910/56c82f70d5115996bbc4f01299353545c89f4e3551264a7f40baa6fb77f76d82.webp?q=95&s=1440x1440&t=inside') no-repeat center; background-size: cover; height: 240px"></div>
                    <div class="card-body">
                        <h5 class="title">티볼리 1인신조차량 무사고차량 판매해요</h5>
                        <h6 class="price">8,500,000원</h6>

                        <div class="text-muted">
                            <h6 class="category">차량</h6>
                            <time datetime='2019-08-20T08:30:00Z'>2개월전</time>
                        </div>
                    </div>
                </div>
            </a>
        </li>
        <li class="list-products-item col-12 col-md-4 col-lg-3">
            <a href="detail.jsp">
                <div class="card">
                    <div class="card-img-top" style="background: url('https://dnvefa72aowie.cloudfront.net/origin/article/201910/56c82f70d5115996bbc4f01299353545c89f4e3551264a7f40baa6fb77f76d82.webp?q=95&s=1440x1440&t=inside') no-repeat center; background-size: cover; height: 240px"></div>
                    <div class="card-body">
                        <h5 class="title">티볼리 1인신조차량 무사고차량 판매해요</h5>
                        <h6 class="price">8,500,000원</h6>

                        <div class="text-muted">
                            <h6 class="category">차량</h6>
                            <time datetime='2019-08-20T08:30:00Z'>2개월전</time>
                        </div>
                    </div>
                </div>
            </a>
        </li>
        <li class="list-products-item col-12 col-md-4 col-lg-3">
            <a href="detail.jsp">
                <div class="card">
                    <div class="card-img-top" style="background: url('https://dnvefa72aowie.cloudfront.net/origin/article/201910/56c82f70d5115996bbc4f01299353545c89f4e3551264a7f40baa6fb77f76d82.webp?q=95&s=1440x1440&t=inside') no-repeat center; background-size: cover; height: 240px"></div>
                    <div class="card-body">
                        <h5 class="title">티볼리 1인신조차량 무사고차량 판매해요</h5>
                        <h6 class="price">8,500,000원</h6>

                        <div class="text-muted">
                            <h6 class="category">차량</h6>
                            <time datetime='2019-08-20T08:30:00Z'>2개월전</time>
                        </div>
                    </div>
                </div>
            </a>
        </li>
        <li class="list-products-item col-12 col-md-4 col-lg-3">
            <a href="detail.jsp">
                <div class="card">
                    <div class="card-img-top" style="background: url('https://dnvefa72aowie.cloudfront.net/origin/article/201910/56c82f70d5115996bbc4f01299353545c89f4e3551264a7f40baa6fb77f76d82.webp?q=95&s=1440x1440&t=inside') no-repeat center; background-size: cover; height: 240px"></div>
                    <div class="card-body">
                        <h5 class="title">티볼리 1인신조차량 무사고차량 판매해요</h5>
                        <h6 class="price">8,500,000원</h6>

                        <div class="text-muted">
                            <h6 class="category">차량</h6>
                            <time datetime='2019-08-20T08:30:00Z'>2개월전</time>
                        </div>
                    </div>
                </div>
            </a>
        </li>
        <li class="list-products-item col-12 col-md-4 col-lg-3">
            <a href="detail.jsp">
                <div class="card">
                    <div class="card-img-top" style="background: url('https://dnvefa72aowie.cloudfront.net/origin/article/201910/56c82f70d5115996bbc4f01299353545c89f4e3551264a7f40baa6fb77f76d82.webp?q=95&s=1440x1440&t=inside') no-repeat center; background-size: cover; height: 240px"></div>
                    <div class="card-body">
                        <h5 class="title">티볼리 1인신조차량 무사고차량 판매해요</h5>
                        <h6 class="price">8,500,000원</h6>

                        <div class="text-muted">
                            <h6 class="category">차량</h6>
                            <time datetime='2019-08-20T08:30:00Z'>2개월전</time>
                        </div>
                    </div>
                </div>
            </a>
        </li>
        <li class="list-products-item col-12 col-md-4 col-lg-3">
            <a href="detail.jsp">
                <div class="card">
                    <div class="card-img-top" style="background: url('https://dnvefa72aowie.cloudfront.net/origin/article/201910/56c82f70d5115996bbc4f01299353545c89f4e3551264a7f40baa6fb77f76d82.webp?q=95&s=1440x1440&t=inside') no-repeat center; background-size: cover; height: 240px"></div>
                    <div class="card-body">
                        <h5 class="title">티볼리 1인신조차량 무사고차량 판매해요</h5>
                        <h6 class="price">8,500,000원</h6>

                        <div class="text-muted">
                            <h6 class="category">차량</h6>
                            <time datetime='2019-08-20T08:30:00Z'>2개월전</time>
                        </div>
                    </div>
                </div>
            </a>
        </li>
        <li class="list-products-item col-12 col-md-4 col-lg-3">
            <a href="detail.jsp">
                <div class="card">
                    <div class="card-img-top" style="background: url('https://dnvefa72aowie.cloudfront.net/origin/article/201910/56c82f70d5115996bbc4f01299353545c89f4e3551264a7f40baa6fb77f76d82.webp?q=95&s=1440x1440&t=inside') no-repeat center; background-size: cover; height: 240px"></div>
                    <div class="card-body">
                        <h5 class="title">티볼리 1인신조차량 무사고차량 판매해요</h5>
                        <h6 class="price">8,500,000원</h6>

                        <div class="text-muted">
                            <h6 class="category">차량</h6>
                            <time datetime='2019-08-20T08:30:00Z'>2개월전</time>
                        </div>
                    </div>
                </div>
            </a>
        </li>
        <li class="list-products-item col-12 col-md-4 col-lg-3">
            <a href="detail.jsp">
                <div class="card">
                    <div class="card-img-top" style="background: url('https://dnvefa72aowie.cloudfront.net/origin/article/201910/56c82f70d5115996bbc4f01299353545c89f4e3551264a7f40baa6fb77f76d82.webp?q=95&s=1440x1440&t=inside') no-repeat center; background-size: cover; height: 240px"></div>
                    <div class="card-body">
                        <h5 class="title">티볼리 1인신조차량 무사고차량 판매해요</h5>
                        <h6 class="price">8,500,000원</h6>

                        <div class="text-muted">
                            <h6 class="category">차량</h6>
                            <time datetime='2019-08-20T08:30:00Z'>2개월전</time>
                        </div>
                    </div>
                </div>
            </a>
        </li>
        <li class="list-products-item col-12 col-md-4 col-lg-3">
            <a href="detail.jsp">
                <div class="card">
                    <div class="card-img-top" style="background: url('https://dnvefa72aowie.cloudfront.net/origin/article/201910/56c82f70d5115996bbc4f01299353545c89f4e3551264a7f40baa6fb77f76d82.webp?q=95&s=1440x1440&t=inside') no-repeat center; background-size: cover; height: 240px"></div>
                    <div class="card-body">
                        <h5 class="title">티볼리 1인신조차량 무사고차량 판매해요</h5>
                        <h6 class="price">8,500,000원</h6>

                        <div class="text-muted">
                            <h6 class="category">차량</h6>
                            <time datetime='2019-08-20T08:30:00Z'>2개월전</time>
                        </div>
                    </div>
                </div>
            </a>
        </li>
        <li class="list-products-item col-12 col-md-4 col-lg-3">
            <a href="detail.jsp">
                <div class="card">
                    <div class="card-img-top" style="background: url('https://dnvefa72aowie.cloudfront.net/origin/article/201910/56c82f70d5115996bbc4f01299353545c89f4e3551264a7f40baa6fb77f76d82.webp?q=95&s=1440x1440&t=inside') no-repeat center; background-size: cover; height: 240px"></div>
                    <div class="card-body">
                        <h5 class="title">티볼리 1인신조차량 무사고차량 판매해요</h5>
                        <h6 class="price">8,500,000원</h6>

                        <div class="text-muted">
                            <h6 class="category">차량</h6>
                            <time datetime='2019-08-20T08:30:00Z'>2개월전</time>
                        </div>
                    </div>
                </div>
            </a>
        </li>
    </ul>
</div>

<div style="text-align:center;padding-top:20px">
   << < 1 2 3 4 5 > >>
</div>

<!-- // Contents 영역 -->
<jsp:include page="/inc/footer.jsp" />
