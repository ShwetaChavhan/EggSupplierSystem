<%@ page session="true" contentType="text/html;charset=UTF-8"%>
<html>
  <head>
   <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">    
   <link rel="stylesheet" type="text/css" href="border.css">
   <title>www.yes.freevar.com</title></head>
  <body bgcolor="#392f2b">
    <br><br>
    <center>
    <img src="Images/fail2.png" width="100" height="100">
    <font color="#eee6e2" size="6" face="arial">
    <br>Payment Failed<br>
    <%  HttpSession hs=request.getSession(true); 
           out.print("₹"+(float)hs.getAttribute("total")+"0");
    %>
    </font> 
    <form action="custpage.jsp">
    <br>    <input type="submit" value="Home">
    </form>
   </center>
  </body>
</html>
