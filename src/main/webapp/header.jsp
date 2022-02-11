<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="greenCSS/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<!-- bootstrap file mentioned CDN -->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous">
      

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.min.js"
 integrity="sha384-PsUw7Xwds7x08Ew3exXhqzbhuEYmA2xnwc8BuD6SEr+UmEHlX8/MCltYEodzWA4u"
 crossorigin="anonymous"></script>

</head>
    <!--Header-->
    <br>
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
           <!--table-->