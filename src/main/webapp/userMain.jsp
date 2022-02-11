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
            <a style="color: white" href="about.jsp">About <i class="fa fa-address-book"></i></a>
            <a style="color: white" href="logout.jsp">Logout <i class='fas fa-share-square'></i></a>
            <a style="color: white" href=""><%out.println(email);%> <i class='fas fa-user-alt'></i></a>
     </div>
   </nav>
 </header>

<div class="container" style="position: absolute; width: 500px; height: 600px  ; top:200px; left:150px">

    <i><h2 style="color: blue">Hello <%out.println(email); %>!!!</h2></i><br>
    <i><h5 style="color: blue">Making sure you feel as Good as you Look!</h5></i><br>
    
    <a href="pharmacyHome.jsp"><button type="button" class="btn btn-primary btn-lg btn-block "><img style="height:30px;width:30px"src="../greenpharmacyproject/Imgs/medicineIcon.png" alt="">  &nbsp Buy Medicines</button></a>
    <br><br>
    <a href="labTestHome.jsp"><button type="button" class="btn btn-primary btn-lg btn-block "><img style="height:30px;width:30px"src="../greenpharmacyproject/Imgs/doctoricon.png" alt="">  &nbsp Book Lab-Tests</button></a>
</div>
<div class="card" style="width: 50rem;left:600px;">
  <img src="Imgs/indexpic1.png" class="card-img-top" alt="...">
</div>
<br><br>
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner" style="width:1300px; left:110px">
    <div class="carousel-item active">
      <img src="Imgs/article1.png"style="height:500px" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="Imgs/article3.png" style="height:500px" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="Imgs/article2.png" style="height:500px" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div><br><br><br>
<div class="container-fluid">
  <center><i><h3 style="color: blue">For Covid 19 Vaccination Related Queries</h3></i></center>

</div>
<br><br>
<div class="container" style="position: absolute; height:300px; width:1300px; left:230px;">
    <a href="FAQ.html"><button type="button" class="btn btn-warning btn-lg"><img style="height:30px;width:30px"src="Imgs/faqicon.png" alt=""><span>&nbsp FAQ and Articles</span></button></a>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
    <a href="vaccinationQueries.html"><button type="button" class="btn btn-warning btn-lg"><img style="height:30px;width:30px"src="Imgs/callicon.png" alt=""><span>&nbsp Vaccination Queries</span></button></a>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
    <a href="https://www.cowin.gov.in/"><button type="button" class="btn btn-warning btn-lg"><img style="height:30px;width:30px"src="Imgs/covidicon.png" alt=""><span>&nbsp Cowin Registration</span></button></a>


</div>

<br><br><br><br><br>
<!-- footer -->
<section  class="w3l-footer-29-main bg-dark">
  <div class="footer-29 py-5">
    <div class="container py-lg-4">
      <div class="row footer-top-29">
        <div class="col-lg-4 col-md-6 col-sm-7  footer-list-29 footer-1 pr-lg-5">
          <div class="footer-logo mb-3">
            <a class="navbar-brand" href="index.html"><img  style="height:70px;width:70px"src="Imgs/navlogo.png" ></a>
          </div>
          <p style="color:White; size:20px">Make sure you feel as Good as you Look!!!</p>
          <ul class="mt-3">
            <li><a style="color:white" href="tel:+(040)2000 4009 "><span class="fa fa-phone"></span> +(040)2000 4009</a></li>
            <li><a style="color:white" href="mailto:medick@mail.com" class="mail"><span class="fa fa-envelope-open-o"></span>
                greenpharmacy@gmail.com</a></li>
          </ul>
        </div>
        <div  class="col-lg-2 col-md-6 col-sm-5 col-6 footer-list-29 footer-2 mt-sm-0 mt-5">

          <ul style="color:white">
           <h6 class="footer-title-29">History</h6>
            <li style="color:white"value=""><a style="color:white" href="about.html">About Us</a></li>
            <li style="color:white"><a style="color:white"href="blog.html"> Blog Posts</a></li>
            <li style="color:white"><a style="color:white" href="team.html"></a>User Reviews</li>
            <li style="color:white"><a style="color:white" href="contact.html">Contact us</a></li>
          </ul>
        </div>
        <div class="col-lg-2 col-md-6 col-sm-5 col-6 footer-list-29 footer-3 mt-lg-0 mt-5">
          <h6 style="color:white" class="footer-title-29">Useful Links</h6>
          <ul>
            <li style="color:white"><a style="color:white" href="#terms">Terms of service</a></li>
            <li style="color:white"><a style="color:white" href="#privacy"> Privacy policy</a></li>

            <li style="color:white"><a style="color:white" href="#support"> Support</a></li>
       </ul>

        </div>
        <div class="col-lg-4 col-md-6 col-sm-7 footer-list-29 footer-4 mt-lg-0 mt-5 bg-light">
          <h6 class="footer-title-29">Subscribe to our Newsletter </h6>
          <p>Enter your email and receive the latest news, updates and special offers from us.</p>

          <form action="#" class="subscribe" method="post">
            <input type="email" name="email" placeholder="Your Email Address" required="">
            <button class="btn btn-style btn-primary w-100 mt-3">Subscibe</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- //footer -->

<!-- copyright -->
<section class="w3l-copyright ">
  <div class="container">
    <div class="row bottom-copies">
      <p class="col-lg-8 copy-footer-29">� 2022 greenPharmacy. All rights reserved. Design by <a
          href="#" target="_blank">
          greenPharmacy</a></p>

      <div class="col-lg-4 main-social-footer-29">
        <a href="#facebook" class="facebook"><span class="fa fa-facebook"></span></a>
        <a href="#twitter" class="twitter"><span class="fa fa-twitter"></span></a>
        <a href="#instagram" class="instagram"><span class="fa fa-instagram"></span></a>
        <a href="#linkedin" class="linkedin"><span class="fa fa-linkedin"></span></a>
      </div>

    </div>
  </div>
<br><br>
  <!-- move top -->
  <button onclick="topFunction()" id="movetop" title="Go to top">
    &#10548;
  </button>
  <script>
    // When the user scrolls down 20px from the top of the document, show the button
    window.onscroll = function () {
      scrollFunction()
    };

    function scrollFunction() {
      if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("movetop").style.display = "block";
      } else {
        document.getElementById("movetop").style.display = "none";
      }
    }

    // When the user clicks on the button, scroll to the top of the document
    function topFunction() {
      document.body.scrollTop = 0;
      document.documentElement.scrollTop = 0;
    }
  </script>
  <!-- /move top -->
</section>
<!-- //copyright -->
<!--//footer-->





<br>

 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.min.js"
 integrity="sha384-PsUw7Xwds7x08Ew3exXhqzbhuEYmA2xnwc8BuD6SEr+UmEHlX8/MCltYEodzWA4u"
 crossorigin="anonymous"></script>

 </body>
 </html>
