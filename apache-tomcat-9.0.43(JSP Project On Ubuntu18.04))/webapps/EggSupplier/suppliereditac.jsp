<%@ page session="true" import="java.sql.*,java.util.Date" contentType="text/html;charset=UTF-8"%>
<%!
       HttpSession hs;
       String S;
       Connection con;
       Statement st;
%>
<!DOCTYPE html>
<html lang="en">
    <head>
            <meta charset="UTF-8" content="width=device-width,initial-scale=1.0">
             <title>Yashshree Egg Suppliers</title>
             <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
              <link href="border.css" rel="stylesheet" type="text/css">
              <link href="menu.css" rel="stylesheet" type="text/css">
              <link href="help.css" rel="stylesheet" type="text/css">
    </head>
    <body bgcolor="#292929">
      <div class="menu-bar" id="header">
        <ul>
       <img src="Images/icon11.png" width="55" height="55"></img>
       <color>Yashshree Egg Suppliers</color>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <li class="active"><a href="supplierpage.jsp">Home</a></li>
       <li><a href="supplieregg.jsp">Eggs </a></li>
       <li><a href="supplierorder.jsp">Orders</a>
        </li>
       <li><a href="supplierpayment.jsp">Payment</a></li>
        <li><a href="about.html">About</a></li>      
        <li><a href="#">
       <span class="fa fa-user-circle" aria-hidden="true"></span>
       <%          
           hs=request.getSession(true);  //In java default timeout for session is 30 minutes
           //This value is specified in web.xml. We can change timout value in web.xml
           S=(String)hs.getAttribute("supplier");
            if(S!=null)
            out.print(S); 
            else
            out.print("<script>alert('Your Session has been expired'); window.location.assign('supplierlogin.jsp');</script>");            
      %>
        </a>
           <div class=sub-menu-2>
              <ul>
                 <li><a href="supplieraccount.jsp">Account</a></li>
                 <li><a href="supplierlogin.jsp">Log Out</a></li>                    
               </ul>
           </div>
         </li>
       </ul> 
   </div>

      <div style="background-image: linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.7)),url(Images/egg3.jpg); background-position: center; background-size: cover; height: 150vh; ">
      <br><br><br><br>
      <%
       Class.forName("org.postgresql.Driver");
       Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/ty","postgres","qwertyuiop");
       Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from supplier where sid=(select sid from supplier_login where username='"+S+"')");
        ResultSet rs1=st.executeQuery("select password from supplier_login where username='"+S+"'");
        String pass=null;
        if(rs1.next()) 
        pass=rs1.getString(1);
       out.print("<table  border='2' style='border-radius: 7px; border-color: #f6a00b; margin: 0 auto;'  width='400' height='570' cellspacing='0' cellpadding='0' rules='none'>");
       out.print("<tr align='center'><td colspan='2'><font  class='form'  size='6'><b><span class='fa fa-user-circle' aria-hidden='true'></span></b></font>");
       out.print("<font class='form'  size='5'><b> Your Account Information</b></font><br><br></tr>");
       out.print("<form method='post' action='suppliereditac.jsp' id='edit'>");
        
        while(rs.next())
          {            
      // We can keep text field totally uninteractive using disabled keyword.
      out.print("<tr align='center'><td style='font-family: arial; color: #eee6e2; font-size:13pt;'>Username :<td><input type='text' name='t1' value='"+S+"' ></tr>");
      out.print("<tr align='center'><td  style='font-family: arial; color: #eee6e2; font-size:13pt;' width='30%'>Password :<td><input type='password' name='t2' value='"+pass+"' ></tr>");
      out.print("<tr align='center'><td  style='font-family: arial; color: #eee6e2; font-size:13pt;'>Name :<td><input type='text' name='t3' value='"+rs.getString(2)+"' ></tr>");
      out.print("<tr align='center'><td  style='font-family: arial; color: #eee6e2; font-size:13pt;'>Birthdate :<td><input type='date' name='t4' value='"+rs.getString(3)+"' ></tr>");
      out.print("<tr align='center'><td  style='font-family: arial; color: #eee6e2; font-size:13pt;'>Phone :<td><input type='text' name='t5' value='"+rs.getLong(4)+"' ></tr>");
      out.print("<tr align='center'><td  style='font-family: arial; color: #eee6e2; font-size:13pt;'>Address :<td><input type='text' name='t6' value='"+rs.getString(5)+"'></tr>");
      out.print("<tr><td colspan='2' height='70' align='center' valign='center'><input type='submit' value='Update Account'></tr>");                   
      out.print("</form>");           
      out.print("</table>");
         }    
      %>
    <font class="form" size="4"><center>
     <%
       Class.forName("org.postgresql.Driver");
       con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/ty","postgres","qwertyuiop");
        if(S==null)
        out.print("<script>alert('Your Session has been expired'); window.location.assign('custlogin.jsp');</script>");            
        st=con.createStatement();     
        String a1=request.getParameter("t1");
        String a2=request.getParameter("t2");
        String a3=request.getParameter("t3");
        String a4=request.getParameter("t4");
        String a5=request.getParameter("t5");
        String a6=request.getParameter("t6");
         ResultSet r;
         if(a1!=null)
          {
             r=st.executeQuery("select sid from supplier_login where username='"+S+"'");  
             int sid=0;
             if(r.next())
             sid=r.getInt(1);
             try{
             st.executeUpdate("update supplier_login set username='"+a1+"' where username='"+S+"'");

              if(a2.length()<4) 
              out.print("<script> alert('Password must contain atleast 4 characters') </script>");                  
              else
              st.executeUpdate("update supplier_login set password=crypt('"+a2+"',gen_salt('bf')) where username='"+a1+"'");

              st.executeUpdate("update supplier set sname='"+a3+"' where sid="+sid);
              st.executeUpdate("update supplier set sbday='"+a4+"' where sid="+sid);
 
            try{
             st.executeUpdate("update supplier set sphone="+a5+" where sid="+sid);
             }
             catch(Exception e)
             {
               out.print("<script> alert('Mobile number already exist') </script>");
             }

              st.executeUpdate("update supplier set saddr='"+a6+"' where sid="+sid);

              out.print("<script>alert('Account Updated Successfully. Login with new details'); window.location.assign('supplierlogin.jsp'); </script>");    
           }
          catch(Exception e)
            {
                 out.print("<script> alert('Username already exist. Choose another name') </script>");
            }
       }               
  %>
        </center>
      </font>
    </div>

