<%@ page session="true" import="java.sql.*" contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
            <meta charset="UTF-8" content="width=device-width,initial-scale=1.0">
             <title>Yashshree Egg Suppliers</title>
             <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
              <link href="cust.css" rel="stylesheet">
              <link href="menu.css" type="text/css" rel="stylesheet">
              <link href="border.css" type="text/css" rel="stylesheet">
          <link rel="stylesheet" type="text/css" href="help.css">
           <link  rel="stylesheet" href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css">
    <style>
      .border{
        padding: 10px;
        border-bottom: 2px solid #f6a00b;
       }
    </style>
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
           HttpSession hs=request.getSession(true);  //In java default timeout for session is 30 minutes
           //This value is specified in web.xml. We can change timout value in web.xml
           String S=(String)hs.getAttribute("supplier");
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
   </body>
  </html>
