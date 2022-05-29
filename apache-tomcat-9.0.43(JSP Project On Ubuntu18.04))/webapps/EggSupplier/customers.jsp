<%@ page import="java.sql.*,java.util.Date,java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html lang="en">
    <head>
            <meta charset="UTF-8" content="width=device-width,initial-scale=1.0">
             <title>Yashshree Egg Suppliers</title>
             <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
              <link href="border.css" rel="stylesheet">
              <link href="menu.css" rel="stylesheet">
       <style>
            td,th{
                padding: 10px;
                color: #eee6e2;
                font-family: arial;
                font-size: 16px;
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
      <div class="menu-bar" >
        <ul>
       <img src="Images/icon11.png" width="55" height="55"></img>
       <color>Yashshree Egg Suppliers</color> &nbsp; &nbsp; &nbsp;   
       <li class="active"><a href="index.jsp">Home</a></li>
       <li align='right'><a href="adminsupplier.jsp">Suppliers</a></li>
        <li ><a href="customers.jsp">Customer</a></li>
       <li><a href="adminegg.jsp">Eggs</a></li>
        <li><a href="adminorder.jsp">Orders</a></li>
       <li><a href="adminpayment.jsp">Payment</a></li>
       <li><a href="adminlogin.jsp">Log Out</a></li>
     </ul> 
   </div>
       <div align='center' id="header"> 
        <br><br>	
       <img   src="Images/hen8.jpg" width="200" height="200" class="rcorner4"></img>
       <img   src="Images/hen3.jpg" width="200" height="200" class="rcorner4"></img>
       <img   src="Images/egg1.jpg" width="200" height="200" class="rcorner4"></img>
       </div> 
       <div align='center'>
      <%
      Class.forName("org.postgresql.Driver");
      Connection con=DriverManager.getConnection("jdbc:postgresql://localhost/ty","postgres","qwertyuiop");
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from cust1");
       out.print("<table cellspacing='0' width='800' >");
       out.print("<caption><b>Customer Information</b></caption>");
        out.print("<tr bgcolor='#f6a00b'><th>No.</th><th>Name</th><th>Birthdate</th><th>Gender</th><th>Phone</th><th>Address</th></tr>");
        while(rs.next())
          {
            out.print("<tr align='center'>");
             out.print("<td>"+rs.getInt(1));
             out.print("<td>"+rs.getString(2));

          SimpleDateFormat  sdf=new SimpleDateFormat("yyyy-mm-dd");
           Date d2=sdf.parse(rs.getString(3));
           sdf=new SimpleDateFormat("dd/mm/yyyy");
           out.print("<td class='border'>"+sdf.format(d2)); 

             out.print("<td>"+rs.getString(4));
             out.print("<td>"+rs.getLong(5));  //datatype of phone is numeric in database
             out.print("<td>"+rs.getString(6));   //Thus we need to use long while retriving it
             out.print("</tr>");
          }
             out.print("</table>");
        %>
  </div>
            <br>
             <br>            
           <table border="0" width="100%" height="250" bgcolor="#292929" id="contact">
                 <tr align="right"> 
                  <td >
                 <a href="#header"><font face="arial" size="7" color="#eee6e2"><span class="fa fa-arrow-circle-up" aria-hidden="true"></span></font>
                  </a>
               </tr>
     </table>
       <br>
       <br>
   </body>
</html>

