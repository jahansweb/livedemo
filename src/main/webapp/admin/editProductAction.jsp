<%@page import="project.Connect" %>
<%@page import= "java.sql.*" %>
<%
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String category=request.getParameter("category");
	String price=request.getParameter("price");
	String quantity=request.getParameter("quantity");
	String active=request.getParameter("active");

	try
	{
		Connection con=Connect.getCon();
		Statement st=con.createStatement();
		st.executeUpdate("update allmedicines set name='"+name+"',category='"+category+"',price='"+price+"',quantity='"+quantity+"'  where id='"+id+"'");
		if(quantity.equals("0"))
		{
			st.executeUpdate("delete from cart where id=='"+id+"' and address is NULL");
		}
		response.sendRedirect("allProductEditProduct.jsp?msg=done");
	}
	catch(Exception e)
	{
		System.out.println(e);
		response.sendRedirect("allProductEditProduct.jsp?msg=wrong");

	}
%>




