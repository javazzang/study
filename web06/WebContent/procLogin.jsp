<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	// 1. Class.forName() 드라이버 로딩
	Class.forName("com.mysql.cj.jdbc.Driver");

	// 2. DB연결
	Connection conn = DriverManager.getConnection(
		"jdbc:mysql://www.javac.shop:3306/web06_db?user=web06&password=12345"				
	);
	
	// 3. SQL 문 조합
	String user_name = request.getParameter("user_name");
	String user_pwd = request.getParameter("user_pwd");
	String sql_format = "SELECT * FROM web06_user WHERE user_name = '%s'";
	String sql = String.format(sql_format, user_name);
	
	// 4. 쿼리 실행
	Statement stmt = conn.createStatement();
	ResultSet rows = stmt.executeQuery(sql);
	int row_count = 0;
	
	if(rows.next()) {	//-- row가 하나라도 있을때
		
		do {
			String db_pwd = rows.getString("user_pwd");
			if(db_pwd.equals(user_pwd)) { //-- 비밀번호가 동일할때
				%>
				<script type="text/javascript">
					alert("로그인 하였습니다.");
					location.href="http://daum.net";
				</script>
				<%
			} else {  //-- 비밀번호가 틀릴때
				%>
				<script type="text/javascript">
					alert("비밀번호가 틀렸습니다.");
					history.back();
				</script>
				<%				
			}
			
			
		} while (rows.next());
		
	} else {  //-- row가 없을경우
	%>
		<script type="text/javascript">
			alert("'<%=user_name%>' 이라는 회원은 없습니다.");
			history.back();
		</script>
	
	<%
	}
	
	stmt.close();
	
	// 5. DB 커넥션을 끊어라
	conn.close();
	
%>

</body>
</html>