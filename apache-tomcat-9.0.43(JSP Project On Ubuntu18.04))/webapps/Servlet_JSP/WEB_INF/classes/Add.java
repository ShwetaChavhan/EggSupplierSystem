import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
@WebServlet("/Add")
public class Add extends HttpServlet
{
  public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException
  {
      res.setContentType("text/html");
      PrintWriter pw=res.getWriter();
      int n1=Integer.parseInt(req.getParameter("t1"));
      int n2=Integer.parseInt(req.getParameter("t2"));
     pw.print("Addition="+(n1+n2));
  }
}
