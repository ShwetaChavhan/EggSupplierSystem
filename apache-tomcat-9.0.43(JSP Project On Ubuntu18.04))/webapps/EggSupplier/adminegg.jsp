<%@ page import="java.sql.*" contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
            <meta charset="UTF-8" content="width=device-width,initial-scale=1.0">
             <title>Yashshree Egg Suppliers</title>
             <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
              <link href="border.css" rel="stylesheet">
              <link href="menu.css" rel="stylesheet">
        <style>
           td,th
            {
               padding: 10px;
               border-bottom: 2px solid #eee6e2;
               font-family: arial;
               color: #eee6e2;
               font-size: 16px;
           }
           caption{
               font-family: serif;
               color: #eee6e2;
               font-size: 20px;
           }
      input[type=text]
      {
       width: 45px;    
       padding: 5px 5px;
       border: none; 
       font-family: arial;
       font-size: 16px;
       color: #eee6e2;
       background-color: #292929;
  }
   </style>
   <script type="text/javascript">
    function enable()
    {
    	if(document.getElementById("11").checked)
    	document.getElementById("1").disabled=false;
    	else
                        document.getElementById("1").disabled=true;
    		
    	if(document.getElementById("22").checked)
        	document.getElementById("2").disabled=false;
    	else
                        document.getElementById("2").disabled=true;

    	if(document.getElementById("33").checked)
        	document.getElementById("3").disabled=false;
    	else
                        document.getElementById("3").disabled=true;
    	
    	if(document.getElementById("44").checked)
        	document.getElementById("4").disabled=false;
    	else
                        document.getElementById("4").disabled=true;    
    }
   </script>
   </head>
    <body bgcolor="#292929">
      <div class="menu-bar" >
        <ul>
       <img src="Images/icon11.png" width="55" height="55"></img>
       <color>Yashshree Egg Suppliers</color> &nbsp; &nbsp; &nbsp;   
       <li class="active"><a href="adminpage.jsp">Home</a></li>
       <li align='right'><a href="adminsupplier.jsp">Suppliers</a></li>
        <li ><a href="customers.jsp">Customer</a></li>
       <li><a href="adminegg.jsp">Eggs</a></li>
        <li><a href="adminorder.jsp">Orders</a></li>
       <li><a href="adminpayment.jsp">Payment</a></li>
       <li><a href="adminlogin.jsp">Log Out</a></li>
     </ul> 
   </div>
      <div align='center'>   
      <br><br>
      <img   src="Images/hen8.jpg" width="170" height="170" class="rcorner4"></img>
       <img   src="Images/hen3.jpg" width="170" height="170" class="rcorner4"></img>
       <img   src="Images/egg1.jpg" width="170" height="170" class="rcorner4"></img>
     </div>
     <div align='center'>
      <%
      Class.forName("org.postgresql.Driver");
      Connection con=DriverManager.getConnection("jdbc:postgresql://localhost/ty","postgres","qwertyuiop");
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from egg1 order by type desc");
      /*Jevha egg1 table madhe kahi updation hotat tevha update zaleli row table chya bottom la jate.
        Ha Postgresql cha rule aahe.
        Pn Ashi jr row chi sequence change hot rahili tr updaterateqty.jsp madle logic fail hoil. Karan 
        tithe  first row hi country egg sathi consider karaun c1/c2 madhe changes kelet.
        Pn jr table show hotana aadhi broiler egg display zal ani jr tyat changes kele tr te changes 
         country egg la apply hotil.
        Mhanun record fetch krtana ase fetch kele ki country egg first asel. Tyasathi order by clause
        use kel.
     */
      out.print("<form method='post' action='updaterateqty.jsp'>");
      out.print("<table cellspacing='0' width='600'>");
      out.print("<caption><b>Egg Information<b></caption>");
      out.print("<tr bgcolor='#f6a00b'><th>Type</th> <th>Rate</th><th>Quantity Available</th></tr>");      
        if(rs.next()) 
         {
            out.print("<tr align='center'>");
            out.print("<td>"+rs.getString(1)+" eggs");
            out.print("<td><input type='checkbox'  name='c1' id='11' onclick='enable()'>₹<input type='text' name='t1' id='1' value='"+rs.getFloat(2)+"' disabled>/egg");
            out.print("<td><input type='checkbox' name='c2' id='22' onclick='enable()'><input type='text' name='t2' id='2' value='"+rs.getInt(3)+"' disabled>");
            out.print("</tr>");
         }
         if(rs.next()) 
         {
            out.print("<tr align='center'>");
            out.print("<td>"+rs.getString(1)+" eggs");
            out.print("<td><input type='checkbox' name='c3' id='33' onclick='enable()'>₹<input type='text' name='t3' id='3' value='"+rs.getFloat(2)+"' disabled>/egg");
            out.print("<td><input type='checkbox' name='c4' id='44' onclick='enable()'><input type='text' name='t4' id='4' value='"+rs.getInt(3)+"' disabled>");
            out.print("</tr>");
         }
            out.print("</table>");
   %>
        <br>
        <input type="submit" value="Update Rate/Quantity">
       </form>
        <br><br>
       </div>      
     </body>
</html>

