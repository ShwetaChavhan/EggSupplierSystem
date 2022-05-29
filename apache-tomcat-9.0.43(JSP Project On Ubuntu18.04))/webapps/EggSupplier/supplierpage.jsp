<%@ page session="true" import="java.util.Date,java.text.*"%>
<!DOCTYPE html>
<html lang="en">
    <head>
            <meta charset="UTF-8" content="width=device-width,initial-scale=1.0">
             <title>Yashshree Egg Suppliers</title>
             <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
              <link href="cust.css" rel="stylesheet">
              <link href="menu.css" type="text/css" rel="stylesheet">
              <link href="border.css" type="text/css" rel="stylesheet">
          <link rel="stylesheet" type="text/css" href="help.css">
           <link  rel="stylesheet" href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css">
    </head>
    <body bgcolor="#292929">      
      <div class="menu-bar" id="header">
        <ul>
       <img src="Images/icon11.png" width="55" height="55"></img>
       <color>Yashshree Egg Suppliers</color>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <li class="active"><a href="#">Home</a></li>
       <li><a href="supplieregg.jsp">Eggs </a></li>
       <li><a href="supplierorder.jsp">Orders</a>
        </li>
       <li><a href="supplierpayment.jsp">Payment</a></li>
        <li><a href="about.html">About</a></li>      
        <li><a href="#">
       <span class="fa fa-user-circle" aria-hidden="true"></span>
       <%          
           HttpSession hs=request.getSession(true);  //In java default timeout for session is 30 minutes
           //This value is specified in web.xml. We can change timout value in web.xml
           String S=(String)hs.getAttribute("supplier");
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
  </form>
             <div class="pos1"> 
              <form name="f1">
               <br><br>
              <input type="text" style="border: none; font-size:50pt; font-family: arial; color: white; text-align: center; background: rgba(0,0,0,0.1); width: 350px;" id="t1" disabled><br>
              <input type="text" style="border: none; font-size:25pt; font-family: serif; color: white; text-align: center; background: rgba(0,0,0,0.1); width: 400px;" id="t2" disabled>
              </form>
                <script language="javascript">
                     show();
                     function show()
                       {      
                          var dt=new Date();       
                          var h=dt.getHours();
                          var m=dt.getMinutes();     
                          var time='<%=new SimpleDateFormat("hh:mm a").format(new Date())%>';
                          var uname='<%=(String)hs.getAttribute("supplier") %>';
                           document.f1.t1.value=time;    
                           if(h>=12&&h<=16)
                           document.f1.t2.value="Good Afternoon,"+uname+".";    
                           else if(h>16&&h<=20)
                           document.f1.t2.value="Good Evening,"+uname+".";    
                           else if(h>20&&h<=24)
                           document.f1.t2.value="Good Night,"+uname+".";    
                           else
                           document.f1.t2.value="Good Morning,"+uname+".";                                                        
  
                          setTimeout("show()",60000);  
                       }
                  </script>
                         <br> At Yashshree Egg Supplier we understand that food industry<br>
                        constantly changing. Since our establishment <br>
                         back in 2010 we have gone through various<br> 
                         changes but have always remained loyal to our customers.<br>
	We guarantee you'll be satisfied with our quality <br>
                         products and excellent service. <br>
                          Contact us to learn about our services<br> 
                           and see how we may be of service to you.
     </div>
   <body>
  </html>

