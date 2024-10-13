package Database;


import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;
import java.io.FileReader;
import java.io.IOException;
import java.util.Properties;

public class Util 
{
	public static Connection getConnection()throws SQLException
	{
		/*Properties pr=new Properties();
		try(FileReader fin=new FileReader("Db.properties"))
		{
		pr.load(fin);
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		String driver=pr.getProperty("driverClassName");
		String url=pr.getProperty("url");
		String un=pr.getProperty("username");
		String pw=pr.getProperty("password");*/
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
		}
		catch(ClassNotFoundException ex1)
		{
			ex1.printStackTrace();
		}
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studentfeedback","root","root");
		return con;
		}
	}

	


