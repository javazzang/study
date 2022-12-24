package jdbcexam;

import java.sql.*;
import java.sql.DriverManager;

public class JDBCConnect {

	
	public Connection getConnection() throws Exception {
		
		//Class.forName("com.mysql.jdbc.Driver");
		//Class.forName("oracle.jdbc.driver.OracleDriver");		
		Class.forName("com.mysql.cj.jdbc.Driver");		
		Connection conn = DriverManager.getConnection(
					"jdbc:mysql://www.javac.shop:3306/mysql?user=root&password=12345"  // connection String
		);
		
		//--
		// jdbc:mysql://데이터베이스주소:포트/접근할데이터베이스명?user=아이디&password=비밀번호
		// jdbc:oracle:thin://
		// jdbc:mssql://
		
		
		return conn;
	}
}
