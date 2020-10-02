package pack;
import java.sql.*;
public class DbConnection
{
	private static Connection conn;
	
	static {
		try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
		
		}
		
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
	
	public static Connection getConnection()
	{
		return conn;
	}
}
