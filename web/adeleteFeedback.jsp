<%-- 
    Document   : adeleteFeedback
    Created on : 15-Mar-2016, 01:32:59
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
            int fb_id=Integer.parseInt(request.getParameter("id"));
            String result = Feedback_Worker.deleteFeedback(fb_id);
            if(result.equals(Results.Success))
            {
                response.sendRedirect("admin_home.jsp");
            }
        %>
    </body>
</html>
