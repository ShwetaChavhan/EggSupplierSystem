<%@ page session="true" import="java.util.Date,java.sql.*" contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
            <meta charset="UTF-8" content="width=device-width,initial-scale=1.0">
             <title>Yashshree Egg Suppliers</title>
             <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
              <link href="border.css" rel="stylesheet" type="text/css">
              <link href="menu.css" rel="stylesheet" type="text/css">
              <link href="help.css" rel="stylesheet" type="text/css">
    <style>
      .border{
        padding: 10px;
        border-bottom: 2px solid #f6a00b;
       }
    </style>
    </head>
    <body bgcolor="#292929">
    <div class="menu-bar">
        <ul>
       <img src="Images/icon11.png" width="55" height="55"></img>
       <color>Yashshree Egg Suppliers</color>
       &nbsp; &nbsp; &nbsp;
        <li class="active"><a href="custpage.jsp">Home</a></li>
       <li><a href="custegg.jsp">Eggs</a></li>
       <li><a href="#">Orders</a>
           <div class=sub-menu-1>
              <ul>
                 <li><a href="neworder.html">New Order</a></li>
                 <li><a href="custorder.jsp">Previous Orders</a></li>                    
               </ul>
           </div>
       </li>
       <li><a href="custpayment.jsp">Payment</a></li>
        <li><a href="#help">Help</a></li>
        <li><a href="#">
        <span class="fa fa-user-circle" aria-hidden="true"></span>
       <%          
           HttpSession hs=request.getSession(true);  //In java default timeout for session is 30 minutes
           //This value is specified in web.xml. We can change timout value in web.xml
           String S=(String)hs.getAttribute("user");
            if(S!=null)
            out.print(S); 
            else
            out.print("<script>alert('Your Session has been expired'); window.location.assign('custlogin.jsp');</script>");            
     %>
        </a>
           <div class=sub-menu-2>
              <ul>
                 <li><a href="custaccount.jsp">Account</a></li>
                 <li><a href="custlogin.jsp">Log Out</a></li>                    
               </ul>
           </div>
         </li>
     </ul> 
   </div>
   <!--
           <table border="0" align="center" width="100%" height="500" bgcolor="#292929">
            <tr >
              <td width="30%" valign="top"   ><font face="arial" size="5" color="#eee6e2"><br><br> <center>Our Features<hr width="100"></center></hr> </font>
                 <font face="arial" size="4" color="#eee6e2">
                  <ul>              
                <li>&nbsp;&nbsp;<font size="1"><span class="fa fa-circle"></span></font>&nbsp;24x7 access to online services
                <li>&nbsp;&nbsp;<font size="1"><span class="fa fa-circle"></span></font>&nbsp;Cost savings
                <li>&nbsp;&nbsp;<font size="1"><span class="fa fa-circle"></span></font>&nbsp;Best egg quality
                <li>&nbsp;&nbsp;<font size="1"><span class="fa fa-circle"></span></font>&nbsp;Quick purchase information
               <li>&nbsp;&nbsp;<font size="1"><span class="fa fa-circle"></span></font>&nbsp;Secure way of payment
                <li>&nbsp;&nbsp;<font size="1"><span class="fa fa-circle"></span></font>&nbsp;Home delivery
                </ul>
                </font>
                 <div class="pos">  At Yashshree Egg Supplier we understand that food industry constantly changing. Since our establishment 
			   back in 2010 we have gone through various changes but have always remained loyal to our customers.
			   We guarantee you'll be satisfied with our quality products and excellent service. Contact us to learn
			   about our services and see how we may be of service to you.
               </div>
                <br>                
                <td align="center">   
                 <img src="Images/icon13.png" width="150" height="150"></img>
      -->
      <div id="header" style="background-image: linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.7)),url(Images/hen24.jpg); background-position: center; background-size: cover; height: 120vh; ">
       <br><br>
       <img src="Images/icon13.png" width="100" height="100" style="margin-left: 500px;">
      <%
      Class.forName("org.postgresql.Driver");
      Connection con=DriverManager.getConnection("jdbc:postgresql://localhost/ty","postgres","qwertyuiop");
       if(con==null)
       out.print("Unable to connect :(");
       else
       {
       Statement st=con.createStatement();
       ResultSet rs=st.executeQuery("select * from egg1");
       out.print("<font face='arial' size='4' color='#eee6e2'>");
       out.print("<table  cellspacing='0' style='margin: 0 auto;' width='600'>");
       out.print("<caption><b>Egg Information</b></caption>");
       out.print("<tr bgcolor='#f6a00b'><th class='border'>Type</th> <th>Photo</th><th>Rate</th><th>Quantity Available</th></tr>");
        if(rs.next())
             out.print("<tr align='center'><td class='border'>"+rs.getString(1)+" eggs<td class='border'><img src='Images/egg4.jpg' width='80' height='120'><td class='border'>₹"+rs.getFloat(2)+"/egg<td class='border'>"+rs.getInt(3)+"</tr>");
         if(rs.next())
             out.print("<tr align='center'><td class='border'>"+rs.getString(1)+" eggs<td class='border'><img src='Images/egg5.jpg' width='80' height='100'><td class='border'>₹"+rs.getFloat(2)+"/egg<td class='border'>"+rs.getInt(3)+"</tr>");
            out.print("</table>");                
       }
  %>           
        </div>
           <!--Update Page-->
           <table border="0" width="100%" height="200" bgcolor="#eee6e2">
            <tr align="center">
               <td colspan="2"><font face="arial" size="5" color="#453832"><br>Latest Updates On Bird Flu<hr width="170"></font><br>
                <img src="Images/news1.png" width="400" height="300">
              <br><br>
          </tr>        
          </table>           
<!--help page--> 
    <section id="help">
        <br>   
         <br><center><font face="arial" color="#eee6e2" size="5">Help</font>
        <br><hr width="50"></hr><br></center>
          <div class="container">
              <div class="accordion">
                  <div class="accordion-item" id="question1">
                       <a class="accordion-link" href="#question1">
                         How to register (create account)?
                          <i class="icon ion-md-add"></i>
                          <i class="icon ion-md-remove"></i>
                       </a>
                       <div class="answer">
                        <p>
                     1. Visit home page of website. <br>
                     2. Click on Register. Then enter your correct details. <br>
                     3. Click on Submit. Now you are registered. <br>
                     4. Click on Login. Enter your username and password. Click on Login button. <br>
                     5. Now you can place order, can see egg details, can do payment and see order details.    <br>
                       </p>
                       </div>
                  </div>
              </div>
           </div>           
          <div class="container">
              <div class="accordion">
                  <div class="accordion-item" id="question2">
                       <a class="accordion-link" href="#question2">
                               How to place order?
                          <i class="icon ion-md-add"></i>
                          <i class="icon ion-md-remove"></i>
                       </a>
                       <div class="answer">
                        <p>
  1. Login to your account. <br>
  2. Click on orders. Now from drop down list select New Order option.<br>
  3. Now select type of egg you wish to order. <br>
  4. Type egg quantity. The minimum quantity should be 10.You can not enter quantity less than 10.  <br>
  5. Enter your registered mobile no with your account.  <br>
  6. Click on place order button.  <br>
  7. Click on Send a SMS (optional).  <br>
  8. Click on Confirm Order button to confirm your order. You will land to payment page.  <br>
                        </p>
                       </div>
                  </div>
              </div>
           </div>
          <div class="container">
              <div class="accordion">
                  <div class="accordion-item" id="question3">
                       <a class="accordion-link" href="#question3">
                           Where to see order details?
                          <i class="icon ion-md-add"></i>
                          <i class="icon ion-md-remove"></i>
                       </a>
                       <div class="answer">
                        <p>
 1. Click on Orders in top panel.  <br>
 2. Select Previous Orders option.  <br>
 3. Type your account password in text box.  <br>
 4. Click on Display Orders button.  <br>
 5. Now all orders will be displayed in a table.  <br>
                      </p>
                       </div>
                  </div>
              </div>
           </div>
          <div class="container">
              <div class="accordion">
                  <div class="accordion-item" id="question4">
                       <a class="accordion-link" href="#question4">
                           How to do payment?
                          <i class="icon ion-md-add"></i>
                          <i class="icon ion-md-remove"></i>
                       </a>
                       <div class="answer">
                        <p>
1. Once order is placed after clicking on Confirm Order button you will land to payment form.  <br>
2. Now select payment method you want.  <br>
3. If you selected payment by debit card then enter details like name on card, card no. ,expiray date, cvv then click on proceed to pay.  <br>
4. If you selected UPI payment then enter your upi id. Then click on proceed to pay. 
    Now a request will be sent to your upi app/*99#. Approve the request by entering your upi PIN.  <br>
5. If you selected credit card then -------------   <br>
6. If you selected payment by mobile banking then ----------   <br>
                       </p>
                       </div>
                  </div>
              </div>
           </div>
           
          <div class="container">
              <div class="accordion">
                  <div class="accordion-item" id="question5">
                       <a class="accordion-link" href="#question5">
                            How to update account?
                          <i class="icon ion-md-add"></i>
                          <i class="icon ion-md-remove"></i>
                       </a>
                       <div class="answer">
                        <p>
  1. Click on your name in top panel.  <br>
  2. Now your account information will be displayed. <br>
  3. Click on Edit Account button.  <br>
  4. Change the field you want to edit.  <br>
  5. Click on Update button.  <br>
  6. Now "Account updated successfully" message will be shown.  <br>
  7. If above message is not shown and messages like Unable to update name, Unable to update password etc. are shown then refresh the page and try again.  <br>
                       </p>
                       </div>
                  </div>
              </div>
           </div>
        <br>
      <br>
     </section>
    
     <!-- Services Page-->
     <table border="0" align="center" width="100%" height="300" bgcolor="#eee6e2" id="services">
      <tr>   
      <td align="center" colspan="3"><br><font face="arial" size="5" color="#292929">
         Our Services</font><hr width="100"></hr><br><br></tr>
      <tr>
  <td align="center"><img src="Images/hen12.jpg" class="rcorner"  width="300"  height="250"></td>
   <td align="center"><img src="Images/hen5.jpg" class="rcorner"  width="300"  height="250"> </td>
 <td align="center" ><img src="Images/service.jpg" class="rcorner"  width="300"  height="250"> </td>
   </tr>
    <tr align="center"><td><font face="arial" size="4" color="#292929">Home Delivery</font></td>
   <td><font face="arial" size="4" color="#292929">Best Quality Eggs</font></td>
  <td><font face="arial" size="4" color="#292929">24x7 access </font></td>
  </tr>
     <tr> 
        <td colspan="2">
          <a href="custpage.php"><font face="arial" size="7" color="#392f2b">
         <span class="fa fa-arrow-circle-o-left" aria-hidden="true"></span></font>
          </a>

     <td colspan="2" align="right">
     <a href="neworder.php"><font face="arial" size="7" color="#292929">
         <span class="fa fa-arrow-circle-o-right" aria-hidden="true"></span></font>
       </a>
     </tr>     
   </table><br>
      <!--Contact Page-->
        <table border="0" width="100%" height="300" bgcolor="#292929" id="contact">
         <tr align="center"><td><br><br><font face="arial" color="#eee6e2" size="5">
         Contact Us</font><br><hr width="100"></hr></td></tr>
          <tr align="center">
          <td><br><a href="malito:shwetachavhan435@gmail.com"> <font face="arial" size="4" color="#eee6e2">
           <br>shwetachavhan435@gmail.com</font></a>
           </tr>
             <tr align="center">
                <td ><font face="arial" size="4" color="#eee6e2"><br>Shrirampur, Maharashtra, India</font><br><br>
            </tr>
            <tr align="center">
               <td>
               <font face="arial" size="5" color="#eee6e2">
              <span class="fa fa-facebook" aria-hidden="true"></span> &nbsp; &nbsp;
              <span class="fa fa-linkedin" aria-hidden="true"></span></font> &nbsp; &nbsp;&nbsp;
               
             <a href="https://wa.me/917887796982"><font face="arial" size="5" color="#eee6e2">
                 <span class="fa fa-whatsapp" aria-hidden="true"></span></font></a>
           &nbsp; &nbsp; <a href="tel:+917887796982"><font face="arial" size="5" color="#eee6e2">
               <span class="fa fa-phone" aria-hidden="true"></span></font></a>                           
            </tr>
            <tr align="center">
       <td height="40"><font face="arial" size="4" color="#eee6e2">
    <span class="fa fa-copyright" aria-hidden="true"></span>&nbsp;<%=new Date().getYear()+1900%>  YashshreeEggSuppliers</font>
             </tr>
        <tr align="right">
            <td >
            <a href="#header"><font face="arial" size="7" color="#eee6e2">
          <span class="fa fa-arrow-circle-up" aria-hidden="true"></span></font>
               </a>
           </tr>
     </table>
   </body>
</html>

