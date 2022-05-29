import javax.servlet.*;
import java.io.*;
public class MyServlet extends GenericServlet
{
    public void service(ServletRequest req, ServletResponse res) throws IOException,ServletException
     {
           PrintWriter pw=res.getWriter();
           pw.print("Hello This Is My First Servlet");         
     }
}
//Without web.xml execution of servlet is not possible
