<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="project.Connect"%>
<%@page import="java.sql.*"%>
<%
		String name=request.getParameter("name");
		String mobileNumber=request.getParameter("mobileNumber");  
		String pin=request.getParameter("pin"); 
		String pack=request.getParameter("pack"); 
		
		try{  
			//Class.forName("com.mysql.jdbc.Driver");  
			java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/greenpharmacy?" + "autoReconnect=true&useSSL=false","root","root"); 
		
			PreparedStatement ps=con.prepareStatement(  
			"insert into book values(?,?,?,?)");  
			  
			ps.setString(1,name);  
			 
			ps.setString(2,mobileNumber);  
			ps.setString(3,pin);  
			ps.setString(4,pack);  
			  
		    ps.executeUpdate();
		    response.sendRedirect("payment.jsp");
		}
		catch(Exception e)
		{
			System.out.println(e);
			
			
		}
%>