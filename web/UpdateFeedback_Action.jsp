<%-- 
    Document   : UpdateFeedback_Action
    Created on : 15-Mar-2016, 00:58:40
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
        String Feedback=request.getParameter("Feedback");
        int fid=Integer.parseInt(request.getParameter("feedback_id"));
        Feedback_Dt fbd=new Feedback_Dt();
        fbd.setFeedback(Feedback);
        fbd.setFeedback_id(fid);
        String result=Feedback_Worker.updateFeedback(fbd);
        if(result.equalsIgnoreCase(Results.Success))
        {
            response.sendRedirect("Add_Feedback.jsp");
        }
        else{
        response.sendRedirect("Add_Feedback.jsp");
        }
        %>
    </body>
</html>
