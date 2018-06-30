<%-- 
    Document   : deleteFeedback
    Created on : 15-Mar-2016, 00:39:52
    Author     : King
--%>

<%@page import="com.Kingkango.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String client="";
        Object o=session.getAttribute("client");
 
        //response.setHeader("Cache-Control", "no-cache"); // HTTP 1.1.
        //response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
        //response.setHeader("Expires", "0"); // Proxies.

        Client_Dt cd=new Client_Dt();
 
        if(o!=null)
            {
                
                cd=(Client_Dt)o;
                System.out.println(cd.getC_name());
            
            }
        else
        {
            
            session.invalidate();
            response.sendRedirect("Client_Login.jsp");
        
}
            int fb_id=Integer.parseInt(request.getParameter("id"));
            String result = Feedback_Worker.deleteFeedback(fb_id);
            if(result.equals(Results.Success))
            {
                response.sendRedirect("Add_Feedback.jsp");
            }
        %>
    </body>
</html>
