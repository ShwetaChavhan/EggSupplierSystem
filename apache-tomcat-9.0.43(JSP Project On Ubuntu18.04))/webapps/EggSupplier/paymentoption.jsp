<!DOCTYPE html>
<html lang="en">
    <head>
             <meta charset="UTF-8" content="width=device-width,initial-scale=1.0">
             <title>Yashshree Egg Suppliers</title>
             <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
              <link href="border.css" rel="stylesheet">
    </head>
    <body bgcolor="#292929">
             <br>
         <table  border="2" style="border-radius: 15px; " bordercolor="#f6a00b" bgcolor="#392f2b" width="400" height="410"   align="center" rules="none">
                 <tr> 
                   <td width="35%" align="right">
                 <img src="Images/icon11.png"  width="90" height="90"></img>
                 <td><font face="arial" color="#f6a00b" size="6" >   Yashshree Egg &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;Suppliers</font>
                 </tr>
                    <tr> 
                   <td colspan="2" align="center"><font class="form" size="5" >Select Payment Method..<hr width="100"></hr></font>
                  </tr>
          <tr><td colspan="2" align="center">
               <form method="post" action="custupi.jsp">
               <input type="submit" style="width: 200pt;" value="UPI">
              </form>
              </tr>   
          <tr><td colspan="2" align="center">
               <form method="post" action="custdebit.jsp">
               <input type="submit" style="width: 200pt;" value="Debit/Credit Card">
               </form>
              </tr>   
          <tr><td colspan="2" align="center">
               <form method="post" action="custnet.jsp">
               <input type="submit" style="width: 200pt;" value="Net Banking">
               </form>
               </tr>   
          <tr><td colspan="2" align="center">
               <form method="post" action="custcash.jsp">
               <input type="submit" style="width: 200pt;" value="Cash">
               </form>
              </tr>   
         </table>                                 
        <center><font color='red' size='4' face='arial'><b>Note : You can not cancel order after doing payment</b></font>
     </body>
</html>
