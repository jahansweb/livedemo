<%@page errorPage="error.jsp" %>
<%@page import="project.Connect" %>
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
   <%
  	String msg=request.getParameter("msg");
  if("wrong".equals(msg))
  {
  %> 
  <h2> Some Error Try Again</h2>
  <%} %>
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
 			<a style="color: white" href=""><%out.println(email);%> <i class='fas fa-user-alt'></i></a>     </div>
   </nav>
 </header>
 <!--Picture-->
   <div class="container" style="left: 100px;position:absolute;height:600px;width:800px;top:150px">
     <img style="height:600px;width:800px"src="Imgs/LTformleftpic.png" alt="">
   </div>

   <!--Form-->
   <div class="container bg-light" style="left: 950px;position:absolute;height:600px;width:500px;top:150px">

<h5 style="color:red">Please fill in your details</h5>
<form  action="bookFormAction.jsp" >
<div class="form-row">
  <div class="form-group ">
    <label for="inputName">NAME</label>
    <input type="text" name="name" class="form-control" id="inputName" placeholder="Enter your Name">
  </div><br>
  <div class="form-group ">
    <label for="inputMobile">MOBILE NUMBER </label>
    <input type="number" name="mobileNumber" class="form-control" id="inputMobile" placeholder="Enter 10-digit Mobile Number">
  </div><br>
</div>
<div class="form-group">
  <label for="inputpin">PINCODE</label>
  <input type="number" name="pin" class="form-control" id="inputpin" placeholder="Ex-500009">
</div><br>

  <div class="form-group ">
    <label for="inputState">CHOOSE PACKAGE</label>
    <select id="inputState" class="form-control" name="pack">
      <option selected>select</option>
      <option>E-Pharmacy Swasthya</option>
      <option>Shield Pack</option>
      <option>Health Pack</option>
      <option >Diabetic Checkup</option>
      <option>ECHO</option>
      <option>ECG</option>
      <option>PET Scan</option>
      <option>Ultrasound Whole Abdomen</option>
      <option>Covid Antibody Panel</option>
    </select>
  </div><br>

<div class="form-group">
  <div class="form-check">
    <input class="form-check-input" type="checkbox" id="gridCheck">
    <label class="form-check-label" for="gridCheck">
      I agree to E-Pharmacy Terms and Conditions
    </label>
  </div>
</div><br>
<div class="d-grid gap-2">
  <button class="btn btn-primary" type="submit">Book Now</button>

</div>
</form>
     
</div><br><br>

 <!--popularTests-->
  <div class="container bg-pink" style="left: 100px;position:absolute;height:400px;width:800px;top:800px;">
    <img style="position:absolute;height:300px;width:1400px " src="Imgs/LTpopularTests1.png" alt="">

  </div><br>
  <!--TopsectionContent-->
  <div class="container bg-warning" style="left: 110px;position:absolute;height:100px;width:1400px;top:1100px;">
    <h3>Top Selling Packages</h3><br>
    <h6>Choose from the list of top-selling packages tailored for you. We care for your health!</h6>

    <!--packages-->
<div class="packages1 " style="  position:absolute; top:140px ;left:0px">
  <div class="container bg-danger text-white" style="position:absolute;width:300px;height:300px">
  <center>  <br><h5>E-Pharmacy Swasthya </h5><br>
    <p>Book Regular Health Check-up Package E-Pharmacy Swasthya, a Basic Screening Preventive Health Check-up Profile including 64 tests.</p>
    <span><del>Rs.3200</del>&nbsp Rs.1500</span><br><br>
    <a href="#" class="btn btn-light " id="booknow">Book Now</a></center>
  </div>
  </div>

  <div class="packages1 " style="  position:absolute; top:140px ;left:340px">

  <div class="container bg-danger text-white" style="position:absolute;width:300px;height:300px">
  <center>  <br><h5>Shield Pack </h5><br>
    <p>E-Pharmacy Shield Pack helps to protect against a particular danger . It includes a  diagnostic profile of 56 tests for a comprehensive health evaluation.</p>
    <span><del>Rs.2500</del>&nbsp Rs.900</span><br><br>
    <a href="#" class="btn btn-light " id="booknow">Book Now</a></center>
  </div>
  </div>



<div class="packages1 " style="  position:absolute; top:140px ;left:1020px">
<div class="container bg-danger text-white" style="position:absolute;width:300px;height:300px">
<center> <br><h5>Health Pack </h5> <br>
  <p>Our E-Pharmacy Health
    Pack comprises of 35 parameters of regular tests that have been specially
    designed keeping your health in mind.</p>
  <span><del>Rs.1699</del>&nbsp Rs.499</span><br><br>
  <a href="#" class="btn btn-light " id="booknow">Book Now</a></center>
</div>
</div>
<br><br><br>

<div class="packages2 " style="  position:absolute; top:140px ;left:680px">
<div class="container bg-danger text-white" style="position:absolute;width:300px;height:300px">
<center>  <br><h5>Diabetic Check-up </h5><br>
  <p>Meant for people who want to get regular reports to prevent/check their diabetes levels. It includes 49 tests.</p><br>
  <span><del>Rs.3450</del>&nbsp Rs.899</span><br><br>
  <a href="#" class="btn btn-light " id="booknow">Book Now</a></center>
</div>
</div>

<div class="packages2" style="  position:absolute; top:480px ;left:0px">

<div class="container bg-danger text-white" style="position:absolute;width:300px;height:300px">
<center>  <br><h5>ECHO </h5><br>
<p>Echocardiography or ECHO, is a painless test that uses sound waves to create moving pictures of your heart.</p>
  <span>Starting @ Rs.400</span><br><br>
  <a href="#" class="btn btn-light " id="booknow">Book Now</a></center>
</div>
</div>

<div class="packages2 " style="  position:absolute; top:480px ;left:340px">
<div class="container bg-danger text-white" style="position:absolute;width:300px;height:300px">
<center>  <br><h5>ECG</h5><br>
  <p>An ECG is a simple and valuable test. Sometimes it can definitely diagnose a heart problem. The electrocardiogram (ECG)...</p>
  <span>Starting @ Rs.250</span><br><br>
  <a href="#" class="btn btn-light " id="booknow">Book Now</a></center>
</div>
</div>

<div class="packages2 " style="  position:absolute; top:480px ;left:680px">
<div class="container bg-danger text-white" style="position:absolute;width:300px;height:300px">
<center>  <br><h5>PET Scan </h5><br>
<p>PET scan may detect the early onset of disease before other imaging tests can.</p>
<span>Starting @ Rs.9600</span><br><br>
<a href="#" class="btn btn-light " id="booknow">Book Now</a></center>
</div>
</div>


<div class="packages2 " style="  position:absolute; top:480px ;left:1020px">
<div class="container bg-danger text-white" style="position:absolute;width:300px;height:300px">
<center>  <br><h5>Ultrasound Whole Abdomen </h5><br>
  <p>Ultrasound is used to study the development of an unborn baby, abdominal and pelvic organs and blood vessels.</p>
<span></span>Starting @ Rs.999<br><br>
<a href="#" class="btn btn-light " id="booknow">Book Now</a></center>
</div>
</div>

<!--ourHighlightsSection-->
<div class="container" style="position: absolute;top:830px">
  <center><h3>Our Highlights</h3></center>
</div>

<div class="sample1" style="  position:absolute;left:50px;top:890px">
  <button type="button" class="btn btn-lg btn-success"><img src="Imgs/Homesample.png" alt="" height="30px" width="30px"> &nbsp Home Sample Collection</button>
</div>

<div class="sample2" style="  position:absolute;left:520px;top:890px">
  <button type="button" class="btn btn-lg btn-success"><img src="../greenPharmacy/Imgs/location.png" alt="" height="30px" width="30px"> &nbsp 2000+ Locations Served</button>

</div>
<div class="sample3" style="  position:absolute;left:980px;top:890px">
  <button type="button" class="btn btn-lg btn-success"><img src="Imgs/CAPlogo.png" alt="" height="30px" width="30px"> &nbsp NABL,CAP ISO Certified</button>

</div>

<div class="footer " style="position:absolute;top:1000px">
  <div class="footer-29 py-5">
    <div class="container py-lg-3 bg-light">
      <div class="row footer-top-29">
        <div class="col-lg-4 col-md-6 col-sm-7  footer-list-29 footer-1 pr-lg-5">
          <div class="footer-logo mb-3">
            <a class="navbar-brand" href="index.html"><img  style="height:70px;width:70px"src="Imgs/navlogo.png" ></a>
          </div>
          <p style=" size:20px">Make sure you feel as Good as you Look!!!</p>
          <ul class="mt-3">
            <li><a  href="tel:+(21) 255 999 8888"><span class="fa fa-phone"></span> +91 99584 71263</a></li>
            <li><a  href="mailto:medick@mail.com" class="mail"><span class="fa fa-envelope-open-o"></span>
                epharmacy@mail.com</a></li>
          </ul>
        </div>
        <div  class="col-lg-2 col-md-6 col-sm-5 col-6 footer-list-29 footer-2 mt-sm-0 mt-5">

          <ul >
           <h6 class="footer-title-29">History</h6>
            <li value=""><a  href="about.html">About Us</a></li>
            <li ><a href="blog.html"> Blog Posts</a></li>
            <li ><a  href="services.html">Departments</a></li>
            <li ><a  href="#careers"> Careers</a></li>
            <li ><a href="about.html">Team</a></li>
            <li ><a  href="contact.html">Contact us</a></li>
          </ul>
        </div>
        <div class="col-lg-2 col-md-6 col-sm-5 col-6 footer-list-29 footer-3 mt-lg-0 mt-5">
          <h6  class="footer-title-29">Useful Links</h6>
          <ul>
            <li><a  href="#terms">Terms of service</a></li>
            <li ><a  href="#privacy"> Privacy policy</a></li>
            <li ><a  href="#doc"> Documentation</a></li>
            <li ><a  href="#support"> Support</a></li>
            <li ><a  href="#components"> Components</a></li>
            <li ><a  href="#changelog"> Changelog</a></li>
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

  <!-- //footer -->

  <!-- copyright -->
  <section class="w3l-copyright ">
  <div class="container">
    <div class="row bottom-copies">
      <p class="col-lg-8 copy-footer-29">© 2021 Medick. All rights reserved. Design by <a
          href="#" target="_blank">
          E-Pharmacy</a></p>

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
</div>


<br>
 
 
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.min.js"
 integrity="sha384-PsUw7Xwds7x08Ew3exXhqzbhuEYmA2xnwc8BuD6SEr+UmEHlX8/MCltYEodzWA4u"
 crossorigin="anonymous"></script>
 

</body>
</html>