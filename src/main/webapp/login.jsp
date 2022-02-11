
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="greenCSS/signup-style.css">
<title>Login</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="loginAction.jsp" method="post">
     <input type="email" name="email" placeholder="Enter Email" required>
     <input type="password" name="password" placeholder="Enter Password" required>
     <input type="submit" value="Login">
     
     </form>
      <h2><a href="signup.jsp">SignUp</a></h2>
       <h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>
  </div>
  <div class='whysignLogin' style="height: 480px">
  <%
  	String msg=request.getParameter("msg");
  if("notexist".equals(msg))
  {
  %> 
  <center><h2>Incorrect Username or Password</h2></center>
  <%} %>
  <%   if("invalid".equals(msg))
  {
  %> 

<center><h2>Some thing Went Wrong! Try Again !</h2></center>
<%} %>

  <center><h1 style="color: Green;face:Italic-Bold">Green Pharmacy</h1></center>
    <img alt="logo" src="Imgs/navlogo.png" height="300px" width="450px">
   
  </div>
</div>

</body>
</html>