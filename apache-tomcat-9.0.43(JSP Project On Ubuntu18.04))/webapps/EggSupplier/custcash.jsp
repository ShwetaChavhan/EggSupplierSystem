<%@ page session="true" import="java.sql.*" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
            <meta charset="UTF-8" content="width=device-width,initial-scale=1.0">
             <title>Yashshree Egg Suppliers</title>
             <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
              <link href="border.css" rel="stylesheet">
    </head>
    <body bgcolor="#392f2b">
        <div align="center" style="margin: 100px;">
        <img src="Images/icon16.png" width="150" height="150" alt="smiley.jpg"></img><br><br>
          <font face="arial" size="6" color="#eee6e2">Pay On Delivery</font>
        <%
            Class.forName("org.postgresql.Driver");
            Connection con=DriverManager.getConnection("jdbc:postgresql://localhost/ty","postgres","qwertyuiop");                                                                 
            Statement st=con.createStatement();      
            HttpSession hs=request.getSession(true);
            int oid=(int)hs.getAttribute("oid");
            st.executeUpdate("update orders set payment_status='pay on delivery' where oid="+oid);
      %>
      <form action="custpage.jsp">
      <br>    <input type="submit" value="Home">
      </form>
        </div>
      </body>
     </html>

