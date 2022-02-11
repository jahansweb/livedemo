
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class mypayment
 */
@WebServlet("/mypayment")
public class mypayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public mypayment() {
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
	    String cardname=request.getParameter("cardname");  
		String cardnum=request.getParameter("cardnumber");
	    String exmon=request.getParameter("expmonth");  
	    String exyr=request.getParameter("expyear");  
		String cv=request.getParameter("cvv");  
		int z=0;
	    try
		{
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/greenpharmacy","root","root");
			PreparedStatement ps = con.prepareStatement("select * from payment where   CardNumber=?  and Cvv=?");
			ps.setString(1,cardnum);
			ps.setString(2,cv);
			
		
			ResultSet rs=ps.executeQuery();
			
			
			while(rs.next())
			{
				z=1;
				RequestDispatcher rd=request.getRequestDispatcher("pay1.jsp");
				rd.forward(request,response);
				
			}
			if(z==0)
			{
				

				RequestDispatcher rd=request.getRequestDispatcher("payfail.jsp");
				rd.forward(request,response);
				

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
		doGet(request, response);
	}

} 
