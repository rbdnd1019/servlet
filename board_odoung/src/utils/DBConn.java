package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

public class DBConn {
	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(
				"jdbc:oracle:thin:@np.woongsun.com:1521/xe", "ODOUNG", "1234");
		return conn;
	}
	public static void main(String[] args) throws Exception{
		System.out.println(getConnection());
	}
}
