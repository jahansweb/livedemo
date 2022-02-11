<%String email=session.getAttribute("email").toString(); %>
<!DOCTYPE html>
<html>
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

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<header>
   <nav class="navbar navbar-expand-md bg-dark navigation-wrap  ">
     <div class="container">
       <a class="navbar-brand" href="#"><img src="Imgs/navlogo.png" width=100px height=80px></a>
       <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText"
         aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
         <i class="fas fa-stream navbar-toggler-icon"></i>
       </button>
       <div class="collapse navbar-collapse" id="navbarText">
         <ul class="navbar-nav ms-auto mb-2 mb-lg-0" >
           <li class="nav-item">
             <a style="color:White" class="nav-link" href="index.html">Home</a>
           </li>
            <li class="nav-item">
             <a style="color:White" class="nav-link" href="mycart.jsp">My Cart</a>
           </li>
           <li class="nav-item">
             <a style="color:White" class="nav-link" href="doctorHome.html">My Orders</a>
           </li>
           <li class="nav-item">
             <a style="color:White" class="nav-link" href="pharmacyHome.html">Change Details</a>
           </li>
           <li class="nav-item">
             <a style="color:White" class="nav-link" href="messageUs.jsp"> Message Us</a>
           </li>
           
           <li class="nav-item">
             <a style="color:White" class="nav-link" href="logout.jsp">Log out</i></a>
           </li>
            <li class="nav-item">
             <a style="color:White" class="nav-link" href=""><%out.println(email); %><i class="bi bi-person-fill"> </a>
           </li>
                    
         </ul>
       </div>
     </div>
   </nav>
 </header>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.min.js"
 integrity="sha384-PsUw7Xwds7x08Ew3exXhqzbhuEYmA2xnwc8BuD6SEr+UmEHlX8/MCltYEodzWA4u"
 crossorigin="anonymous"></script>

</body>
</html>