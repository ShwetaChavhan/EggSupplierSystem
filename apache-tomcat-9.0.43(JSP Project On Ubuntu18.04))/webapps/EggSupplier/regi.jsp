<%@ page import="java.sql.*, javax.swing.JOptionPane" %>
<!DOCTYPE html>
<html lang="en">
    <head>
            <meta charset="UTF-8" content="width=device-width,initial-scale=1.0">
             <title>Yashshree Egg Suppliers</title>
             <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
              <link href="border.css" rel="stylesheet">
    </head>
 <body bgcolor="#392f2b">
<form method="post" action="custlogin.jsp">
<font color="#eee6e2" size="6" face="arial">
 <center>
 <%
    Class.forName("org.postgresql.Driver");
    Connection con=DriverManager.getConnection("jdbc:postgresql://localhost/ty","postgres","qwertyuiop");
    if(con==null)
    out.print("Unable to connect");    
    else
   {     
     String a1,a2,a3,a4,a5,a6,a7;
     a1=request.getParameter("t1");
     a2=request.getParameter("t2");
     a3=request.getParameter("r1");
     a4=request.getParameter("t3");
     a5=request.getParameter("t4");
     a6=request.getParameter("t5");
     a7=request.getParameter("t6");
     if(a1!=null&&a2!=null&&a3!=null&&a4!=null&&a5!=null&&a6!=null&&a7!=null)
    {
     Statement st=con.createStatement();
     ResultSet rs=st.executeQuery("select max(cno) from cust1");
      if(rs.next())       
      {
         int k=rs.getInt(1);
         k=k+1;
         try
         {
         st.executeUpdate("insert into cust1 values("+k+",'"+a1+"','"+a2+"','"+a3+"','"+a4+"','"+a5+"')");
         }
         catch(Exception e)
         {
           JOptionPane.showMessageDialog(null," Mobile number must be unique");           
         }
         try{
         st.executeUpdate("insert into cust_login(username,password,cno) values('"+a6+"',crypt('"+a7+"',gen_salt('bf')),"+k+")");
          }
          catch(Exception e)
         {
           JOptionPane.showMessageDialog(null,"Username already exist..");
          }
         out.print("<br><br><br><br><img src='Images/icon16.png' width='75' height='75'></img><br>Thanks for registering");
         out.print("<br><br><input type='submit' value='Login'>");
       }
    }   
  }
%>
    </center>
    </font>
   </form>
   </body>
</html>

