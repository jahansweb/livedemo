<%@page errorPage="../error.jsp" %>


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../greenCSS/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
    <!--Header-->
    <br>
    <div class="topnav sticky" style="position:relative;  background-color:black; " >
   <%String email=session.getAttribute("email").toString(); %>
            <center><h2 style="color:white; size:30px;">Green Pharmacy</h2></center>
            <a style="color: white" href="addNewProduct.jsp">Add New Product <i class='fas fa-plus-square'></i></a>
            <a style="color: white" href="allProductEditProduct.jsp">All Products <i class='fab fa-elementor'></i></a>
            <a style="color: white" href="messagesReceived.jsp">Messages Received <i class='fas fa-comment-alt'></i></a>
            <a style="color: white" href="ordersReceived.jsp">Orders Received <i class="fas fa-archive"></i></a>
            <a style="color: white" href="cancelOrders.jsp">Cancel Orders <i class='fas fa-window-close'></i></a>
            <a style="color: white" href="deliveredOrder.jsp">Delivered Orders <i class='fas fa-dolly'></i></a>
            <a style="color: white" href="labtests.jsp">Registered Labtests <i class='fas fa-dolly'></i></a>
            <a style="color: white" href="../logout.jsp">Logout <i class='fas fa-share-square'></i></a>
          </div>
           <br>
           <!--table-->
