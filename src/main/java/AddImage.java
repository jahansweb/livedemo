

import java.io.FileOutputStream;
import java.sql.*;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class AddImage
 */
@MultipartConfig
@WebServlet("/AddImage")
public class AddImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddImage() {
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
		Integer id=Integer.parseInt(request.getParameter("id"));
		String name=request.getParameter("name");
		String category=request.getParameter("category");
		Double price=Double.parseDouble(request.getParameter("price"));
		Integer quantity=Integer.parseInt(request.getParameter("quantity"));
		System.out.println("In do method of Add Image servlet.");
		Part file=request.getPart("image");
		String imageFileName=file.getSubmittedFileName();
		System.out.println("Selected Image file Name : "+imageFileName);
		String uploadPath="D:/myFinalProject/greenpharmacyproject/src/main/webapp/allImages/"+imageFileName;
		System.out.println("Upload Path : "+uploadPath);
		try
		{
		FileOutputStream fos=new FileOutputStream(uploadPath);
		InputStream is=file.getInputStream();
		byte[] data=new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		Connection connection=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/greenpharmacy","root","root");
			PreparedStatement stmt;
			String query="insert into allmedicines(id,name,category,price,quantity,imageFileName) values(?,?,?,?,?,?)";
			stmt=connection.prepareStatement(query);
			stmt.setInt(1, id);
			stmt.setString(2, name);
			stmt.setString(3, category);
			stmt.setDouble(4, price);
			stmt.setInt(5, quantity);
			stmt.setString(6, imageFileName);
			int row=stmt.executeUpdate();
			if(row>0) {
				response.sendRedirect("admin/success.jsp");
			}
			else {
				System.out.println("Failed to upload image.");
			}
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}

}
