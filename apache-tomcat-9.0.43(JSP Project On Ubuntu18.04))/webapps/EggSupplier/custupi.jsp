<%@ page session="true" import="java.sql.Connection,java.sql.Statement,java.sql.ResultSet,java.sql.DriverManager,java.util.Date" contentType="text/html; charset=UTF-8"%>
<%!          
   HttpSession hs;   
   float tot;
   long max=100000000000L,min=999999999999L;
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
  <form method="post" action="custupi.jsp">
      <table border="3" bordercolor="#f6a00b"  style="border-radius: 15px;" cellspacing="0" cellpadding="0" align="center" width="350" height="400" rules="none">
         <tr height="90">
         <td width="30"><img src="Images/icon11.png" width="100" height="100"></img>
         <td><font face="arial" color="#f6a00b" size="6"><b>Yashshree Egg &nbsp;&nbsp;&nbsp;Suppliers</b></font>
         </tr>
         <tr><td colspan="2" align="center" height="50"><img src="Images/pay8.png" width="150" height="100"></img></tr>
        <tr height="10"><td colspan="2" align="center"><font color="#f6a00b" face="arial" size="5"><?php echo "Total Bill ₹".$_POST['m1']?> </font></tr>
        <tr height="10">
          <td colspan="2" align="left"><font face="arial" color="#eee6e2" size="3">&nbsp;&nbsp;&nbsp; UPI ID</font>
         </tr>
         <tr height="20">
           <td colspan="2" align="center"><input type="text" name="t1" placeholder="example@upi">
         </tr>
          <tr><td colspan="2" align="center"><input type="submit"
          value='<% hs=request.getSession(true); tot=(float)hs.getAttribute("total"); out.print("Pay ₹"+tot+"0"); %>'></tr>
      </table>
  </form>
<!-- ty=# alter table payment alter column pid type bigint;
ALTER TABLE
-->
 <%
       String upi=request.getParameter("t1");
       if(upi!=null) 
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
         String ptype="UPI";
         Date d1=new Date();  //Since Date class is available in both sql,util "type Date is ambigous error occurs" if we use import="java.sql.*,java.util.*"
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
