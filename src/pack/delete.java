package pack;
import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


 
public class delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
	
		
		try 
		{
			
		
			Connection conn=DbConnection.getConnection();
			
			String roll=request.getParameter("roll");
			
			
			PreparedStatement ps=conn.prepareStatement("delete from studentreg where roll=?");
			
			ps.setString(1, roll);
			
			int i=ps.executeUpdate();
			{
				if(i>0)
				{
					request.getRequestDispatcher("deleteTable.jsp").forward(request, response);
				}
				else
				{
					response.sendRedirect("errorDeleteTable.jsp");
				}
			}
		
	}
		catch (Exception e)
		{
			System.out.println(e);
		}
			// TODO: handle exception
		}
		
		
	}


