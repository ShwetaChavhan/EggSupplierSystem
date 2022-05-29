<%@ page import="java.sql.*" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
            <meta charset="UTF-8" content="width=device-width,initial-scale=1.0">
             <title>Admin</title>
               <link href="border.css" rel="stylesheet">
   </head>
   <body bgcolor='#392f2b'>
<%
      Class.forName("org.postgresql.Driver");
      Connection con=DriverManager.getConnection("jdbc:postgresql://localhost/ty","postgres","qwertyuiop");
      Statement st=con.createStatement();
       String c;
      c=request.getParameter("c1");
      if(c!=null&&c.equals("on"))
      {
      float t1=Float.parseFloat(request.getParameter("t1"));
      st.executeUpdate("update egg1 set rate="+t1+" where type='country'");         
      }  
      c=request.getParameter("c2");
      if(c!=null&&c.equals("on"))
      {	
      int t2=Integer.parseInt(request.getParameter("t2"));
      st.executeUpdate("update egg1 set qty="+t2+" where type='country'");         
      }  
      c=request.getParameter("c3");
      if(c!=null&&c.equals("on"))
      {
      float t3=Float.parseFloat(request.getParameter("t3"));
      st.executeUpdate("update egg1 set rate="+t3+" where type='broiler'");         
      }  
      c=request.getParameter("c4");
      if(c!=null&&c.equals("on"))
      {
      int t4=Integer.parseInt(request.getParameter("t4"));
      st.executeUpdate("update egg1 set qty="+t4+" where type='broiler'");         
      }  
%>
<div align='center' style='margin: 100px 150px;'>
<font face='arial' size='6' color='#eee6e2'>
Rate/Quantity updated successfully..<br><br>
</font>
<form action="adminpage.jsp">
<input type="submit" value="Back to Home">
</form>
</div>
</body>
</html>
