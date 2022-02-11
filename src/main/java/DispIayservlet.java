

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Displayservlet
 */
@WebServlet("/Displayservlet")
public class DispIayservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DispIayservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		System.out.println("In do post method of Display Image servlet.");
		String imageId=request.getParameter("id");
		int id=Integer.parseInt(imageId);
		Connection connection=null;
		int imgId=0;
		String imgFilename=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/greenpharmacy","root","root");
			Statement stmt;
			String query="select  id,imageFileName from allmedicines";
			stmt=connection.createStatement();
			ResultSet rs=stmt.executeQuery(query);
			while(rs.next()) {
				if(rs.getInt("id")==id) {
					imgId=rs.getInt("imageId");
					imgFilename=rs.getString("imagefileName");
				}
			}
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		RequestDispatcher rd;
		request.setAttribute("id",String.valueOf(imgId));
		request.setAttribute("img",imgFilename);
		rd=request.getRequestDispatcher("pharmacyHome.jsp");
		rd.forward(request, response);
	}

}
