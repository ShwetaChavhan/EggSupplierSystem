<!DOCTYPE html>
<html lang="en">
    <head>
            <meta charset="UTF-8" content="width=device-width,initial-scale=1.0">
             <title>Yashshree Egg Suppliers</title>
             <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
              <link href="border.css" type="text/css" rel="stylesheet">
      <style>
       input[type=text]
       {
           width: 230px;
       }
       input[type=password]
       {
           width: 230px;
       }
      </style>
     </head>
    <body bgcolor="#292929">       
     <div align="center" style="background-image: linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4)),url('Images/hen8.jpg'); background-position: center; background-size: cover; height: 120vh;"> 
        <form method="post" action="adminlogin.jsp"> <br> <br>
           <table  border="3" bgcolor="#392f2b" bordercolor="#f6a00b"  style="border-radius: 15px;"  width="350" height="450" bgcolor="#292929" rules="none">
               <tr align="center"> 
                 <td>
                 <img src="Images/icon11.png"  width="80" height="80"></img>
                 <td align="left"><font face="arial" color="#f6a00b" size="6" >   Yashshree Egg &nbsp; &nbsp; &nbsp; Suppliers</font>
                 </tr>
                   <tr><td colspan="2" align="center"><font face="arial" color="#eee6e2" size="5">Login Here<hr width="100"></hr></font></tr>
                  <tr>
                 <td width="30%" align="left" colspan="2"><font class="form" size="4">&nbsp; &nbsp; &nbsp; &nbsp; Username </font>
                 </tr>
                 <tr><td colspan="2" align="center"><font class="form"> <input type="text" name="t1" required  value='<% if(request.getParameter("t1")!=null) out.print(request.getParameter("t1"));%>'>
                 </tr>
                 <tr>
               <td width="30%" align="left" colspan="2"><font class="form" size="4"> &nbsp; &nbsp; &nbsp; &nbsp; Password </font>
                </tr>
                <tr><td colspan="2" align="center"><font class="form"> <input type="password" name="t2" value="">
                 </tr>
                 <tr>
               <td colspan="2" align="center" height="15%"><font class="form"> <input type="submit" value="Login" >
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
            </div>
 <%
   String a=request.getParameter("t1");  //parameter name should be in double quote
   String b=request.getParameter("t2");
   if(a!=null&&b!=null)
   {
             if(a.equals("shweta")&&b.equals("css2021"))  //in java strings are not compared using ==
            { 
               out.print("<script> window.location.assign('adminpage.jsp'); </script>");
            }
           else
             out.print("<center><font face='arial' color='red' size='4'><b>Invalid username or password</b></font></center>");
     }
%>

      </body>
   </html>

