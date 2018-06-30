<%-- 
    Document   : DeleteEnquiry
    Created on : 19-Mar-2016, 04:23:19
    Author     : King
--%>

<%@page import="com.Kingkango.Results"%>
<%@page import="com.Kingkango.Enquiry_Worker"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%int e_id=Integer.parseInt(request.getParameter("id"));
        String result=Enquiry_Worker.deleteEnquiry(e_id);
        if(result.equals(Results.Success))
        {
            response.sendRedirect("admin_home.jsp");
            
        }
        else
        {
            response.sendRedirect("Error.jsp");
        }
        
        %>
    </body>
</html>
