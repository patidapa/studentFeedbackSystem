package teacher;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class Teacherremove {
	public static boolean validate(String email,String branch)
	{
	boolean status= false;
   
	try
    {  
		  
			Class.forName("com.mysql.jdbc.Driver");  
			  
		 
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/studentfeedback","root","root");  
			  
			java.sql.PreparedStatement stmt=con.prepareStatement("delete from teacher where  email=? and branch=?"); 
			
		    stmt.setString(1,email);
		    stmt.setString(2,branch);
			ResultSet rs=stmt.executeQuery();
			status=rs.next();
			
		System.out.println("status "+status);
		
    }
			catch(Exception e){}
	
			return status;
			
	}
	

}
