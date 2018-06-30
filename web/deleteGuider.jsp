<%-- 
    Document   : deleteReminder
    Created on : 21-Mar-2016, 04:01:59
    Author     : King
--%>

<%@page import="com.Kingkango.*"%>
<%@page import="com.Kingkango.Reminder_Worker"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int r_id=Integer.parseInt(request.getParameter("id"));
            String result=VaccineGuider_Worker.deleteVaccineGuider(r_id);
            if(result.equals(Results.Success))
            {
                response.sendRedirect("admin_home.jsp");
            }
            else
            {
                response.sendRedirect("AdminError.jsp");
            }
        
        %>
    </body>
</html>
