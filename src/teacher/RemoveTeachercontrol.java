package teacher;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RemoveTeachercontrol
 */
@WebServlet("/Removeteacher")
public class RemoveTeachercontrol extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemoveTeachercontrol() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	// TODO Auto-generated method stub
		try{
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			out.println("teacher");
			Teacherremove tr=new Teacherremove();
			String email=request.getParameter("email");
			String branch=request.getParameter("branch");
			out.println("teacher");
			boolean isSuccess=false;
			isSuccess=tr.validate(email, branch);
			if (isSuccess) {
				out.println("Successfully removed");
				RequestDispatcher rd = request
						.getRequestDispatcher("removeteacher.jsp");
				rd.forward(request, response);
			} else {
				out.println("Error");
				RequestDispatcher rd = request
						.getRequestDispatcher("removeteacher.jsp");
				rd.forward(request, response);
			}
		}
			catch(Exception e){}
	
	}
		

		
		
}
	
	