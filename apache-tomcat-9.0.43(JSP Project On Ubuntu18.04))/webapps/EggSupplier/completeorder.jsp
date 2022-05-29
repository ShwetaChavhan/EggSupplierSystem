<%@ page session="true" import="java.sql.*" contentType="text/html;charset=UTF-8"%>
<%!
  int oid;
%>
 <!DOCTYPE html>
<html lang="en">
    <head>
            <meta charset="UTF-8" content="width=device-width,initial-scale=1.0">
             <title>Yashshree Egg Suppliers</title>
             <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
              <link href="border.css" rel="stylesheet" type="text/css">
              <link href="menu.css" rel="stylesheet" type="text/css">
      </head>
    <body bgcolor="#292929">
        <%
          oid=Integer.parseInt(request.getParameter("r1"));
        Class.forName("org.postgresql.Driver");
        Connection con=DriverManager.getConnection("jdbc:postgresql://localhost/ty","postgres","qwertyuiop");
        Statement st=con.createStatement();
         st.executeUpdate("update orders set status='complete' where oid="+oid);      
%>

 <div align='center'>
<br><br><br>
 <img src='Images/check2.png' width="100" height="100">        
 <br><br> <font color='#eee6e2' size='6' face='arial'>Order is completed :)<br>
 <font color='#eee6e2' size='5' face='arial'> Order No :
 <%=oid%>
 </font>
 <br><br> <a href="supplierorder.jsp" style="text-decoration: none; font-size: 20px; color: #f6a00b;">Back</a></font>
  </div>
</body>
</font>

