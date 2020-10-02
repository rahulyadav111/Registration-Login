package pack;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class registers extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try {
			Connection conn=DbConnection.getConnection();
			String username=request.getParameter("uname");
			String name=request.getParameter("name");
			String fatherName=request.getParameter("fname");
			String DOB=request.getParameter("dob");
			String password=request.getParameter("pass");
			String gender=request.getParameter("gender");
			
			request.setAttribute("users", "username");
			
			PreparedStatement ps=conn.prepareStatement("insert into reg12 values(?,?,?,?,?,?)");
			
			ps.setString(1, username);
			ps.setString(2, name);
			ps.setString(3, fatherName);
			ps.setString(4, DOB);
			ps.setString(5, password);
			ps.setString(6, gender);
			
			int i=ps.executeUpdate();
			{
				if(i>0)
				{
					request.getRequestDispatcher("welcome.jsp").forward(request, response);
				}
				else
				{
					response.sendRedirect("error.jsp");
				}
			
			}
		}
	
		catch (Exception e)
		{
			System.out.println(e);
			// TODO: handle exception
		}
		
		
		
	}

}
