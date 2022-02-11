<%@page import="java.sql.*" %>

<%
String email=session.getAttribute("email").toString();
String id=request.getParameter("id");
String incDec=request.getParameter("Quantity");
int price=0;
int total=0;
int quantity=0;
int final_total=0;
try{
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/greenpharmacy?" + "autoReconnect=true&useSSL=false","root","root");
	PreparedStatement ps=con.prepareStatement("select * from cart where email='"+email+"' and pid='"+id+"' and address is NULL");
	ResultSet rs=ps.executeQuery();
	while(rs.next()){
		price=rs.getInt(4);
		total=rs.getInt(5);
		quantity=rs.getInt(3);
		}
	if(quantity==1 && incDec.equals("dec"))
		response.sendRedirect("mycart.jsp?msg=notpossible");
	else if(quantity !=1 && incDec.equals("dec")){
		total=total-price;
		quantity=quantity-1;
		PreparedStatement ps1=con.prepareStatement("update cart set total='"+total+"',Quantity='"+quantity+"' where email='"+email+"' and pid='"+id+"'and address is NULL ");
	     ps1.executeUpdate(); 
	    response.sendRedirect("mycart.jsp?msg=dec");
	    }
	else
	{
		total=total+price;                                                                                                  
		quantity=quantity+1;
		PreparedStatement ps2=con.prepareStatement("update cart set total='"+total+"',Quantity='"+quantity+"' where email='"+email+"' and pid='"+id+"'and address is NULL ");
	     ps2.executeUpdate(); 
	    response.sendRedirect("mycart.jsp?msg=inc");
		
	}
}

		catch(Exception e){
			System.out.println(e);
		}
		

%>