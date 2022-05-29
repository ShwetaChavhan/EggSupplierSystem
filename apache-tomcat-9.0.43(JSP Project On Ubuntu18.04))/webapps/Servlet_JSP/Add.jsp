<html>
<body>
<%! 
   int add(int a,int b)
   {
     return a+b;
   }
%>
<%
   int a=10;
   int b=30;   
   int c=add(a,b);
%>
<%="Addition="+c%>
</body>
</html>
