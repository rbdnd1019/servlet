package utils;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

public class DBConn {
	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(
				"jdbc:oracle:thin:@np.woongsun.com:1521/xe", "hgw", "1234");
		
//		HikariConfig hikariConfig = new HikariConfig();
//		hikariConfig.setDriverClassName("oracle.jdbc.driver.OracleDriver");
//		hikariConfig.setJdbcUrl("jdbc:oracle:thin:@np.woongsun.com:1521/xe");
//		hikariConfig.setUsername("ODOUNG");
//		hikariConfig.setPassword("1234");
//
////		hikariConfig.setJdbcUrl("jdbc:oracle:thin:@localhost:1521/xe");
////		hikariConfig.setUsername("hr");
////		hikariConfig.setPassword("1234");
//		
//		@SuppressWarnings("resource")
//		Connection conn = new HikariDataSource(hikariConfig).getConnection();
//		dataSource.close();
		return conn;
	}
	public static void main(String[] args) throws Exception{
		System.out.println(getConnection());
//		PreparedStatement pstmt = getConnection().prepareStatement("");
		CallableStatement cstmt = getConnection().prepareCall("{call proc_test(?)}");
		cstmt.setString(1, "javamail");
		cstmt.executeUpdate();
	}
}
