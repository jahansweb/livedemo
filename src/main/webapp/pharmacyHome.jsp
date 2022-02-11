<%@page import="project.Connect" %>
<%@page import="java.io.InputStream"%>
<%@page import="javax.servlet.http.HttpServletResponse" %>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="project.Connect" %>
<%@page import="project.ProductDao" %>
<%@page import="java.util.*"%>
<%@page import="project.Product"%>


<%
String msg=request.getParameter("msg");
if("added".equals(msg))
{
	%>
<center><h3 class= "alert">productAdded Successfully</h3>	</center>	
<%} %>
<%
if("exist".equals(msg))
		{
	%>
	<center>	<h3 class= "alert">product Exists in your cart. Quantity Increased</h3>	</center>	
		<%} %>
	<% 
if("invalid".equals(msg))
		{
	%>		
<center>	<h3 class= "alert">Something went Wromg. Try Again!!</h3></center>	
<%} %>

<!DOCTYPE html>
<html lang="en">
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <meta http-equiv="X-UA-Compatible" content="ie=edge">
 <title>PharmacyHome</title>
 <!-- bootstrap file mentioned CDN -->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous">

 <!-- CSS file writtem-->

 <link rel="stylesheet" href="javas.js">
 

</head>
<body bgcolor="#f4rhg">
<!-- header design -->
 <header>
 <%String email=session.getAttribute("email").toString();%>
   <nav class="navbar navbar-expand-lg bg-dark navigation-wrap  ">
     <div class="container">
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
 <br>

<!--SearchBar-->

<div class="container" style ="position : absolute; left : 100px; width: 600px ">
  <div class="row mt-5">
  	<form action="searchHome.jsp" method="post">
          <div class="col-md-6 mx-auto">
              <div class="input-group">
              	
                  <input class="form-control border-end-0 border" type="search" value="Search Medicines" name="search">
                  <span class="input-group-append">
                      <button class="btn btn-outline-secondary bg-white border-start-0 border-bottom-0 border ms-n5" type="button" onclick="searchHome.jsp">
                          <i class="fa fa-search"></i>
                      </button>
                  </span>
              	 </form>
              </div>
                
          </div>
      </div>
      <br>


      <!--Offers-->


      <div class="offers-corousel" style ="position : absolute; left : 10px; width: 850px ;height:400px ">
        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="Imgs/pHslide1.png" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="Imgs/pHslide2.png" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="Imgs/pHslide3.png" class="d-block w-100" alt="...">
    </div>
  </div>

  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</div>
      </div>

<!--splofferpic-->
<div class="sploffer" style ="position : absolute; left : 1000px; width:300px; height:250px; top:260px ">
 <img src="Imgs/pHsploffers.png" alt="">
</div>
<!--uPLOAD sECTION-->
<div class="upload" style ="position : absolute; left : 1000px; width:400px; height:300px; top:370px " >
 <h4 style="color: black">Place your order via prescription</h4>
 <button type="button" class="btn btn-primary">
<form action="uploadPrescription" method="post" enctype="multipart/form-data">
   
   <input type="file" name="image">
   <input type="submit" value="upload">
</form>
</div>
</button>
</div>
<!--Products-->

<div class="container" style="position: absolute; top:600px;left:100px">
		<div class="card-header my-3">All Products</div></div>
		
		<table align="center" border="0px" cellspacing="8px" cellpadding="15px" style="top:600px;position:relative">
		<tr>
	<%
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn =DriverManager.getConnection("jdbc:mysql://localhost:3306/greenpharmacy","root","root");
		Statement st=cn.createStatement();
		ResultSet rs=st.executeQuery("select id,name,category,price,imageFileName from allmedicines");
		int cnt=0;
		while(rs.next())
		{
		
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
			cnt++;
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





<!--BuyBrand section-->
<div class="container"style="position : absolute;width: 700px; height:300px; top:2300px;left:80px ">
 <img src="Imgs/pHbuybrand1.png">

</div>

<div class="container"style="position : absolute;width: 100px; height:200px; top:2300px;left:600px ">
 <img src="Imgs/navlogo.png"style="width: 200px; height:200px">

</div>


<div class="container"style="position : absolute;width: 700px; height:300px; top:2300px;left:900px ">
 <img src="Imgs/pHbuybrand2.png">

</div>
</div>
<!--script-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.min.js"
integrity="sha384-PsUw7Xwds7x08Ew3exXhqzbhuEYmA2xnwc8BuD6SEr+UmEHlX8/MCltYEodzWA4u"
crossorigin="anonymous"></script>

</body>
</html>
