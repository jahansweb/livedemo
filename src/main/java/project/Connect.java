package project;
import java.sql.*;
import java.io.*;

public class Connect 
{

	public static Connection getCon() 
	{
		String JdbcURL = "jdbc:mysql://localhost:3306/greenpharmacy?" + "autoReconnect=true&useSSL=false";
	      String Username = "root";
	      String password = "root";
	      Connection con = null;
	      try {
	         con = DriverManager.getConnection(JdbcURL, Username, password);
	         System.out.println("Your JDBC URL is as follows:" + JdbcURL);
	      } 
	      catch (Exception exec)
	      {
	         exec.printStackTrace();
	      }
		return con;
	}
	

}
