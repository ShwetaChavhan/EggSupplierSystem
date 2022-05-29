<%@ page session="true" import="java.sql.*,java.util.Date,java.text.*" contentType="text/html;charset=UTF-8"%>
<html>
  <head>
   <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">    
   <link rel="stylesheet" type="text/css" href="border.css">
   <title>www.yes.freevar.com</title>
    <style>
    th,td
    {
      padding: 12px;
      border-bottom: 1px solid hsl(200,5%,80%,0.6);      
    }
    table{
         font-family: arial;
         color: #eee6e2;
         size: 17px;
       }
   </style>
  <script>
    function myPrint()
    {
       window.print();
    } 
  </script>
  </head>
  <body bgcolor="#392f2b">    
    <div align="center">
    <br>
            <img src="Images/icon18.png" width="55" height="55">
            <br>
            <font size="5" face="arial" color="#eee6e2"><b>Thank you for your payment</b><br></font>
     <table cellspacing='0' width='350'>      
    <%
         Class.forName("org.postgresql.Driver");
         Connection con=DriverManager.getConnection("jdbc:postgresql://localhost/ty","postgres","qwertyuiop");                                                                 
         Statement st=con.createStatement();      
         HttpSession hs=request.getSession(true);
         String S=(String)hs.getAttribute("user");
         int oid=(int)hs.getAttribute("oid");
         ResultSet rs;
         rs=st.executeQuery("select otype from orders where oid="+oid);
         String type=null;
         float rate=0;
         if(rs.next())
         type=rs.getString(1);
         rs=st.executeQuery("select rate from egg1 where type='"+type+"'");
         if(rs.next())
         rate=rs.getInt(1);
         long pid=(long)hs.getAttribute("pid");
         rs=st.executeQuery("select pamount,pdate,ptime,ptype from payment where pid="+pid);
         float pamount=0;
         String pdate=null,ptime=null,ptype=null;       
         if(rs.next())
         {
           pamount=rs.getFloat(1);
           pdate=rs.getString(2);
           ptime=rs.getString(3);
           ptype=rs.getString(4);
         }
         out.print("<tr><td colspan='2'>Dear Customer,<br>Details of your transaction are given below");
         out.print("<tr><td>Username<td><b>"+S+"</b></tr>");         
         out.print("<tr><td>Egg Type<td><b>"+type+" eggs</b></tr>");         
         out.print("<tr><td>Egg Rate<td><b>₹"+rate+"0</b></tr>");         
         out.print("<tr><td>Total Amount<td><b>₹"+pamount+"0</b></tr>");         

      try{
          SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd k:mm:ss");
          String del=pdate+" "+ptime;
         Date d1=sdf.parse(del);
         sdf=new SimpleDateFormat("dd MMM, yyyy hh:mm a");      
         out.print("<tr><td>Date and Time<td><b>"+sdf.format(d1)+"</b></tr>");         
     }
        catch(Exception e)
         {
          //ParseException
        }

         out.print("<tr><td>Payment Type<td><b>"+ptype+"</b></tr>");         
         out.print("<tr><td>Transaction ID<td><b>"+pid+"</b></tr>");         
         out.print("<tr><td>Payment Status<td><b>Paid</b></tr>");         
    %>
    </table>   
    <br><input type="submit" value="Print" onclick="myPrint()">
    <form action="custpage.jsp">
    <br>    <input type="submit" value="Home">
    </form>
    </div>
    </body>
   </html>
