package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MysqlConnection {
	private static final String url = "jdbc:mysql://localhost3306/Agencia_Crud";
	private static final String user = "root";
	private static final String password = "password";

	public static Connection createConnection() {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("createConnection Driver Found");
		} catch (ClassNotFoundException e) {
			// TODO: handle exception
			System.out.println("Driver not found" + e.getMessage());
		}

		try {
			Connection conn = DriverManager.getConnection(url, user, password);
			System.out.println("Connected to Database");
			return conn;
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Not Connected to Database" + e.getMessage());
			return null;
		}
	}
}
