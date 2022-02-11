<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <meta http-equiv="X-UA-Compatible" content="ie=edge">
 <!-- bootstrap file mentioned CDN -->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous">

 <!-- CSS file writtem-->

 <link rel="stylesheet" href="javas.js">

<title>Final Footer</title>

</head>
<!-- footer -->
<section  class="w3l-footer-29-main bg-dark" >
  <div class="footer-29 py-5">
    <div class="container py-lg-4">
      <div class="row footer-top-29">
        <div class="col-lg-4 col-md-6 col-sm-7  footer-list-29 footer-1 pr-lg-5">
          <div class="footer-logo mb-3">
            <a class="navbar-brand" href="index.html"><img  style="height:70px;width:70px"src="../greenPharmacy/Imgs/navlogo.png" ></a>
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
      <p class="col-lg-8 copy-footer-29">© 2022 greenPharmacy. All rights reserved. Design by <a
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

</head>
<body>

</body>
</html>