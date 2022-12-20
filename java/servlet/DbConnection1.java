package servlet;

import java.sql.*;

public class DbConnection1 {

	public static Connection getConnection() 
	{
	Connection con = null;
	try 
	{
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/yearbook", "root", "Y@v20215100");
	} 
	catch (Exception ex) 
	{
	ex.printStackTrace();
	}
	return con;
	}
	
}
