<%@ page session="true" import="java.sql.*" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
            <meta charset="UTF-8" content="width=device-width,initial-scale=1.0">
             <title>Yashshree Egg Suppliers</title>
             <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
              <link href="border.css" rel="stylesheet" type="text/css">
              <link href="menu.css" rel="stylesheet" type="text/css">
        <style>
            td,th
            {
               padding: 10px;
               border-bottom: 2px solid #f6a00b;          
               font-family: arial;
               color: #eee6e2;
               font-size: 16px;
            }
           caption{
               font-family: serif;
               color: #eee6e2;
               font-size: 20px;
           }
          </style>
      </head>
    <body bgcolor="#292929">
      <div class="menu-bar" >
        <ul>
       <img src="Images/icon11.png" width="55" height="55"></img>
       <color>Yashshree Egg Suppliers</color> &nbsp; &nbsp; &nbsp;   
       <li class="active"><a href="adminpage.jsp">Home</a></li>
       <li align='right'><a href="#">Suppliers</a></li>
        <li ><a href="customers.jsp">Customer</a></li>
       <li><a href="adminegg.jsp">Eggs</a></li>
        <li><a href="adminorder.jsp">Orders</a></li>
       <li><a href="adminpayment.jsp">Payment</a></li>
       <li><a href="adminlogin.jsp">Log Out</a></li>
     </ul> 
   </div>
       <div align='center' id='header'> 
        <br><br>	 
       <img   src="Images/hen8.jpg" width="200" height="200" class="rcorner4"></img>
       <img   src="Images/hen3.jpg" width="200" height="200" class="rcorner4"></img>
       <img   src="Images/egg1.jpg" width="200" height="200" class="rcorner4"></img>
      </div>
       <div align='center' > 
     <%
       Class.forName("org.postgresql.Driver");
       Connection con=DriverManager.getConnection("jdbc:postgresql://localhost/ty","postgres","qwertyuiop");
       Statement st=con.createStatement();
       ResultSet rs=st.executeQuery("select * from supplier order by sid");      
       out.print("<table cellspacing='0' width='700' >");
       out.print("<caption><b>Assign order to..</b></caption>");
       out.print("<tr bgcolor='#f6a00b' align='center'><th>Supplier ID</th><th>Name</th><th>Mobile</th><th>Address</th><th></th></tr>");
        while(rs.next())
          {
            out.print("<tr align='center'>");
            out.print("<td>"+rs.getInt(1));
            out.print("<td>"+rs.getString(2));
            out.print("<td>"+rs.getLong(4));
            out.print("<td>"+rs.getString(5));
            HttpSession hs=request.getSession(true);
             int oid=Integer.parseInt(request.getParameter("r1"));
             hs.setAttribute("soid",oid);
             out.print("<td><form method='post' action='orderassignsuccess.jsp'><input type='radio' name='r2' value='"+rs.getInt(1)+"'>&nbsp;<input type='submit' value='Select'></form>");
            out.print("</tr>");
         }
        out.print("</table>");
    %>
   </div>
  <body>
 </html>
