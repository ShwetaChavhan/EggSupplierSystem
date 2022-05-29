<%@ page session="true" import="java.sql.Connection,java.sql.Statement,java.sql.ResultSet,java.sql.DriverManager,java.util.Date" contentType="text/html; charset=UTF-8"%>
<%!          
   HttpSession hs;   
   float tot;
   long min=100000000000L, max=999999999999L;
%>
<!Doctype html>
<html lang="en">
  <head>
   <meta charset="UTF-8" content="width=device-width,initial-scale=1.0">
   <title>www.yes.freevar.com</title>
   <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
   <link rel="stylesheet" type="text/css" href="border.css">
   </head>
  <body bgcolor="#392f2b">
  <form method="post" action="custdebit.jsp">
      <table border="3" bordercolor="#f6a00b"  style="border-radius: 15px;" cellspacing="0" cellpadding="0" align="center" width="350" height="500" rules="none">
         <tr height="100">
         <td width="30"><img src="Images/icon11.png" width="100" height="100"></img>
         <td><font face="arial" color="#f6a00b" size="6"><b>Yashshree Egg &nbsp;&nbsp;&nbsp;Suppliers</b></font>
         </tr>
         <tr><td colspan="2" align="center"><img src="Images/pay3.png" width="70" height="70"> </tr>
        <tr><td colspan="2" align="center"><font color="#f6a00b" face="arial" size="5"> 
          <%
             hs=request.getSession(true);
             tot=(float)hs.getAttribute("total");
             out.print("Total Bill ₹"+tot+"0");
          %> </font></tr>
         <tr>
          <td colspan="2" align="left"><font face="arial" color="#eee6e2" size="4">&nbsp;&nbsp;&nbsp; Payment Information</font>
         </tr>
         <tr>
           <td colspan="2" align="center"><input type="text" name="t1" placeholder="Name on card">
         </tr>
         <tr>
           <td colspan="2" align="center"><input type="number" name="t2" placeholder="Card Number">
         </tr>
         <tr>
           <td colspan="2" align="center"><input type="text" name="t3" placeholder="MM/YY">
         </tr>
           <tr>
           <td colspan="2" align="center"><input type="text" name="t4" placeholder="CVV/CVC">
         </tr>
         <tr><td colspan="2" align="center"><input type="submit" value='<%out.print("Pay ₹"+tot+"0");%>'></tr>
      </table>
  </form>
 <%
         String name=request.getParameter("t1");
         String number=request.getParameter("t2");
         String date=request.getParameter("t3");
         String cvv=request.getParameter("t4");

     if(name!=null&&number!=null&&date!=null&&cvv!=null)
     {
         try
          {
         Class.forName("org.postgresql.Driver");
         Connection con=DriverManager.getConnection("jdbc:postgresql://localhost/ty","postgres","qwertyuiop");                                                                 
         Statement st=con.createStatement();      
         String S=(String)hs.getAttribute("user");
         ResultSet rs=st.executeQuery("select cno from cust_login where username='"+S+"'");      
         int cno=0;
         if(rs.next())
         cno=rs.getInt(1);
         long pid=(long)(Math.random()*(max-min+1)+min);
         hs.setAttribute("pid",pid);
         String ptype="Debit Card";
         Date d1=new Date();   
         String pdate=(d1.getYear()+1900)+"-"+(d1.getMonth()+1)+"-"+d1.getDate();
         String ptime=d1.getHours()+":"+d1.getMinutes()+":"+d1.getSeconds();
         float pamount=tot;
         int aid=1;         
         st.executeUpdate("insert into payment values("+pid+",'"+ptype+"','"+pdate+"','"+ptime+"',"+pamount+",1,"+cno+")");
         int oid=(int)hs.getAttribute("oid");
         st.executeUpdate("update orders set payment_status='paid' where oid="+oid);
         rs.close();
         st.close();
         con.close();
         response.sendRedirect("paymentsuccess.jsp");
         }
         catch(Exception e)
         {
         response.sendRedirect("paymentfailed.jsp");
         }
     }
%>
 </body>
</html>
