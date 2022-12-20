package servlet;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {
	{

	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/yearbook","root","Y@v20215100");
	String sql="";
	}
	catch(Exception e)
	{
	System.out.println(e);
	}
}
}

