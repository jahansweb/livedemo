<%@page import="project.Connect" %>
<%@page import= "java.sql.*" %>
<%@page import= "java.io.*" %>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body background-image="../Imgs/editbg.jpg">
<div style="color: white; text-align: center; font-size: 30px;">Tests <i class='fab fa-elementor'></i></div>
<%String msg=request.getParameter("msg");

if("done".equals(msg))
{
%>
<h3 class="alert">Product Successfully Updated!</h3>
<%} %>
<% 
if("wrong".equals("msg"))
{
	%>
}
<h3 class="alert">Some thing went wrong! Try again!</h3>
<%} %>
<table>
        <thead>
          <tr>
            <th scope="col">SNo</th>
          
            <th scope="col">Name</th>
            <th scope="col"> Mobile Number</th>
            <th scope="col">PinCode</th>
            <th scope="col">Test</th>
            
          </tr>
        </thead>
        <tbody>
       	<%
       
    	int sno=0;
       	try{
       			Connection con=Connect.getCon();
       			Statement st=con.createStatement();
       			ResultSet rs=st.executeQuery("select * from book");
       			while(rs.next())
       			{				
       				
       	%>
          <tr>
          	<%sno=sno+1; %>
          	<td><%out.println(sno) ;%>
            
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %> </td>
            <td><%=rs.getString(4) %></td>
            
         
          </tr>
         <%
         }
         }
         catch (Exception e)
         {
        	 System.out.println(e);
         }%>
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>