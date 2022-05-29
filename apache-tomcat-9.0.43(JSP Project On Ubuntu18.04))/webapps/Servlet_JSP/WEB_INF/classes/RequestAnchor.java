import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
@WebServlet("/annotation")
public class RequestAnchor extends HttpServlet
{
   public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException
    {
        res.setContentType("text/html"); 
        PrintWriter pw=res.getWriter();
        pw.print("Request from HTML anchor tag");        
    }
}
//Anchor tag through aleli request doGet method ne execute keli means anchor tag through yenari
// request GET type chi aste
