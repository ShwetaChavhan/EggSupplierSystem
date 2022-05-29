import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class RequestForm extends HttpServlet
{
   public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException
    {
        res.setContentType("text/html"); 
        PrintWriter pw=res.getWriter();
        pw.print("Request from HTML form");        
    }
}
/*HTML form through yenari request hi kontyahi type chi asu shakte. Jr form madhe method="GET" 
asel tr ti GET type chi request aste. Mhanun servlet chya program madhe doGet method override karavi lagte
Jr form madhe method="POST" asel tr ti POST type chi request aste.
 Mhanun servlet chya program madhe doPost method override karavi lagte
*/
 
