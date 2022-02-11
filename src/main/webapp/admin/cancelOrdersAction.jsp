<%@page import="project.Connect"%>
<%@page import="java.sql.*" %>
<%
String id=request.getParameter("id");
String email=request.getParameter("email");
String status="Cancel";
try{
 Connection con=Connect.getCon();
 Statement st=con.createStatement();
 st.executeUpdate("update cart set status='"+status+"' where pid='"+id+"' and email='"+email+"' and address is not NULL");
 response.sendRedirect("ordersRecieved.jsp?msg=valid");
}
catch(Exception e){
 System.out.println(e);	
  response.sendRedirect("ordersRecieved.jsp?msg=valid");;	
}
%>