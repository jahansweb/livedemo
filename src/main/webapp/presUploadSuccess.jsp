<%@page errorPage="error.jsp" %>
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

<style>
h3 {
	text-align: center;
	color: white;
}

body {
	background-image:url("https://i.pinimg.com/originals/e8/06/52/e80652af2c77e3a73858e16b2ffe5f9a.gif");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}


</style>
   
</head>
<body >
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
 
 
 <div style="position:fixed; top:550px; left:270px;">	<h3> You have succesfully uploaded the prescription. Our team will Contact you shortly.</h3></div>
 <div style="position:fixed;align:center; top:600px; left:700px;height:40px;width:135px;background:white;"><h2><a href="pharmacyHome.jsp">Continue</a></h2></div>
 
 
 
 </body>
 </html>