/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.43
 * Generated at: 2021-06-22 13:23:25 UTC
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
import java.text.*;

public final class custbill_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.text");
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

      out.write("\n");
      out.write("<html>\n");
      out.write("  <head>\n");
      out.write("   <link href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\">    \n");
      out.write("   <link rel=\"stylesheet\" type=\"text/css\" href=\"border.css\">\n");
      out.write("   <title>www.yes.freevar.com</title>\n");
      out.write("    <style>\n");
      out.write("    th,td\n");
      out.write("    {\n");
      out.write("      padding: 12px;\n");
      out.write("      border-bottom: 1px solid hsl(200,5%,80%,0.6);      \n");
      out.write("    }\n");
      out.write("    table{\n");
      out.write("         font-family: arial;\n");
      out.write("         color: #eee6e2;\n");
      out.write("         size: 17px;\n");
      out.write("       }\n");
      out.write("   </style>\n");
      out.write("  <script>\n");
      out.write("    function myPrint()\n");
      out.write("    {\n");
      out.write("       window.print();\n");
      out.write("    } \n");
      out.write("  </script>\n");
      out.write("  </head>\n");
      out.write("  <body bgcolor=\"#392f2b\">    \n");
      out.write("    <div align=\"center\">\n");
      out.write("    <br>\n");
      out.write("            <img src=\"Images/icon18.png\" width=\"55\" height=\"55\">\n");
      out.write("            <br>\n");
      out.write("            <font size=\"5\" face=\"arial\" color=\"#eee6e2\"><b>Thank you for your payment</b><br></font>\n");
      out.write("     <table cellspacing='0' width='350'>      \n");
      out.write("    ");

         Class.forName("org.postgresql.Driver");
         Connection con=DriverManager.getConnection("jdbc:postgresql://localhost/ty","postgres","qwertyuiop");                                                                 
         Statement st=con.createStatement();      
         HttpSession hs=request.getSession(true);
         String S=(String)hs.getAttribute("user");
         int oid=(int)hs.getAttribute("oid");
         ResultSet rs;
         rs=st.executeQuery("select otype from orders where oid="+oid);
         String type=null;
         float rate=0;
         if(rs.next())
         type=rs.getString(1);
         rs=st.executeQuery("select rate from egg1 where type='"+type+"'");
         if(rs.next())
         rate=rs.getInt(1);
         long pid=(long)hs.getAttribute("pid");
         rs=st.executeQuery("select pamount,pdate,ptime,ptype from payment where pid="+pid);
         float pamount=0;
         String pdate=null,ptime=null,ptype=null;       
         if(rs.next())
         {
           pamount=rs.getFloat(1);
           pdate=rs.getString(2);
           ptime=rs.getString(3);
           ptype=rs.getString(4);
         }
        out.print("<tr><td colspan='2'>Dear Customer,<br>Details of your transaction are given below");
        out.print("<tr><td>Username<td><b>"+S+"</b></tr>");         
         out.print("<tr><td>Egg Type<td><b>"+type+" eggs</b></tr>");         
         out.print("<tr><td>Egg Rate<td><b>₹"+rate+"0</b></tr>");         
         out.print("<tr><td>Total Amount<td><b>₹"+pamount+"0</b></tr>");         

      try{
          SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd k:mm:ss");
         String del=pdate+" "+ptime;
         Date d1=sdf.parse(del);
         sdf=new SimpleDateFormat("dd MMM, yyyy hh:mm a");      
         out.print("<tr><td>Date and Time<td><b>"+sdf.format(d1)+"</b></tr>");         
     }
        catch(Exception e)
         {
          //ParseException
        }

         out.print("<tr><td>Payment Type<td><b>"+ptype+"</b></tr>");         
         out.print("<tr><td>Transaction ID<td><b>"+pid+"</b></tr>");         
         out.print("<tr><td>Payment Status<td><b>Paid</b></tr>");         
    
      out.write("\n");
      out.write("    </table>   \n");
      out.write("    <br><input type=\"submit\" value=\"Print\" onclick=\"myPrint()\">\n");
      out.write("    <form action=\"custpage.jsp\">\n");
      out.write("    <br>    <input type=\"submit\" value=\"Home\">\n");
      out.write("    </form>\n");
      out.write("    </div>\n");
      out.write("    </body>\n");
      out.write("   </html>\n");
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
