
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@page errorPage="error.jsp" %>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous">
      
<title>Insert title here</title>
</head>
<body>
<header>
 <%String email=session.getAttribute("email").toString();%>
   <nav class="navbar navbar-expand-lg bg-dark navigation-wrap  ">
     <div class="container">
     	<h3 style="color: white">Green Pharmacy</h3>
       <a class="navbar-brand" href="#"><img src="Imgs/navlogo.png" width=100px height=80px></a>
       <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText"
         aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
         <i class="fas fa-stream navbar-toggler-icon"></i>
       </button>
      
            <a style="color: white" href="userMain.jsp">Home <i class="fas fa-home"></i></a>
            <a style="color: white" href="mycart.jsp">My Cart<i class='fas fa-cart-arrow-down'></i></a>
            <a style="color: white" href="myOrders.jsp">My Orders <i class='fab fa-elementor'></i></a>
            <a style="color: white" href="changeDetails.jsp">Change Details <i class="fa fa-edit"></i></a>
            <a style="color: white" href="messageUs.jsp">Message Us <i class='fas fa-comment-alt'></i></a>
            <a style="color: white" href="">About <i class="fa fa-address-book"></i></a>
            <a style="color: white" href="logout.jsp">Logout <i class='fas fa-share-square'></i></a>
            <a style="color: white" href=""><%out.println(email);%> <i class='fas fa-user-alt'></i></a>
     </div>
   </nav>
 </header>
 
 <div><a style= "font-size:25px" href="pharmacyHome.jsp">Go Back</a></div>
 
<table align="center" border="0px" cellspacing="8px" cellpadding="15px" ">
		<tr>
	<%


int z=0;
int cnt=0;
	try
	{
		
		String search=request.getParameter("search");
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn =DriverManager.getConnection("jdbc:mysql://localhost:3306/greenpharmacy","root","root");
		Statement st=cn.createStatement();
		ResultSet rs=st.executeQuery("select id,name,category,price,imageFileName from allmedicines where name like '%"+search+"%' or  category like '%"+search+"%' and quantity > 0");
		while(rs.next())
		{
			z=1;
			String n,c,img,i,p;
			
			i=rs.getString("id").trim();
			n=rs.getString("name").trim();
			c=rs.getString("category").trim();
			p=rs.getString("price").trim();
			img=rs.getString("imageFileName").trim();
			if(cnt==4)
			{
				out.print("</tr><tr>");
				cnt=0;
			}
		
		%> 
		<td align="center"><img src="allImages/<%=img%>" height="150px" width="150px"><br>
			
			<h5><%=n%></h5>
			<h6 style="color:red">Price: Rs.<%=p %></h6>
			<h6 style="color:green">Category:<%=c %></h6>	
			<a  href="addtocartAction.jsp?id=<%=i%>">Add to Cart</a>        
		</td>	
		<%
		}}
	catch (Exception e) {
        out.println(e);
    }

		%>
          
		
		</tr>
		
</table>

		<%
			if(z==0)
			{%>
				<h1 style="color: red; text-align:center;"> Nothing to Show </h1>
			<%} %>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.min.js"
 integrity="sha384-PsUw7Xwds7x08Ew3exXhqzbhuEYmA2xnwc8BuD6SEr+UmEHlX8/MCltYEodzWA4u"
 crossorigin="anonymous"></script>
		
</body>
</html>