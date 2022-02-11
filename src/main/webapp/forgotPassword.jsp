<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="greenCSS/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container' >
  <div class='signup' >
     <form action="forgotPasswordAction.jsp" method="post">
          <input type="email" name="email" placeholder="Enter Email" required>
          <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
        <select name="securityQuestions" required>
        	<option value="">Select your security Question</option>
   			<option value="What was your first Car?">What was your first Car</option>
   			<option value="What is the name of your first pet?">What is the name of your first pet</option>
   			<option value="What is the name of your town where you were born?">What is the name of your town where you were born?</option>
   		</select>
   		<input type="text" name="answer" placeholder="Enter your Answer" required>
   		<input type="password" name="newPassword" placeholder="Enter your new Password to set" required>
   		<input type="submit" value="Save">
  	
     </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword' style="height:540px">
    <%
  	String msg=request.getParameter("msg");
  if("done".equals(msg))
  {
  %> 
 <center> <h2> Password Changed Successfully</h2></center>
  <%} %>
  <%   if("invalid".equals(msg))
  {
  %> 
<center><h2>Some thing Went Wrong! Try Again !</h2></center>
<%} %>
<center><h1 style="color:green">Green Pharmacy</h1></center>
       <img alt="logo" src="Imgs/navlogo.png" height="320px" width="400px" style="left:720px;position:absolute">
   
 </div>
</div>
</body>
</html>