package repository;

/*
 * 데이터베이스 연결 / 닫기 프로세스만 처리
 */

import java.sql.*;

public class MysqlConnection {

	private Connection conn = null;
	
	public Connection getConnection () throws Exception {
		String jdbcUrl = "jdbc:mysql://ideatags.io:3306/daanguen_mvc_01?user=web06&password=12345";
		return getConnection(jdbcUrl);
	}
	
	public Connection getConnection(String jdbcUrl) throws Exception {
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl);
		return conn;
	}
	
	public void closeConnection() {
		
	}
	
}
