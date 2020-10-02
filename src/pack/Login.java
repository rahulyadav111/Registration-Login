package pack;
import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try {
			Connection conn=DbConnection.getConnection();
			
			
			String uname=request.getParameter("username");
			String password=request.getParameter("password");
			
			request.setAttribute("users", uname);
			
			PreparedStatement ps=conn.prepareStatement("select * from reg12 where username=? and password=?");
			
			ps.setString(1, uname);
			ps.setString(2, password);
			
			ResultSet rs=ps.executeQuery();
			
			/*if(rs.next())
			{
				request.getRequestDispatcher("Operation.jsp");
			}
			else {
				request.getRequestDispatcher("error1.jsp");
				
			}
			*/
			
			if(rs.next())
			{
				request.getRequestDispatcher("Operation.jsp").forward(request, response);
			}
			else {
				response.sendRedirect("error1.jsp");
			}
			
			
		} catch (Exception e)
		{
			System.out.println(e);
			
		}
		
		
	}

}
