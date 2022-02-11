import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import project.Connect;

@WebServlet(name = "uploadImage", urlPatterns = {"/uploadImage"})
@MultipartConfig(maxFileSize = 16177216)//1.5mb
public class uploadImage extends HttpServlet {

    PrintWriter out;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        out = response.getWriter();
        int result = 0;
        Integer id =Integer.parseInt( request.getParameter("id"));
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        double price = Double.parseDouble( request.getParameter("price"));
        Integer quantity =Integer.parseInt( request.getParameter("quantity"));
        String active = request.getParameter("active");
        Part part = request.getPart("file");
        if (part != null) {
            try {
                Connection con = Connect.getCon();
                PreparedStatement ps = con.prepareStatement("insert into medicines(id,name,category,price,quantity,active,image) values(?,?,?,?,?,?,?)");
                InputStream is = part.getInputStream();
                ps.setInt(1,id);
                ps.setString(2,name);
                ps.setString(3,category);
                ps.setDouble(4,price);
                ps.setInt(5,quantity);
                ps.setString(6,active);
                ps.setBlob(7, is);
                result = ps.executeUpdate();
                if (result > 0) {
                    response.sendRedirect("admin/productAddedSuccess.jsp");
                } else {
                	response.sendRedirect("../addNewProduct.jsp?msg=wrong");
                }
            } catch (Exception e) {
                out.println(e);
            }
        }
    }

}