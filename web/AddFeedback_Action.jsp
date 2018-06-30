<%-- 
    Document   : AddFeedback_Action
    Created on : 14-Mar-2016, 23:25:55
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
            int client_id=Integer.parseInt(request.getParameter("client_id"));
            Feedback_Dt fbd=new Feedback_Dt();
            fbd.setFeedback(Feedback);
            fbd.setFeedback_c_id(client_id);
            
            String result = Feedback_Worker.addFeedback(fbd);
            
            if(result.equals(Results.Success))
            {
                response.sendRedirect("Add_Feedback.jsp");
            }
            else
            {
                response.sendRedirect("Add_Feedback.jsp");
            }
        %>
    </body>
</html>
