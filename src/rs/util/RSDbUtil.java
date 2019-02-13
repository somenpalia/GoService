package rs.util;

import java.sql.SQLException;
import java.sql.Connection;
import java.sql.DriverManager;


public class RSDbUtil{
	
	public static String url = "jdbc:oracle:thin:@localhost:1521:XE";
	//static String url = "jdbc:mysql://localhost:3306/sih";
	public static String user = "system";	
	public static String password = "root";
	
	static{
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver loaded");
		}catch(Exception e){
			System.out.println("Class not found!");
			e.printStackTrace();

		}
	}//static
	
	public static Connection getConnection() throws SQLException{
		return DriverManager.getConnection(url,user,password);
	}//getConnection
	
	public static void closeConnection(Connection con) {
	  if(con!=null){
		  try{
				  con.close();
		  }catch(SQLException e){
			  e.printStackTrace();
		  }
	  }
	}
	
	
	
}//class