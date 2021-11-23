package project;


import java.sql.Connection;
import java.sql.DriverManager;

public class    ConnectionProvider{
	
	private static String url = "jdbc:mysql://localhost:3306/onlinemedicineorderingsystem";
	private static String userName = "root";
	private static String password = "1999";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, userName, password);
			
		}catch (Exception e) {
			System.out.println("Not Success !");
		}
		return con;
		
	}

}
