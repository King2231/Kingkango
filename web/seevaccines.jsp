<%-- 
    Document   : seevaccines
    Created on : 20-Mar-2016, 01:55:18
    Author     : King
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! String[] vaccine; %>
<center>You have selected: 
<% 
   vaccine = request.getParameterValues("vaccine");
   if (vaccine != null) 
   {
      for (int i = 0; i < vaccine.length; i++) 
      {
         out.println ("<b>"+vaccine[i]+"<b>");
      }
   }
   else out.println ("<b>none<b>");
%>
</center> 
</body>
</html>
