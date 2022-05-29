<%@ page session="true" import="java.sql.*,java.util.Date,java.text.*" contentType="text/html;charset=UTF-8"%>
<%! HttpSession hs;%>
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
        th,td{
        padding: 10px;
        border-bottom: 2px solid #f6a00b;
       }
           caption{
               font-family: serif;
               color: #eee6e2;
               font-size: 20px;
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
            hs=request.getSession(true);  //In java default timeout for session is 30 minutes
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
       <br><br><br>
       <%
      Class.forName("org.postgresql.Driver");
      Connection con=DriverManager.getConnection("jdbc:postgresql://localhost/ty","postgres","qwertyuiop");
       if(con==null)
       out.print("Unable to connect :(");
       else
       {
       hs=request.getSession(true);
       String name=(String)hs.getAttribute("supplier");
       Statement st=con.createStatement();
       ResultSet rs=st.executeQuery("select oid,odate,otype,ordered_qty,deldate,payment_status,status from orders where sid=(select sid from supplier_login where username='"+name+"')");
       out.print("<font face='arial' size='3' color='#eee6e2'>");
       out.print("<table  cellspacing='0' style='margin: 0 auto;' width='1030'>");
       out.print("<caption><b>Orders Assigned To You</b></caption>");
       out.print("<tr bgcolor='#f6a00b'><th class='border'>Order Id</th> <th>Order Date</th><th>Type</th><th>Quantity</th><th>Delivery Date</th><th>Payment Status</th><th>Status</th><th></th></tr>");
          while(rs.next())
          {
            out.print("<tr align='center'>");
            out.print("<td>"+rs.getInt(1));
 
           SimpleDateFormat  sdf=new SimpleDateFormat("yyyy-mm-dd");
           Date d2=sdf.parse(rs.getString(2));
           sdf=new SimpleDateFormat("dd/mm/yyyy");
           out.print("<td class='border'>"+sdf.format(d2));
 
            out.print("<td>"+rs.getString(3));
            out.print("<td>"+rs.getInt(4));

           sdf=new SimpleDateFormat("yyyy-mm-dd");
           d2=sdf.parse(rs.getString(5));
           sdf=new SimpleDateFormat("dd/mm/yyyy");
           out.print("<td class='border'>"+sdf.format(d2));

             out.print("<td>"+rs.getString(6));
            out.print("<td>"+rs.getString(7));
            if(rs.getString(7).equals("incomplete"))
            out.print("<td><form method='post' action='completeorder.jsp'><input type='radio' name='r1' value='"+rs.getInt(1)+"'>&nbsp;<input type='submit' value='Mark as Complete' >");
            else
            out.print("<td>");
            out.print("</tr>");
         }
       out.print("</table>");                
       }
  %>           
     </div>
   </body>
  </html>
