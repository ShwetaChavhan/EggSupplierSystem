/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.43
 * Generated at: 2021-06-23 04:02:30 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.Date;

public final class editaccount_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {


       HttpSession hs;
       String S;
       Connection con;
       Statement st;

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.util.Date");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\n');
      out.write("\n");
      out.write(" <!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("            <meta charset=\"UTF-8\" content=\"width=device-width,initial-scale=1.0\">\n");
      out.write("             <title>Yashshree Egg Suppliers</title>\n");
      out.write("             <link href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("              <link  rel=\"stylesheet\"  type=\"text/css\"  href=\"account.css\">\n");
      out.write("              <link  rel=\"stylesheet\"  type=\"text/css\"  href=\"menu.css\">\n");
      out.write("              <link  rel=\"stylesheet\"  type=\"text/css\"  href=\"help.css\">\n");
      out.write("    </head>\n");
      out.write("    <body bgcolor=\"#292929\">\n");
      out.write("      <div class=\"menu-bar\" id=\"header\">\n");
      out.write("        <ul>\n");
      out.write("       <img src=\"Images/icon11.png\" width=\"55\" height=\"55\"></img>\n");
      out.write("       <color>Yashshree Egg Suppliers</color>\n");
      out.write("       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("   <!--         <a href=\"custaccount.php\">\n");
      out.write("<!--   <button class=\"b2\" form=\"accountform\" type=\"submit\" formaction=\"custaccount.php\" formmethod=\"post\" > -->\n");
      out.write("  <!-- <input class=\"cust\" type=\"text\"  name=\"u1\" value=\" -->\n");
      out.write("        <li class=\"active\"><a href=\"custpage.jsp\">Home</a></li>\n");
      out.write("       <li><a href=\"custegg.jsp\">Eggs </a></li>\n");
      out.write("       <li><a href=\"#\">Orders</a>\n");
      out.write("           <div class=sub-menu-1>\n");
      out.write("              <ul>\n");
      out.write("                 <li><a href=\"neworder.html\">New Order</a></li>\n");
      out.write("                 <li><a href=\"custorder.jsp\">Previous Orders</a></li>                    \n");
      out.write("               </ul>\n");
      out.write("           </div>\n");
      out.write("       </li>\n");
      out.write("       <li><a href=\"custpayment.jsp\">Payment</a></li>\n");
      out.write("        <li><a href=\"about.html\">About</a></li>      \n");
      out.write("        <li><a href=\"#contact\">Contact</a></li>      \n");
      out.write("        </ul> \n");
      out.write("   </div>\n");
      out.write("      <div style=\"background-image: linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.7)),url(Images/egg3.jpg); background-position: center; background-size: cover; height: 150vh; \">\n");
      out.write("      <br><br><br><br>\n");
      out.write("      ");

       Class.forName("org.postgresql.Driver");
       con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/ty","postgres","qwertyuiop");
        hs=request.getSession(true);
        S=(String)hs.getAttribute("user");
         if(S==null)
       out.print("<script>alert('Your Session has been expired'); window.location.assign('custlogin.jsp');</script>");            
        st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from cust1 where cno=(select cno from cust_login where username='"+S+"')");
        ResultSet rs1=st.executeQuery("select password from cust_login where username='"+S+"'");
        String pass=null;
        if(rs1.next()) 
        pass=rs1.getString(1);
        out.print("<table  border='2' style='border-radius: 7px; border-color: #f6a00b; margin: 0 auto;'  width='400' height='570' cellspacing='0' cellpadding='0' rules='none'>");
        out.print("<tr align='center'><td colspan='2'><font  class='form'  size='6'><b><span class='fa fa-user-circle' aria-hidden='true'></span></b></font>");
        out.print("<font class='form'  size='5'><b> Your Account Information</b></font><br><br></tr>");
        out.print("<form method='post' action='editaccount.jsp' id='edit'>");
        
        while(rs.next())
          {            
      // We can keep text field totally uninteractive using disabled keyword.
      out.print("<tr align='center'><td style='font-family: arial; color: #eee6e2; font-size:13pt;'>Username :<td><input type='text' name='t1' value='"+S+"' ></tr>");
      out.print("<tr align='center'><td  style='font-family: arial; color: #eee6e2; font-size:13pt;' width='30%'>Password :<td><input type='password' name='t2' value='' required></tr>");
      out.print("<tr align='center'><td  style='font-family: arial; color: #eee6e2; font-size:13pt;'>Name :<td><input type='text' name='t3' value='"+rs.getString(2)+"' ></tr>");
      out.print("<tr align='center'><td  style='font-family: arial; color: #eee6e2; font-size:13pt;'>Birthdate :<td><input type='date' name='t4' value='"+rs.getString(3)+"' ></tr>");
      String cgender=rs.getString(4);
      if(cgender.equals("Male"))
      out.print("<tr align='center'><td  style='font-family: arial; color: #eee6e2; font-size:13pt;' height='50px'>Gender :<td><input type='radio' name='t5' value='Male'><font class='form'  size='4' checked> Male &nbsp; &nbsp;<input type='radio' name='t5' value='Female'> Female</font></tr>");
      else
      out.print("<tr align='center'><td  style='font-family: arial; color: #eee6e2; font-size:13pt;' height='50px'>Gender :<td><input type='radio' name='t5' value='Male'><font class='form'  size='4' checked> Male &nbsp; &nbsp;<input type='radio' name='t5' value='Female' checked> Female</font></tr>");
      out.print("<tr align='center'><td  style='font-family: arial; color: #eee6e2; font-size:13pt;'>Phone :<td><input type='text' name='t6' value='"+rs.getLong(5)+"' ></tr>");
      out.print("<tr align='center'><td  style='font-family: arial; color: #eee6e2; font-size:13pt;'>Address :<td><input type='text' name='t7' value='"+rs.getString(6)+"' ></tr>");
      out.print("<tr><td colspan='2' height='70' align='center' valign='center'><input type='submit' value='Update Account'></tr>");                   
      out.print("</form>");           
      out.print("</table>");
         }    
      
      out.write("\n");
      out.write("        <font class=\"form\" size=\"4\"><center>\n");
      out.write("  ");

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
        String a7=request.getParameter("t7");
        ResultSet r;
         if(a1!=null)
          {
             r=st.executeQuery("select cno from cust_login where username='"+S+"'");  
             int cno=0;
             if(r.next())
             cno=r.getInt(1);
             try{
             st.executeUpdate("update cust_login set username='"+a1+"' where username='"+S+"'");

              if(a2.length()<4) 
              out.print("<script> alert('Password must contain atleast 4 characters') </script>");                  
              else
              st.executeUpdate("update cust_login set password=crypt('"+a2+"',gen_salt('bf')) where username='"+a1+"'");
   
              st.executeUpdate("update cust1 set cname='"+a3+"' where cno="+cno);
              st.executeUpdate("update cust1 set cbday='"+a4+"' where cno="+cno);
              st.executeUpdate("update cust1 set cgender='"+a5+"' where cno="+cno);
   
           try{
             st.executeUpdate("update cust1 set cphone="+a6+" where cno="+cno);
             }
             catch(Exception e)
             {
               out.print("<script> alert('Mobile number already exist') </script>");
             }
        
              st.executeUpdate("update cust1 set caddr='"+a7+"' where cno="+cno);
             out.print("<script>alert('Account Updated Successfully. Login with new details'); window.location.assign('custlogin.jsp'); </script>");    
          }
              catch(Exception e)
              {
                out.print("<script> alert('Username already exist. Choose another name') </script>");
              }
       }               
  
      out.write("\n");
      out.write("         </center></font>\n");
      out.write("    </div>\n");
      out.write("          <!--Update Page-->\n");
      out.write("           <table border=\"0\" width=\"100%\" height=\"200\" bgcolor=\"#eee6e2\">\n");
      out.write("            <tr align=\"center\">\n");
      out.write("               <td colspan=\"2\"><font face=\"arial\" size=\"5\" color=\"#453832\"><br>Latest Updates On Bird Flu<hr width=\"170\"></font><br>\n");
      out.write("                <img src=\"Images/news1.png\" width=\"400\" height=\"300\">\n");
      out.write("              <br><br>\n");
      out.write("          </tr>        \n");
      out.write("          </table>        \n");
      out.write("<!--help page--> \n");
      out.write("  \n");
      out.write("    <section id=\"help\">\n");
      out.write("         <br><center><font face=\"arial\" color=\"#eee6e2\" size=\"5\">Help</font>\n");
      out.write("        <br><hr width=\"50\"></hr><br></center>\n");
      out.write("          <div class=\"container\">\n");
      out.write("              <div class=\"accordion\">\n");
      out.write("                  <div class=\"accordion-item\" id=\"question1\">\n");
      out.write("                       <a class=\"accordion-link\" href=\"#question1\">\n");
      out.write("                         How to register (create account)?\n");
      out.write("                          <i class=\"icon ion-md-add\"></i>\n");
      out.write("                          <i class=\"icon ion-md-remove\"></i>\n");
      out.write("                       </a>\n");
      out.write("                       <div class=\"answer\">\n");
      out.write("                        <p>\n");
      out.write("                     1. Visit home page of website. <br>\n");
      out.write("                     2. Click on Register. Then enter your correct details. <br>\n");
      out.write("                     3. Click on Submit. Now you are registered. <br>\n");
      out.write("                     4. Click on Login. Enter your username and password. Click on Login button. <br>\n");
      out.write("                     5. Now you can place order, can see egg details, can do payment and see order details.    <br>\n");
      out.write("                       </p>\n");
      out.write("                       </div>\n");
      out.write("                  </div>\n");
      out.write("              </div>\n");
      out.write("           </div>           \n");
      out.write("          <div class=\"container\">\n");
      out.write("              <div class=\"accordion\">\n");
      out.write("                  <div class=\"accordion-item\" id=\"question2\">\n");
      out.write("                       <a class=\"accordion-link\" href=\"#question2\">\n");
      out.write("                               How to place order?\n");
      out.write("                          <i class=\"icon ion-md-add\"></i>\n");
      out.write("                          <i class=\"icon ion-md-remove\"></i>\n");
      out.write("                       </a>\n");
      out.write("                       <div class=\"answer\">\n");
      out.write("                        <p>\n");
      out.write("  1. Login to your account. <br>\n");
      out.write("  2. Click on orders. Now from drop down list select New Order option.<br>\n");
      out.write("  3. Now select type of egg you wish to order. <br>\n");
      out.write("  4. Type egg quantity. The minimum quantity should be 10.You can not enter quantity less than 10.  <br>\n");
      out.write("  5. Enter your registered mobile no with your account.  <br>\n");
      out.write("  6. Click on place order button.  <br>\n");
      out.write("  7. Click on Send a SMS (optional).  <br>\n");
      out.write("  8. Click on Confirm Order button to confirm your order. You will land to payment page.  <br>\n");
      out.write("                        </p>\n");
      out.write("                       </div>\n");
      out.write("                  </div>\n");
      out.write("              </div>\n");
      out.write("           </div>\n");
      out.write("          <div class=\"container\">\n");
      out.write("              <div class=\"accordion\">\n");
      out.write("                  <div class=\"accordion-item\" id=\"question3\">\n");
      out.write("                       <a class=\"accordion-link\" href=\"#question3\">\n");
      out.write("                           Where to see order details?\n");
      out.write("                          <i class=\"icon ion-md-add\"></i>\n");
      out.write("                          <i class=\"icon ion-md-remove\"></i>\n");
      out.write("                       </a>\n");
      out.write("                       <div class=\"answer\">\n");
      out.write("                        <p>\n");
      out.write(" 1. Click on Orders in top panel.  <br>\n");
      out.write(" 2. Select Previous Orders option.  <br>\n");
      out.write(" 3. Type your account password in text box.  <br>\n");
      out.write(" 4. Click on Display Orders button.  <br>\n");
      out.write(" 5. Now all orders will be displayed in a table.  <br>\n");
      out.write("                      </p>\n");
      out.write("                       </div>\n");
      out.write("                  </div>\n");
      out.write("              </div>\n");
      out.write("           </div>\n");
      out.write("          <div class=\"container\">\n");
      out.write("              <div class=\"accordion\">\n");
      out.write("                  <div class=\"accordion-item\" id=\"question4\">\n");
      out.write("                       <a class=\"accordion-link\" href=\"#question4\">\n");
      out.write("                           How to do payment?\n");
      out.write("                          <i class=\"icon ion-md-add\"></i>\n");
      out.write("                          <i class=\"icon ion-md-remove\"></i>\n");
      out.write("                       </a>\n");
      out.write("                       <div class=\"answer\">\n");
      out.write("                        <p>\n");
      out.write("1. Once order is placed after clicking on Confirm Order button you will land to payment form.  <br>\n");
      out.write("2. Now select payment method you want.  <br>\n");
      out.write("3. If you selected payment by debit card then enter details like name on card, card no. ,expiray date, cvv then click on proceed to pay.  <br>\n");
      out.write("4. If you selected UPI payment then enter your upi id. Then click on proceed to pay. \n");
      out.write("    Now a request will be sent to your upi app/*99#. Approve the request by entering your upi PIN.  <br>\n");
      out.write("5. If you selected credit card then -------------   <br>\n");
      out.write("6. If you selected payment by mobile banking then ----------   <br>\n");
      out.write("                       </p>\n");
      out.write("                       </div>\n");
      out.write("                  </div>\n");
      out.write("              </div>\n");
      out.write("           </div>\n");
      out.write("           \n");
      out.write("          <div class=\"container\">\n");
      out.write("              <div class=\"accordion\">\n");
      out.write("                  <div class=\"accordion-item\" id=\"question5\">\n");
      out.write("                       <a class=\"accordion-link\" href=\"#question5\">\n");
      out.write("                            How to update account?\n");
      out.write("                          <i class=\"icon ion-md-add\"></i>\n");
      out.write("                          <i class=\"icon ion-md-remove\"></i>\n");
      out.write("                       </a>\n");
      out.write("                       <div class=\"answer\">\n");
      out.write("                        <p>\n");
      out.write("  1. Click on your name in top panel.  <br>\n");
      out.write("  2. Now your account information will be displayed. <br>\n");
      out.write("  3. Click on Edit Account button.  <br>\n");
      out.write("  4. Change the field you want to edit.  <br>\n");
      out.write("  5. Click on Update button.  <br>\n");
      out.write("  6. Now \"Account updated successfully\" message will be shown.  <br>\n");
      out.write("  7. If above message is not shown and messages like Unable to update name, Unable to update password etc. are shown then refresh the page and try again.  <br>\n");
      out.write("                       </p>\n");
      out.write("                       </div>\n");
      out.write("                  </div>\n");
      out.write("              </div>\n");
      out.write("           </div>\n");
      out.write("     </section>\n");
      out.write("      <!-- Services Page-->\n");
      out.write("     <table border=\"0\" align=\"center\" width=\"100%\" height=\"300\" bgcolor=\"#eee6e2\" id=\"services\">\n");
      out.write("      <tr>   \n");
      out.write("      <td align=\"center\" colspan=\"3\"><br><font face=\"arial\" size=\"5\" color=\"#292929\">\n");
      out.write("         Our Services</font><hr width=\"100\"></hr><br><br></tr>\n");
      out.write("      <tr>\n");
      out.write("  <td align=\"center\"><img src=\"Images/hen12.jpg\" class=\"rcorner\"  width=\"300\"  height=\"250\"></td>\n");
      out.write("   <td align=\"center\"><img src=\"Images/hen5.jpg\" class=\"rcorner\"  width=\"300\"  height=\"250\"> </td>\n");
      out.write(" <td align=\"center\" ><img src=\"Images/service.jpg\" class=\"rcorner\"  width=\"300\"  height=\"250\"> </td>\n");
      out.write("   </tr>\n");
      out.write("    <tr align=\"center\"><td><font face=\"arial\" size=\"4\" color=\"#292929\">Home Delivery</font></td>\n");
      out.write("   <td><font face=\"arial\" size=\"4\" color=\"#292929\">Best Quality Eggs</font></td>\n");
      out.write("  <td><font face=\"arial\" size=\"4\" color=\"#292929\">24x7 access </font></td>\n");
      out.write("  </tr>\n");
      out.write("     <tr> \n");
      out.write("        <td colspan=\"2\">\n");
      out.write("          <a href=\"custlogin.php\"><font face=\"arial\" size=\"7\" color=\"#392f2b\">\n");
      out.write("         <span class=\"fa fa-arrow-circle-o-left\" aria-hidden=\"true\"></span></font>\n");
      out.write("          </a>\n");
      out.write("\n");
      out.write("     <td colspan=\"2\" align=\"right\">\n");
      out.write("     <a href=\"register.html\"><font face=\"arial\" size=\"7\" color=\"#292929\">\n");
      out.write("         <span class=\"fa fa-arrow-circle-o-right\" aria-hidden=\"true\"></span></font>\n");
      out.write("       </a>\n");
      out.write("     </tr>     \n");
      out.write("   </table><br>\n");
      out.write("      <!--Contact Page-->\n");
      out.write("        <table border=\"0\" width=\"100%\" height=\"300\" bgcolor=\"#292929\" id=\"contact\">\n");
      out.write("         <tr align=\"center\"><td><br><br><font face=\"arial\" color=\"#eee6e2\" size=\"5\">\n");
      out.write("         Contact Us</font><br><hr width=\"100\"></hr></td></tr>\n");
      out.write("          <tr align=\"center\">\n");
      out.write("          <td><br><a href=\"malito:shwetachavhan435@gmail.com\"> <font face=\"arial\" size=\"4\" color=\"#eee6e2\">\n");
      out.write("           <br>shwetachavhan435@gmail.com</font></a>\n");
      out.write("           </tr>\n");
      out.write("             <tr align=\"center\">\n");
      out.write("                <td ><font face=\"arial\" size=\"4\" color=\"#eee6e2\"><br>Shrirampur, Maharashtra, India</font><br><br>\n");
      out.write("            </tr>\n");
      out.write("            <tr align=\"center\">\n");
      out.write("               <td>\n");
      out.write("               <font face=\"arial\" size=\"5\" color=\"#eee6e2\">\n");
      out.write("              <span class=\"fa fa-facebook\" aria-hidden=\"true\"></span> &nbsp; &nbsp;\n");
      out.write("              <span class=\"fa fa-linkedin\" aria-hidden=\"true\"></span></font> &nbsp; &nbsp;&nbsp;\n");
      out.write("               \n");
      out.write("             <a href=\"https://wa.me/917887796982\"><font face=\"arial\" size=\"5\" color=\"#eee6e2\">\n");
      out.write("                 <span class=\"fa fa-whatsapp\" aria-hidden=\"true\"></span></font></a>\n");
      out.write("           &nbsp; &nbsp; <a href=\"tel:+917887796982\"><font face=\"arial\" size=\"5\" color=\"#eee6e2\">\n");
      out.write("               <span class=\"fa fa-phone\" aria-hidden=\"true\"></span></font></a>                           \n");
      out.write("            </tr>\n");
      out.write("            <tr align=\"center\">\n");
      out.write("       <td height=\"40\"><font face=\"arial\" size=\"4\" color=\"#eee6e2\">\n");
      out.write("    <span class=\"fa fa-copyright\" aria-hidden=\"true\"></span>&nbsp; ");
Date d1=new Date(); out.print(d1.getYear()+1900);
      out.write(" YashshreeEggSuppliers</font>\n");
      out.write("             </tr>\n");
      out.write("        <tr align=\"right\">\n");
      out.write("            <td >\n");
      out.write("            <a href=\"#header\"><font face=\"arial\" size=\"7\" color=\"#eee6e2\">\n");
      out.write("          <span class=\"fa fa-arrow-circle-up\" aria-hidden=\"true\"></span></font>\n");
      out.write("               </a>\n");
      out.write("           </tr>\n");
      out.write("     </table>\n");
      out.write("   </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
