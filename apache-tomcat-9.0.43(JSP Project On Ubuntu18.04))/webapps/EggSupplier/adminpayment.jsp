<%@ page import="java.sql.*,java.util.Date,java.text.SimpleDateFormat" contentType="text/html; charset=UTF-8"%>
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
       <li align='right'><a href="adminsupplier.jsp">Suppliers</a></li>
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
         ResultSet rs=st.executeQuery("select * from payment");
         out.print("<table width='900'  cellspacing='0' >");
         out.print("<br><caption><b>Payment Information</b></caption><br>");
         out.print("<tr bgcolor='#f6a00b'><th>Payment ID</th><th>Payment Type</th><th>Date</th><th>Time</th><th>Amount</th><th>aid</th><th>cno</th></tr>");
          int f=0;
           while(rs.next())
          {                  
           out.print("<tr align='center'><td>"+rs.getLong(1));
           out.print("<td>"+rs.getString(2));

           SimpleDateFormat sdf=new SimpleDateFormat("yyyy-mm-dd");
           Date d2=sdf.parse(rs.getString(3));
           sdf=new SimpleDateFormat("dd/mm/yyyy");
           out.print("<td class='border'>"+sdf.format(d2));

 
           sdf=new SimpleDateFormat("k:mm:ss");
           d2=sdf.parse(rs.getString(4));
           sdf=new SimpleDateFormat("hh:mm:ss a");
           out.print("<td class='border'>"+sdf.format(d2));
 
           out.print("<td>₹"+rs.getFloat(5)+"0");
           out.print("<td>"+rs.getInt(6));
           out.print("<td>"+rs.getInt(7)+"</tr>");
           f=1;
           }
         out.print("</table>");      
         if(f==0)       
         out.print("<div style='height: 30vh;'><font class='form'  size='4'><b>No payments yet!</b></font></div>");
       rs.close();
       st.close();
       con.close();             
 %>       
     </div>
            <br>
             <br>            
           <table border="0" width="100%" height="250" bgcolor="#292929" id="contact">
                 <tr align="right"> <td >
                <a href="#header"><font face="arial" size="7" color="#eee6e2"><span class="fa fa-arrow-circle-up" aria-hidden="true"></span></font>
               </a>
           </tr>
     </table>
       <br>
       <br>
   </body>
</html>

