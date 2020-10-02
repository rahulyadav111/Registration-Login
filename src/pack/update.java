package pack;

import java.sql.Connection;
import java.sql.PreparedStatement;

import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


 
public class update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try 
		{
			
		
			Connection conn=DbConnection.getConnection();
			
			String rollno=request.getParameter("roll");
			//String roll=Integer.parseInt("roll");
			String fname=request.getParameter("fname");
			String lname=request.getParameter("lname");
			String address=request.getParameter("add");
			String email=request.getParameter("email");
			String mobile=request.getParameter("mobile");
			
			String course=request.getParameter("course");
			String dob=request.getParameter("dob");
			
			request.setAttribute("user", fname+" "+lname+" ");
			
			PreparedStatement ps=conn.prepareStatement("update studentreg set rol=?,fname=?,lname=?add=?,email=?,mobile=?,course=?,dob=? where roll=?");
			
			BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
			
			System.out.println("enter new fname");
			br.readLine();
			
			System.out.println("enter new lname");
			br.readLine();
			
			System.out.println("enter new address");
			br.readLine();
			
			System.out.println("enter new email");
			
			
			
			ps.setString(1, rollno);
			ps.setString(2, fname);
			ps.setString(3, lname);
			ps.setString(4, address);
			ps.setString(5, email);
			ps.setString(6, mobile);
			ps.setString(7, course);
			ps.setString(8, dob);
			
			int i=ps.executeUpdate();
			{
				if(i>0)
				{
					request.getRequestDispatcher("updateTable.jsp").forward(request, response);
				}
				else
				{
					response.sendRedirect("errorUpdateTable.jsp");
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


