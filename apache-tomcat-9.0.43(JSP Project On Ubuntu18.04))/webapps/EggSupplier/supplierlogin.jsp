<%@ page session="true" import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
    <head>
            <meta charset="UTF-8" content="width=device-width,initial-scale=1.0">
             <title>Yashshree Egg Suppliers</title>
             <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
              <link href="border.css" type="text/css" rel="stylesheet">
              <link href="menu.css" type="text/css" rel="stylesheet">
    </head>
    <body bgcolor="#292929">
     <div align="center" style="background-image: linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4)),url('Images/hen8.jpg'); background-position: bottom; background-size: cover; height: 120vh;"> 
       <form method="post" action="supplierlogin.jsp"> <br> <br>
        <table  border="3" bordercolor="#f6a00b"  style="border-radius: 15px;"  width="350" height="400" bgcolor="#292929" rules="none">
              <tr height="130"> 
                  <td  align="center">
                 <img src="Images/icon11.png"  width="100" height="100"></img>
                 <td ><font face="arial" color="#f6a00b" size="6" >   Yashshree Egg &nbsp; &nbsp; Suppliers</font>
               </tr>
       <tr><td colspan="2" align="center"><font face="arial" color="#eee6e2" size="5">Login Here<hr width="100"></hr></font></tr>
              <tr> <td width="30%" colspan="2" align="left"><font class="form" size="4">&nbsp; &nbsp; &nbsp;&nbsp;Username </font></tr>
               <tr>
               <td colspan="2" align="center"><font class="form">
                 <input type="text" name="t1" required value='<% if(request.getParameter("t1")!=null) out.print(request.getParameter("t1"));%>'>
                 </tr>
                  <tr> <td width="30%" colspan="2" align="left"><font class="form" size="4"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password </font></tr>
                 <tr>
                  <td colspan="2" align="center" ><font class="form"> <input type="password" name="t2">
                 </tr>
                 <tr>
               <td colspan="2" align="center"><font class="form"> <input type="submit" value="Login" >
                 </tr>
               </table>
               </form>                                               
           <table border="0" width="100%" >
                 <tr align="left"> 
                  <td >
                 <a href="index.jsp"><font face="arial" size="7" color="#eee6e2"><span class="fa fa-arrow-circle-left" aria-hidden="true"></span></font>
                  </a>
               </tr>
     </table>     
 <%
 String a=request.getParameter("t1");
 String b=request.getParameter("t2");
 if(a!=null&&b!=null)
 {
      Class.forName("org.postgresql.Driver");
      Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/ty","postgres","qwertyuiop");
       if(con==null)
       out.print("<font size='4' face='arial' color='#eee6e2'>Unable to connect :(</font>");
        else 
        {
          Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from supplier_login where username='"+a+"' and password=crypt('"+b+"',password)");
          int f=0;
          if(rs.next())
           {           
                 HttpSession hs1=request.getSession(true);
                hs1.setAttribute("supplier",a);
                response.sendRedirect("supplierpage.jsp");
            }
           out.print("<center><font face='arial' color='red' size='4'><b>Invalid username or password</b></font></center>");
       }
 }
%>
    </div>
   </body>
   </html>

