<%@ page session="true" import="java.util.Date,java.sql.*"%> 
<!DOCTYPE html>
<html lang="en">
    <head>
            <meta charset="UTF-8" content="width=device-width,initial-scale=1.0">
             <title>Yashshree Egg Suppliers</title>
             <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
              <link href="border.css" rel="stylesheet">
              <link href="menu.css" rel="stylesheet" type="text/css">
              <link href="help.css" rel="stylesheet" type="text/css">
     </head>
    <body bgcolor="#392f2b">
      <%
         Class.forName("org.postgresql.Driver");
         Connection con=DriverManager.getConnection("jdbc:postgresql://localhost/ty","postgres","qwertyuiop");                                                                 
         Statement st=con.createStatement();
         int oid=Integer.parseInt(request.getParameter("r1"));
         st.executeUpdate("delete from orders where oid="+oid);
         out.print("<br><br><br><center><font color='#eee6e2' size='6' face='arial'>Order is cancelled<br>Order No : "+oid+"</font>");
         out.print("<form action='custorder.jsp'><input type='submit' value='Back'></center></form>");
     %>
    </body>
 </html>

