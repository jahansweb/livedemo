<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="project.Connect" %>
<%@page import="java.sql.*" %>
 <%@include file="finalUserheader.jsp" %>
 <%
 	String pid= request.getParameter("id");
 	int quantity=1;
 	int product_price=0;
 	int product_total=0;
 	int cart_total=0;
 	int z=0;
 	try{
 	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/greenpharmacy","root","root");
 	PreparedStatement ps=con.prepareStatement("select * from allmedicines where id='"+pid+"'");
 	ResultSet rs=ps.executeQuery();
 	while(rs.next()){
 	product_price=rs.getInt(4);
 	product_total=product_price;
 	}
 	PreparedStatement ps1=con.prepareStatement("select * from cart where pid='"+pid+"' and email='"+email+"' and address is NULL ");
 	ResultSet rs1=ps1.executeQuery();
 	while(rs1.next()){
 	cart_total=rs1.getInt(5);
 	cart_total=cart_total+product_total;
 	quantity=rs1.getInt(3);
 	quantity=quantity+1;
 	z=1;
 	}
 	if(z==1){
 	PreparedStatement ps2=con.prepareStatement("update cart set total='"+cart_total+"',Quantity='"+quantity+"' where pid='"+pid+"'and email='"+email+"' and address is NULL ");
 	ps2.executeUpdate();
 	response.sendRedirect("pharmacyHome.jsp?msg=exist");
 	}
 	if(z==0){
 	PreparedStatement ps3=con.prepareStatement("insert into cart(email,pid,Quantity,price,total) values(?,?,?,?,?)");
 	ps3.setString(1,email);
 	ps3.setString(2,pid);
 	ps3.setInt(3,quantity);
 	ps3.setFloat(4,product_price);
 	ps3.setInt(5,product_total);
 	ps3.executeUpdate();
 	response.sendRedirect("pharmacyHome.jsp?msg=added");
 	}
 	}
 	catch(Exception e){
 	System.out.println(e);
 	response.sendRedirect("pharmacyHome.jsp?msg=invalid");
 	}
 	%>
 


