<%@page import="java.sql.*" %>
<%@page import="project.Connect" %>

<%
String email=session.getAttribute("email").toString();
String product_id=request.getParameter("id");
try{

	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/greenpharmacy?"+"autoReconnect=true&useSSL=false","root","root");
	PreparedStatement ps=con.prepareStatement("delete from cart where email='"+email+"' and pid='"+product_id+"' and address is NULL");
	ps.executeUpdate();
	response.sendRedirect("mycart.jsp?msg=removed");
	
}
catch(Exception e){
	System.out.println(e);
}
%>