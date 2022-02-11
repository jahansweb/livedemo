<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="greenCSS/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'style="height:520px">
  	<form action="signupAction.jsp" method="post"> 
  		<input type="text" name="name" placeholder="Enter your full Name" required>
   		<input type="email" name="email" placeholder="Enter your Email" required>
   		<input type="number" name="mobilenumber" placeholder="Enter Mobile Number" required>
   		<select name="securityQuestions" required>
   			<option value="">Select your security Question</option>
   			<option value="What was your first Car?">What was your first Car</option>
   			<option value="What is the name of your first pet?">What is the name of your first pet</option>
   			<option value="What is the name of your town where you were born?">What is the name of your town where you were born?</option>
   		</select>
   		<input type="text" name="answer" placeholder="Enter your Answer" required>
   		<input type="password" name="password" placeholder="Enter Password" required>
   		<input type="submit" value="signup">
  	</form>
    
    <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class="whysign" style="height:560px;background:white">
  <%
  	String msg=request.getParameter("msg");
  	if("valid".equals(msg))
  	{
  %>
  <center><h2>Sucessfully Registered</h2></center>
<%} %> 
<%
if("invalid".equals(msg))
	{
%>
<center><h2>Something went Wrong..! Try Again...!</h2></center>
<%} %>

    <center><h1 Style="color:green">Green Pharmacy</h1></center>
    <img alt="logo" src="Imgs/navlogo.png" height="300px" width="290px" style="left:785px; position:absolute"><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
   
  </div>
</div>

</body>
</html>