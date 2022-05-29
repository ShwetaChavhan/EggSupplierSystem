<%@ page import="java.sql.*,java.util.Date,java.text.*" session="true" contentType="text/html;charset=UTF-8"%>
 <!DOCTYPE html>
<html lang="en">
    <head>
            <meta charset="UTF-8" content="width=device-width,initial-scale=1.0">
             <title>Yashshree Egg Suppliers</title>
             <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
              <link href="border.css" rel="stylesheet">
    </head>
    <body bgcolor="#392f2b">
            <center>
            <font class="form" size="4">
 <%
     String type=request.getParameter("type");
     int qty=Integer.parseInt(request.getParameter("qty"));
     
     if(type!=null)
     {
             Class.forName("org.postgresql.Driver");
             Connection con=DriverManager.getConnection("jdbc:postgresql://localhost/ty","postgres","qwertyuiop");                                                                 
             Statement st=con.createStatement();
             ResultSet rs,rs1,rs2;
             rs=st.executeQuery("select * from egg1");
                  int k=0,cno=0,id=0; 
                  float rate=0;
                 while(rs.next())
                   {
                      if(type.equals(rs.getString(1)))
                      {
                         if(rs.getInt(3)<qty)                        
                           k=1;                          
                        rate=rs.getFloat(2); 
                           break;
                      }
                  }
                 HttpSession hs=request.getSession(true);
                 String user=(String)hs.getAttribute("user");
                 rs1=st.executeQuery("select cno from cust_login where username='"+user+"'");
                 if(rs1.next())            //rs1.next() kelyashivay rs1.getInt() or any other method call hot nahi.
                 cno=rs1.getInt(1);
                       
                 rs2=st.executeQuery("select max(oid) from orders");
                  if(rs2.next())
                  id=rs2.getInt(1);
                                
                Date d1=new Date();
                String a=(d1.getYear()+1900)+"-"+(d1.getMonth()+1)+"-"+d1.getDate();
                String b=d1.getHours()+":"+d1.getMinutes()+":"+d1.getSeconds(); 
                String del=null; 
                if(k==1)
               {
                del=(d1.getYear()+1900)+"-"+(d1.getMonth()+1)+"-"+(d1.getDate()+2);
                st.executeUpdate("insert into orders values("+(id+1)+",'"+a+"','"+b+"','"+type+"',"+qty+",'"+del+"',"+cno+",1,'unpaid',incomplete,0)");
               }
               else
               {
                del=(d1.getYear()+1900)+"-"+(d1.getMonth()+1)+"-"+(d1.getDate()+1);
                st.executeUpdate("insert into orders(oid,odate,otime,otype,ordered_qty,deldate,cno,aid,payment_status,status) values("+(id+1)+",'"+a+"','"+b+"','"+type+"',"+qty+",'"+del+"',"+cno+",1,'unpaid','incomplete')");
               }
  
                float total=(float)qty*rate;              

                hs.setAttribute("oid",(id+1));
                hs.setAttribute("total",total);
                out.print("<br><br><br><font size='6'>Order placed successfully....<br>Total : ₹"+total+"0</font><br>");        
           try{
           SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
           Date d2=sdf.parse(del);
           sdf=new SimpleDateFormat("dd MMM yyyy");
            out.print("<br>Your order will be delivered on "+sdf.format(d2));          
         }
        catch(Exception e)
          {
             //ParseException
          }
          st.executeUpdate("update egg1 set qty=qty-"+qty+" where type='"+type+"'");           
          out.print("<br><a href='sms:+917887796882&body=Hi%20I%20would%20like%20to%20place%20a%20order'><font class='form' size='4'><i><u>Click Here To Send a SMS</u></i></font></a><br><br><br>");
          out.print("Confirm your order by doing payment.<br><br><button class='b1'  type='submit'><a href='paymentoption.jsp' style='text-decoration: none; color: #eee6e2;'>Confirm Order</a></button>");              
  }
 %>            
             </font>
           </center>
     </body>
</html>

