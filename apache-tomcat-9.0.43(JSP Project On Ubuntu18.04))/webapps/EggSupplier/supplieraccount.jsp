<%@ page session="true" import="java.util.Date,java.sql.*,java.text.*"%>
<%!
       HttpSession hs;
       String S;
%>
<!DOCTYPE html>
<html lang="en">
    <head>
            <meta charset="UTF-8" content="width=device-width,initial-scale=1.0">
             <title>Yashshree Egg Suppliers</title>
             <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
              <link href="border.css" rel="stylesheet" type="text/css">
              <link href="menu.css" rel="stylesheet" type="text/css">
              <link href="help.css" rel="stylesheet" type="text/css">
    </head>
    <body bgcolor="#292929">
      <div class="menu-bar" id="header">
        <ul>
       <img src="Images/icon11.png" width="55" height="55"></img>
       <color>Yashshree Egg Suppliers</color>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <li class="active"><a href="supplierpage.jsp">Home</a></li>
       <li><a href="supplieregg.jsp">Eggs </a></li>
       <li><a href="supplierorder.jsp">Orders</a>
        </li>
       <li><a href="supplierpayment.jsp">Payment</a></li>
        <li><a href="about.html">About</a></li>      
        <li><a href="#">
       <span class="fa fa-user-circle" aria-hidden="true"></span>
       <%          
           hs=request.getSession(true);  //In java default timeout for session is 30 minutes
           //This value is specified in web.xml. We can change timout value in web.xml
           S=(String)hs.getAttribute("supplier");
            if(S!=null)
            out.print(S); 
            else
            out.print("<script>alert('Your Session has been expired'); window.location.assign('supplierlogin.jsp');</script>");            
      %>
        </a>
           <div class=sub-menu-2>
              <ul>
                 <li><a href="supplieraccount.jsp">Account</a></li>
                 <li><a href="supplierlogin.jsp">Log Out</a></li>                    
               </ul>
           </div>
         </li>
       </ul> 
   </div>
     <div style="background-image: linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.7)),url(Images/egg3.jpg); background-position: center; background-size: cover; height: 150vh; ">
      <br><br><br><br>
      <%
       Class.forName("org.postgresql.Driver");
       Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/ty","postgres","qwertyuiop");
       Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from supplier where sid=(select sid from supplier_login where username='"+S+"')");
        ResultSet rs1=st.executeQuery("select password from supplier_login where username='"+S+"'");
        String pass=null;
        if(rs1.next()) 
        pass=rs1.getString(1);
       out.print("<table  border='2' style='border-radius: 7px; border-color: #f6a00b; margin: 0 auto;'  width='400' height='570' cellspacing='0' cellpadding='0' rules='none'>");
       out.print("<tr align='center'><td colspan='2'><font  class='form'  size='6'><b><span class='fa fa-user-circle' aria-hidden='true'></span></b></font>");
       out.print("<font class='form'  size='5'><b> Your Account Information</b></font><br><br></tr>");
       out.print("<form method='post' action='suppliereditac.jsp' id='edit'>");
        
        while(rs.next())
          {            
      // We can keep text field totally uninteractive using disabled keyword.
      out.print("<tr align='center'><td style='font-family: arial; color: #eee6e2; font-size:13pt;'>Username :<td><input type='text' name='u2' value='"+S+"' readonly></tr>");
      out.print("<tr align='center'><td  style='font-family: arial; color: #eee6e2; font-size:13pt;' width='30%'>Password :<td><input type='password' value='"+pass+"' readonly></tr>");
      out.print("<tr align='center'><td  style='font-family: arial; color: #eee6e2; font-size:13pt;'>Name :<td><input type='text' value='"+rs.getString(2)+"' readonly></tr>");
      out.print("<tr align='center'><td  style='font-family: arial; color: #eee6e2; font-size:13pt;'>Birthdate :<td><input type='date' value='"+rs.getString(3)+"' readonly></tr>");
      out.print("<tr align='center'><td  style='font-family: arial; color: #eee6e2; font-size:13pt;'>Phone :<td><input type='text' value='"+rs.getLong(4)+"' readonly></tr>");
      out.print("<tr align='center'><td  style='font-family: arial; color: #eee6e2; font-size:13pt;'>Address :<td><input type='text' value='"+rs.getString(5)+"' readonly></tr>");
      out.print("<tr><td colspan='2' height='70' align='center' valign='center'><input type='submit' value='Change Setting'></tr>");                   
      out.print("</form>");           
      out.print("</table>");
         }    
      %>
    </div>
   </body>
  </html>
