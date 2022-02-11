<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import= "java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert an Image into MySQL Database</title>
    </head>
    <body>
         <%
Connection conn=null;
PreparedStatement ps = null;
ResultSet rs=null;
String url="jdbc:mysql://localhost:3306/greenpharmacy?" + "autoReconnect=true&useSSL=false";
FileInputStream fis=null;
String id =request.getParameter("id");
String name = request.getParameter("name");
String category = request.getParameter("category");
double price = Double.parseDouble( request.getParameter("price"));
Integer quantity =Integer.parseInt( request.getParameter("quantity"));
String active = request.getParameter("active");
String myloc=request.getParameter("image");

try{
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection(url, "root", "root");
File image= new File(myloc);
ps = conn.prepareStatement("insert into medicines(id,name,category,price,quantity,active,image)"+" values(?,?,?,?,?,?,?)");
ps.setString(1,id);
ps.setString(2,name);
ps.setString(3,category);
ps.setDouble(4,price);
ps.setInt(5,quantity);
ps.setString(6,active);
fis=new FileInputStream(image);
ps.setBinaryStream(7, (InputStream) fis, (int) (image.length()));
int count = ps.executeUpdate();
if(count>0)
{

    response.sendRedirect("addNewProduct.jsp?msg=done");
}
else
{
    response.sendRedirect("addNewProduct.jsp?msg=wrong");
}
}
catch(Exception ex)
{
ex.printStackTrace();
}
finally{
try{
if(rs!=null){
rs.close();
rs= null;
}
if(ps !=null)
{
ps.close();
ps=null;
}
if(conn!=null)
{
conn.close();
conn=null;
}
}
catch(Exception e)
{
e.printStackTrace();
}
}
%>
    </body>
</html>