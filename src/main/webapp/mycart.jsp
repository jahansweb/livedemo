<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="project.Connect" %>
 <%@include file="header.jsp" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Cart</title>
<style>
h3
{
color: yellow;
text-align: center;
}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">My Cart <i
class='fas fa-cart-arrow-down'></i></div>


<% 

String msg=request.getParameter("msg");
if("notpossible".equals(msg)){%>
<h3 class="alert">There is only one Quantity! So click on remove!</h3>
<%}
if("inc".equals(msg))
{
%>
<center><h3 class="alert">Quantity Increased Successfully!</h3></center>
<%} %>
<%
if("dec".equals(msg))
{
%>
<center><h3 class="alert">Quantity Decreased Successfully!</h3></center>
<%
} %>
<%  
if("removed".equals(msg))
{
%>
<center><h3 class="alert">Product Successfully Removed!</h3></center>
<%} %>
<table>
<thead>
<%
int total=0;
int sno=0;
try{
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/greenpharmacy?" + "autoReconnect=true&useSSL=false","root","root");
PreparedStatement ps=con.prepareStatement("select sum(total) from cart where email='"+email+"' and address is NULL");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
total=rs.getInt(1);
}
%>

<th scope="col" style="background-color: yellow; color:black;">Total:  <i class="fa fa-inr"></i><%out.println(total);%></th>
<%if(total>0)
{ %><th scope="col"><a href="addressPaymentForOrder.jsp">Proceed to order</a></th> <% } %>



</thead>
<thead>
<tr>
<th scope="col">S.No</th>

<th scope="col">Product Name</th>
<th scope="col">Category</th>
<th scope="col"><i class="fa fa-inr"></i>price</th>
<th scope="col">Quantity</th>
<th scope="col">Sub Total</th>
<th scope="col">Remove <i class='fas fa-trash-alt'></i></th>
</tr>
</thead><tbody>
<%
PreparedStatement ps1=con.prepareStatement("select * from allmedicines inner join cart on allmedicines.id=cart.pid and cart.email='"+email+"' and cart.address is NULL");
ResultSet rs1=ps1.executeQuery();
while(rs1.next())
{
	
%>
<tr>
<%sno=sno+1;%>
<td><%out.println(sno);%></td>
<td><%=rs1.getString(2)%></td>
<td><%=rs1.getString(3)%></td>
<td><i class="fa fa-inr"></i><%=rs1.getDouble(4)%></td>
<td><a href="incDecQuantity.jsp?id=<%=rs1.getString(1)%>&Quantity=inc">+ </a><%=rs1.getString(9)%><a href="incDecQuantity.jsp?id=<%=rs1.getString(1)%>&Quantity=dec"> -</a></td>
<td><i class="fa fa-inr"></i><%=rs1.getDouble(11) %></td>
<td><a href="removefromcart.jsp?id=<%=rs1.getString(1)%>">Remove<i class='fas fa-trash-alt'></i></a></td>
</tr>
<%
}
}
catch(Exception e){
System.out.println(e);
}
%>
</tbody>
</table>
<br>
<br>
<br>
</body>
</html>