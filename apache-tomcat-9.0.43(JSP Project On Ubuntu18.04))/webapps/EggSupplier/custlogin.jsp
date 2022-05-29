<%@ page session="true" import="java.sql.*,java.util.*"%>
<%! int min=100000,max=999999; %>
 <!DOCTYPE html>
 <html lang="en">
    <head>
            <meta charset="UTF-8" content="width=device-width,initial-scale=1.0">
             <title>Yashshree Egg Suppliers</title>
             <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
              <link href="border.css" type="text/css" rel="stylesheet">
              <link href="menu.css"  type="text/css" rel="stylesheet">
     <style>
       table{
           background: linear-gradient(rgba(0,0,0,0.6),rgba(0,0,0,0.6));
           border-radius: 15px;
         }
    </style>
    </head>
   <body bgcolor="#292929">
   <div align="center" style="background-image: linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4)),url('Images/hen8.jpg'); background-position: center; background-size: cover; height: 150vh;"> 
   <form method="post" action="custlogin.jsp" id="login"><br>
           <table  border="3" bordercolor="#f6a00b"   width="360" height="550" rules="none">
                 <tr height="130"> 
                  <td  align="center">
                 <img src="Images/icon11.png"  width="100" height="100"></img>
                 <td><font face="arial" color="#f6a00b" size="6" > Yashshree Egg &nbsp; &nbsp; &nbsp;Suppliers</font>
                 </tr>
                   <tr >
                  <td colspan="2" align="center"><font face="arial" color="#eee6e2" size="5">Login Here<hr width="100"></hr></font></tr>
                  <tr>
              <td colspan="2" width="30%" valign="bottom"><font face="arial" color="#eee6e2" size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Username</font>
               </tr>
              <tr><td colspan="2" align="center" valign="top" height="40" ><font class="form"> <input type="text" name="t1" required value='<% if(request.getParameter("t1")!=null) out.print(request.getParameter("t1"));%>'>
                 </tr>
             <tr>
             <td colspan="2" width="30%" valign="bottom"><font face="arial" color="#eee6e2" size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password </font>
             </tr>
              <tr><td colspan="2" align="center" valign="top" height="40"  width="700"><font class="form"> <input type="password" name="t2">
                 </tr>
             <tr><td colspan="2" width="30%" valign="bottom"><font face="arial" color="#eee6e2" size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Captcha</font></tr>
                <tr>
                 <td colspan="2"  height="40" align="center" valign="bottom"><input type="text"  name="cp1" value="<%out.print((int)(Math.random()*(max-min+1)+min));%>" readonly>
<!-- since we want 6 digit number. Which lies in the range 100000 and 999999 we could not use Random class.
    Means
      Random r=new Random();
      int k=r.nextInt(999999);
      This will return numbers from 0 to 999999
      So to get numbers in specific range use Math.random()*(max-min+1)+min
-->
                    <tr>
                  <tr><td colspan="2" height="70" align="center" valign="bottom">  <input type="text" name="cp2"  placeholder="Enter above captcha here">
                </tr>
                 <tr>
            <td colspan="2" height="70" align="center"><font class="form"> <input type="submit" value="Login" >
                </tr>
               </table>                 
             <center><font face="arial" size="4" color="#eee6e2" style="background: linear-gradient(rgba(0,0,0,0.6),rgba(0,0,0,0.6));">Not Registered?
             <a href="register.html"><font color="#f6a00b">Register Now</font></a></font></center>
               </form> 
                <div align='left'>
                <tr> 
                 <a href="index.jsp">
                 <font face="arial" size="7" color="#eee6e2">
                <span class="fa fa-arrow-circle-left" aria-hidden="true">
                </span></font>
               </a>
           </div>
 <%
 String a=request.getParameter("t1");
 String b=request.getParameter("t2");
  if(a!=null&&b!=null)
 {
     if(!request.getParameter("cp1").equals(request.getParameter("cp2")))
     {
      out.print("<center><font face='arial' color='red' size='4'><b>Invalid Capcha</b></font></center>");
      //Runtime.getRuntime().exit(0); //System.exit(0) will kill/stop server. Dont use that
      }
      else
     {
      Class.forName("org.postgresql.Driver");
      Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/ty","postgres","qwertyuiop");
      if(con==null)    
      out.print("Unable to connect");
     else
      {
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from cust_login where username='"+a+"' and password=crypt('"+b+"',password)");
      if(rs.next())
      {
              HttpSession hs=request.getSession(true);           
              hs.setAttribute("user",a);
              response.sendRedirect("custpage.jsp");            
       }
       out.print("<center><font face='arial' color='red' size='4'><b>Invalid username or password</b></font></center>");
       st.close();
    }
      con.close();
  }
}
%>
    </div>
   </body>
</html>

