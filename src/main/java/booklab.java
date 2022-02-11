
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class booklab
 */
public class booklab extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public booklab() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		  response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();  
	        String name,mobileNumber,pinCode,pack;  
	        String n = request.getParameter("name");
	        String Number =request.getParameter("mobileNumber");
	        Integer pin = Integer.parseInt(request.getParameter("pin"));
	        String p =  request.getParameter("pack");  
	    
	    try
		{
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/greenpharmacy","root","root");
			PreparedStatement ps = con.prepareStatement("insert into booklab values(?,?,?,?)");
			ps.setString(1,n);
			ps.setString(2,Number);
			ps.setInt(3,pin);
			ps.setString(4, p);
			int rs=ps.executeUpdate();

			if(rs>0)
			{
				RequestDispatcher rd=request.getRequestDispatcher("payment.jsp");
				rd.forward(request,response);
				
			}
			else
			{
				out.println("<h1>Sorry username or password error<h2>");
				

			}
		}
		catch(Exception k)
		{
			k.printStackTrace();
		}

	
}


	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doGet("request,response");
    }

	private void doGet(String string) {
		// TODO Auto-generated method stub
		
	}
	}


