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
	String sql_format = "INSERT INTO web06_user (user_name, user_pwd) "
		+ " VALUES ('%s','%s')";
	
	String sql = String.format(sql_format, user_name, user_pwd);
	
	// 4. 쿼리 실행
	Statement stmt = conn.createStatement();
	int affected_rows = stmt.executeUpdate(sql);
	stmt.close();
	
	// 5. DB 커넥션을 끊어라
	conn.close();
	
%>

<script type="text/javascript">
	alert('저장이 완료되었습니다.');
	location.href = 'registForm.jsp';
</script>

</body>
</html>