<%@ page session="true" import="java.sql.*" contentType="text/html;charset=UTF-8"%>
 <!DOCTYPE html>
<html lang="en">
    <head>
            <meta charset="UTF-8" content="width=device-width,initial-scale=1.0">
             <title>Yashshree Egg Suppliers</title>
             <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
              <link href="border.css" rel="stylesheet" type="text/css">
              <link href="menu.css" rel="stylesheet" type="text/css">
      </head>
    <body bgcolor="#392f2b">
        <%
         int sid=Integer.parseInt(request.getParameter("r2"));
         HttpSession hs=request.getSession(true);
         int oid=(int)hs.getAttribute("soid");
        Class.forName("org.postgresql.Driver");
        Connection con=DriverManager.getConnection("jdbc:postgresql://localhost/ty","postgres","qwertyuiop");
        Statement st=con.createStatement();
         st.executeUpdate("update orders set sid="+sid+" where oid="+oid);      
        ResultSet rs=st.executeQuery("select sname from supplier where sid="+sid);
         if(rs.next())
         out.print("<br><br><center><font color='#eee6e2' size='6' face='arial'>Order is assigned to "+rs.getString(1)+"</font></center>");
         out.print("<br><br><center><form action='adminorder.jsp'><input type='submit' value='Back'></form></center>");
%>
</body>
</font>

