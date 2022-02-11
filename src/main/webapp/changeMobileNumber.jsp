<%@page import="java.sql.*" %>
<%@page import="project.Connect" %>
<%@include file="changeDetailsHeader.jsp" %>
<html>
<head>
<link rel="stylesheet" href="greenCSS/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
<style>
h3
{
	color:red;
}
</style>
</head>
<body>
<% String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Your Mobile Number successfully changed!</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>
<form action="changeMobileNumberAction.jsp" method="post">
 <h3>Enter Your New Mobile Number</h3>
 	<input class="input-style" type="number" name="mobileNumber" placeholder="Enter your New Number" required>
 <hr>
<h3>Enter Password (For Security)</h3>
	<input class="input-style" type="password" name="password" placeholder="Enter Password  (for Security)" required>
<hr>
 <button class="button" type="submit">Save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>