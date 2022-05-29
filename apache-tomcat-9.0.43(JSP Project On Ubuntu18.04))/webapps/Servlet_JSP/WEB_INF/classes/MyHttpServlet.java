import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class MyHttpServlet extends HttpServlet
{
   public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
   {
       PrintWriter pw=res.getWriter();
       pw.print("<html><body bgcolor='cyan'> <font color='red' size='9'>HttpServlet Example</font></body></html>");
   }
}
