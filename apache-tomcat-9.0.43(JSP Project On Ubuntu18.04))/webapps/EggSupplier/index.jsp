<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html lang="en">
    <head>
            <meta charset="UTF-8" name="viewport" content="width=device-width,initial-scale=1.0">
             <title>Yashshree Egg Suppliers</title>
             <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
              <link href="menu.css"  type="text/css" rel="stylesheet">
              <link href="help.css"  type="text/css" rel="stylesheet">
              <link href="border.css" rel="stylesheet">
    <!--          <style>
                   .chat{
                          position: fixed;
                          top: 410px;
                          left: 1000px;                          
                     }
              </style>
    <div class="chat">
       <a href="#"><img src="Images/icon17.png" width="40" height="40"></img></a>
    </div>
   -->
   </head>
    <body bgcolor="#292929">       
     <div class="menu-bar" id="header">
        <ul>
       <img src="Images/icon11.png" width="55" height="55"></img>
       <color>Yashshree Egg Suppliers</color>
       &nbsp; &nbsp; &nbsp; &nbsp;
       <li class="active"><a href="index.jsp">Home</a></li>
        <li><a href="#">Login</a>
           <div class=sub-menu-1>
              <ul>
                 <li><a href="adminlogin.jsp">Admin Login</a></li>
                 <li><a href="custlogin.jsp">Customer Login</a></li>                    
                 <li><a href="supplierlogin.jsp">Supplier Login</a></li>
              </ul>
           </div>
       </li>
       <li><a href="#services">Services</a></li>
       <li><a href="#contact">Contact</a></li>
        <li><a href="about.html">About</a></li>
       <li><a href="#help">Help</a></li>
     </ul> 
   </div>
<!--
    <table border="0" align="center" width="100%" height="500" bgcolor="#292929">
            <tr >
              <td width="30%" valign="top"   ><font face="arial" size="5" color="#eee6e2"><br><br> <center>Our Features<hr width="100"></center></hr> </font><br>
                 <font face="arial" size="4" color="#eee6e2">
                 <ul>              
                <li>&nbsp;&nbsp;<font size="1"><span class="fa fa-circle"></span></font>  24x7 access to online services
                <li>&nbsp;&nbsp;<font size="1"><span class="fa fa-circle"></span></font>  Cost savings
                <li>&nbsp;&nbsp;<font size="1"><span class="fa fa-circle"></span></font>  Quick purchase information
               <li> &nbsp;&nbsp;<font size="1"><span class="fa fa-circle"></span></font> Secure way of payment
                <li>&nbsp;&nbsp;<font size="1"><span class="fa fa-circle"></span></font> Home delivery
                </ul>
                </font>
                 <div class="pos">  At Yashshree Egg Supplier we understand that food industry constantly changing. Since our establishment 
			   back in 2010 we have gone through various changes but have always remained loyal to our customers.
			   We guarantee you'll be satisfied with our quality products and excellent service. Contact us to learn
			   about our services and see how we may be of service to you.
               </div>
                <br>                
                <td align="center">   <img src="Images/hen11.jpg" width="500" height="300" class="rcorner2">
                 <img src="Images/hen12.jpg" width="500" height="300" class="rcorner3">

            </tr>
      </table>
-->                 
            <div class="pos1"> 
              <form name="f1">
               <br><br>
              <input type="text" style="border: none; font-size:50pt;  font-family: arial; color: white; text-align: center; background: rgba(0,0,0,0.1); width: 350px;" id="t1" disabled><br>
              <input type="text" style="border: none; font-size:25pt; font-family: Serif; color: white; text-align: center; background: rgba(0,0,0,0.1); width: 350px;" id="t2" disabled>
              </form>
                <script language="javascript">
                     show();
                     function show()
                       {      
                          var dt=new Date();       
                          var h=dt.getHours();
                          var m=dt.getMinutes();     
                          var time='<%=new SimpleDateFormat("hh:mm a").format(new Date())%>';
                           document.f1.t1.value=time;    
                           if(h>=12&&h<=16)
                           document.f1.t2.value="Good Afternoon";    
                           else if(h>16&&h<=20)
                           document.f1.t2.value="Good Evening";    
                           else if(h>20&&h<=24)
                           document.f1.t2.value="Good Night";    
                           else
                           document.f1.t2.value="Good Morning";                                                        
  
                          setTimeout("show()",60000);  
                       }
                  </script>
                         <br> At Yashshree Egg Supplier we understand that food industry<br>
                        constantly changing. Since our establishment <br>
                         back in 2010 we have gone through various<br> 
                         changes but have always remained loyal to our customers.<br>
	We guarantee you'll be satisfied with our quality <br>
                         products and excellent service. <br>
                          Contact us to learn about our services<br> 
                           and see how we may be of service to you.
               </div>
           <!--Update Page-->
           <table border="0" width="100%" height="200" bgcolor="#eee6e2" >
            <tr align="center">
               <td><font face="arial" size="5" color="#453832"><br>Latest Updates On Bird Flu<hr width="170"></font><br>
                <img src="Images/news1.png" width="400" height="300">
               <br><br>
            </tr>
       </table>
<!--help page--> 
     <section id="help" >
  <br>   
         <br><center><font face="arial" color="#eee6e2" size="5">Help</font>
        <br><hr width="50"></hr><br></center>
         <div class="container" >
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
           <br><br>
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
      <td colspan="3" align="right">
     <a href="register.html"><font face="arial" size="7" color="#292929">
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
                <td ><a href=" https://maps.app.goo.gl/kXtnNPRR8RaQ9p2y8"><font face="arial" size="4" color="#eee6e2"><br>Shrirampur, Maharashtra, India</font></a><br><br>
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
    <span class="fa fa-copyright" aria-hidden="true"></span>&nbsp;
<%@ page import="java.util.Date" %><% Date d1=new Date(); int y=(d1.getYear()+1900);%><%=y%>  YashshreeEggSuppliers</font>
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

