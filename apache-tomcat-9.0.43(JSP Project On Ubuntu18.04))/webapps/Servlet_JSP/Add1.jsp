<html>
<body>
<%@ page import="java.lang.*"%>
<%! 
   int add(int a,int b) 
   {
     return a+b;
   }
%>
<%
   int a=Integer.parseInt(request.getParameter("t1"));
   int b=Integer.parseInt(request.getParameter("t2"));
   int c=add(a,b);
%>
<%="Addition="+c%>
</body>
</html>
