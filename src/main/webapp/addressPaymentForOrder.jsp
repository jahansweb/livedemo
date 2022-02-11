<%@page import="java.sql.*" %>
<%@page import="project.Connect" %>
<%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

<title>Home</title>
<script>
if(window.history.forward(1) !=null)
	window.history.forward(1);
</script>
</head>
<body>
<br>
<table>
<thead>

<% 

int total=0;
int sno=0;
try{

	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/greenpharmacy","root","root");
	PreparedStatement ps=con.prepareStatement("select sum(total) from cart where email='"+email+"' and address is NULL");
	ResultSet rs=ps.executeQuery();
	while(rs.next()){
		total=rs.getInt(1);
	}
%>
          <tr>
          <th scope="col"><a href="mycart.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></th>
            <th scope="col" style="background-color: yellow;">Total: <i class="fa fa-inr"></i><% out.println(total); %></th>
          </tr>
        </thead>
        <thead>
          <tr>
          <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> price</th>
            <th scope="col">Quantity</th>
            <th scope="col">Sub Total</th>
          </tr>
        </thead>
        <tbody>
   <%
      PreparedStatement ps1=con.prepareStatement("select * from allmedicines inner join cart on allmedicines.id=cart.pid and cart.email='"+email+"' and cart.address is NULL");
  	ResultSet rs1=ps1.executeQuery();
  	while(rs1.next())
  	{
  		%>      
          <tr>
          <% sno=sno+1; %>
           <td><% out.println(sno); %></td>
            <td><%=rs1.getString(2) %></td>
            <td><%=rs1.getString(3) %></td>
            <td><i class="fa fa-inr"></i> <%=rs1.getString(4) %></td>
            <td><%=rs1.getString(9) %> </td>
            <td><i class="fa fa-inr"></i> <%=rs1.getString(11) %></td>
            </tr>
         <%
         	} 
         PreparedStatement ps2=con.prepareStatement("select * from users where  email='"+email+"' ");
  	ResultSet rs2=ps2.executeQuery();
  	while(rs2.next())
  	{
  
  	%>
        </tbody>
      </table>
      <br>  <br>  
             
             <form method="POST" id="signup-form" class="signup-form" action="Addresspayment.jsp">
           <center><h3 style="color:red">Please fill in the Details*</h3></center> 
             <table align="center" border="0px" cellspacing="8px" cellpadding="5px">
             
                        <tr>
                        
                                <td>Enter Address</td>
                               <td> <input type="text" class="form-input" name="address" value="<%=rs2.getString(7)%>" placeholder="enter address" required /></td>
                         </tr>   
                            <tr>
                                <td>Enter City</td>
                               <td> <input type="text" class="form-input" name="city" value="<%=rs2.getString(8)%>" placeholder="enter city" required /></td>
                            </tr>
                      <tr>
                      <td>Enter State</td>
                              <td>  <input type="text" class="form-input" name="state" value="<%=rs2.getString(9)%>" placeholder="enter State" required /></td>
                        </tr>
                        <tr>
                        <td>Enter Country</td>
                          <td>      <input type="text" class="form-input" name="country" value="<%=rs2.getString(10)%>" placeholder="enter city" required /></td>
                           </tr>
                          <hr style="width: 100%">
                 <tr>
                 <td>Select Mode of Payment</td>
                                      <td>  <select name="paymentmethod" id="select mode of payment" required>
                                        <option value="">select</option>
                                        <option value="Cash on delivery(COD)">Cash on delivery(COD)</option>
                                        <option value="Online payment">Online payment</option></td>
	                                       
                                        </select>
                                   </tr>
						 
						  <tr>
								<td colspan="2"><h4 style="color:blue">Pay online on this greenpharmacy@pay.com</h4>		</td>
								
					   	</tr>	
						<tr>	<td>transactionID</td>
                               <td> <input type="text" class="form-input" name="transactionId"  placeholder="enter transactionid"  /></td>
                         </tr>
                         <tr>
                          <td colspan="2"><h5 style="color: red">*If you select online Payment then enter you transaction ID here otherwise leave this blank</h5></td>
                          
                          </tr>
						
							<tr>
							<td>Mobile number</td>
                            <td><input type="number" class="form-input" name="mobileNumber" id="phone_number" value="<%=rs2.getString(3)%>"  /></td>
                            </tr>
                            <tr>
                            <td colspan="2"><h5 style="color: red">*This mobile number will also updated to your profile</h5></td>
                            
                            </tr>
                        <tr>
							<td colspan="2"><h5 style="color: red">*If you enter wrong transaction id then your order will be cancelled by us!</h5></td>
							
						</tr>
						<tr>
					
                           			<td colspan="2"><input style="background:#3399ff ;size:8px" type="submit" name="submit" id="submit" class="form-submit" value="procced to generate bill and save"/></td>
                       				
                       			</tr>
                           </table> 	
                 </form>
         
    </div>

<%
}
}
catch(Exception e){
	System.out.println(e);
}%>

      <br>
      <br>
      <br>

    
   <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/jquery-ui/jquery-ui.min.js"></script>
    <script src="vendor/jquery-validation/dist/jquery.validate.min.js"></script>
    <script src="vendor/jquery-validation/dist/additional-methods.min.js"></script>
    <script src="js/main.js"></script>   
      
      
 
</body>
</html>