<%@ page session="true" import="java.sql.*,java.util.Date" contentType="text/html;charset=UTF-8"%>
<%!
       HttpSession hs;
       String S;
       Connection con;
       Statement st;
%>
 <!DOCTYPE html>
<html lang="en">
    <head>
            <meta charset="UTF-8" content="width=device-width,initial-scale=1.0">
             <title>Yashshree Egg Suppliers</title>
             <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
              <link  rel="stylesheet"  type="text/css"  href="account.css">
              <link  rel="stylesheet"  type="text/css"  href="menu.css">
              <link  rel="stylesheet"  type="text/css"  href="help.css">
    </head>
    <body bgcolor="#292929">
      <div class="menu-bar" id="header">
        <ul>
       <img src="Images/icon11.png" width="55" height="55"></img>
       <color>Yashshree Egg Suppliers</color>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <!--         <a href="custaccount.php">
<!--   <button class="b2" form="accountform" type="submit" formaction="custaccount.php" formmethod="post" > -->
  <!-- <input class="cust" type="text"  name="u1" value=" -->
        <li class="active"><a href="custpage.jsp">Home</a></li>
       <li><a href="custegg.jsp">Eggs </a></li>
       <li><a href="#">Orders</a>
           <div class=sub-menu-1>
              <ul>
                 <li><a href="neworder.html">New Order</a></li>
                 <li><a href="custorder.jsp">Previous Orders</a></li>                    
               </ul>
           </div>
       </li>
       <li><a href="custpayment.jsp">Payment</a></li>
        <li><a href="about.html">About</a></li>      
        <li><a href="#contact">Contact</a></li>      
        </ul> 
   </div>
      <div style="background-image: linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.7)),url(Images/egg3.jpg); background-position: center; background-size: cover; height: 150vh; ">
      <br><br><br><br>
      <%
       Class.forName("org.postgresql.Driver");
       con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/ty","postgres","qwertyuiop");
        hs=request.getSession(true);
        S=(String)hs.getAttribute("user");
         if(S==null)
       out.print("<script>alert('Your Session has been expired'); window.location.assign('custlogin.jsp');</script>");            
        st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from cust1 where cno=(select cno from cust_login where username='"+S+"')");
        ResultSet rs1=st.executeQuery("select password from cust_login where username='"+S+"'");
        String pass=null;
        if(rs1.next()) 
        pass=rs1.getString(1);
        out.print("<table  border='2' style='border-radius: 7px; border-color: #f6a00b; margin: 0 auto;'  width='400' height='570' cellspacing='0' cellpadding='0' rules='none'>");
        out.print("<tr align='center'><td colspan='2'><font  class='form'  size='6'><b><span class='fa fa-user-circle' aria-hidden='true'></span></b></font>");
        out.print("<font class='form'  size='5'><b> Your Account Information</b></font><br><br></tr>");
        out.print("<form method='post' action='editaccount.jsp' id='edit'>");
        
        while(rs.next())
          {            
      // We can keep text field totally uninteractive using disabled keyword.
      out.print("<tr align='center'><td style='font-family: arial; color: #eee6e2; font-size:13pt;'>Username :<td><input type='text' name='t1' value='"+S+"' ></tr>");
      out.print("<tr align='center'><td  style='font-family: arial; color: #eee6e2; font-size:13pt;' width='30%'>Password :<td><input type='password' name='t2' value='' required></tr>");
      out.print("<tr align='center'><td  style='font-family: arial; color: #eee6e2; font-size:13pt;'>Name :<td><input type='text' name='t3' value='"+rs.getString(2)+"' ></tr>");
      out.print("<tr align='center'><td  style='font-family: arial; color: #eee6e2; font-size:13pt;'>Birthdate :<td><input type='date' name='t4' value='"+rs.getString(3)+"' ></tr>");
      String cgender=rs.getString(4);
      if(cgender.equals("Male"))
      out.print("<tr align='center'><td  style='font-family: arial; color: #eee6e2; font-size:13pt;' height='50px'>Gender :<td><input type='radio' name='t5' value='Male'><font class='form'  size='4' checked> Male &nbsp; &nbsp;<input type='radio' name='t5' value='Female'> Female</font></tr>");
      else
      out.print("<tr align='center'><td  style='font-family: arial; color: #eee6e2; font-size:13pt;' height='50px'>Gender :<td><input type='radio' name='t5' value='Male'><font class='form'  size='4' checked> Male &nbsp; &nbsp;<input type='radio' name='t5' value='Female' checked> Female</font></tr>");
      out.print("<tr align='center'><td  style='font-family: arial; color: #eee6e2; font-size:13pt;'>Phone :<td><input type='text' name='t6' value='"+rs.getLong(5)+"' ></tr>");
      out.print("<tr align='center'><td  style='font-family: arial; color: #eee6e2; font-size:13pt;'>Address :<td><input type='text' name='t7' value='"+rs.getString(6)+"' ></tr>");
      out.print("<tr><td colspan='2' height='70' align='center' valign='center'><input type='submit' value='Update Account'></tr>");                   
      out.print("</form>");           
      out.print("</table>");
         }    
      %>
        <font class="form" size="4"><center>
  <%
       Class.forName("org.postgresql.Driver");
       con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/ty","postgres","qwertyuiop");
        if(S==null)
       out.print("<script>alert('Your Session has been expired'); window.location.assign('custlogin.jsp');</script>");            
       st=con.createStatement();
       
        String a1=request.getParameter("t1");
        String a2=request.getParameter("t2");
        String a3=request.getParameter("t3");
        String a4=request.getParameter("t4");
        String a5=request.getParameter("t5");
        String a6=request.getParameter("t6");
        String a7=request.getParameter("t7");
        ResultSet r;
         if(a1!=null)
          {
             r=st.executeQuery("select cno from cust_login where username='"+S+"'");  
             int cno=0;
             if(r.next())
             cno=r.getInt(1);
             try{
             st.executeUpdate("update cust_login set username='"+a1+"' where username='"+S+"'");

              if(a2.length()<4) 
              out.print("<script> alert('Password must contain atleast 4 characters') </script>");                  
              else
              st.executeUpdate("update cust_login set password=crypt('"+a2+"',gen_salt('bf')) where username='"+a1+"'");
   
              st.executeUpdate("update cust1 set cname='"+a3+"' where cno="+cno);
              st.executeUpdate("update cust1 set cbday='"+a4+"' where cno="+cno);
              st.executeUpdate("update cust1 set cgender='"+a5+"' where cno="+cno);
   
           try{
             st.executeUpdate("update cust1 set cphone="+a6+" where cno="+cno);
             }
             catch(Exception e)
             {
               out.print("<script> alert('Mobile number already exist') </script>");
             }
        
              st.executeUpdate("update cust1 set caddr='"+a7+"' where cno="+cno);
             out.print("<script>alert('Account Updated Successfully. Login with new details'); window.location.assign('custlogin.jsp'); </script>");    
          }
              catch(Exception e)
              {
                out.print("<script> alert('Username already exist. Choose another name') </script>");
              }
       }               
  %>
         </center></font>
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
          <a href="custlogin.php"><font face="arial" size="7" color="#392f2b">
         <span class="fa fa-arrow-circle-o-left" aria-hidden="true"></span></font>
          </a>

     <td colspan="2" align="right">
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
    <span class="fa fa-copyright" aria-hidden="true"></span>&nbsp; <%Date d1=new Date(); out.print(d1.getYear()+1900);%> YashshreeEggSuppliers</font>
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

