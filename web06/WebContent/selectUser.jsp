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
	// 1. mysql 드라이버 로딩
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = null;
	
	// 2. connect
	try {
		
		out.println("1.연결시도</br>");
		
		conn = DriverManager.getConnection(
				"jdbc:mysql://www.javac.shop:3306/web06_db?user=web06&password=12345"
				// Connection String(연결문자열)
		);
		
		out.println("2.로직실행</br>");
		
		Statement stmt = conn.createStatement();
		String sql = "SELECT * FROM web06_user";
		
		//-- 결과셑 (ResultSet) : 데이터가 엑셀형식으로 메모리에 로딩
		ResultSet rs = stmt.executeQuery(sql);
		while (rs.next()) {
			out.println(rs.getString(1) + " ");          		//-- 인텍스로 가져오는법
			out.println(rs.getString("user_name") + " ");		//-- 컬럼명으로 가져오는법
			out.println(rs.getString(3) + " ");
			out.println(rs.getString("insertDate") + " ");
			out.println("--------------------------------------- <br/>");
		}

		//-- 수정해보기
		sql = "UPDATE web06_user SET user_name='angel' WHERE user_no = 2";
		//-- 데이터 수정실행
		int affected_rows = stmt.executeUpdate(sql);
		out.println("<br/> update에 영향받은 row 수 : " + affected_rows);
		
		//-- 데이터 INSERT
		sql = "INSERT INTO web06_user (user_no,user_name,user_pwd) ";
		sql += " values (5,'test5','12345')";
		
		affected_rows = stmt.executeUpdate(sql);
		out.println("<br/> INSERT된 row 수 : " + affected_rows);		
		
		//-- 데이터 DELETE
		sql = "DELETE FROM web06_user WHERE user_name = 'angel'";
		
		affected_rows = stmt.executeUpdate(sql);
		out.println("<br/> DELETE된 row 수 : " + affected_rows);				
		
		stmt.close();
		
	} catch(Exception ex) {
		out.println("예외가 발생하였습니다.");
		out.println(ex.getMessage());
		out.println(ex.getStackTrace().toString());
	} finally {
		out.println("<br/>3.연결해제<br/>");		
		if(conn != null) conn.close();
		
	}
%>
</body>
</html>