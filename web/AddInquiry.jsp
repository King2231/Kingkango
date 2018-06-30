<%-- 
    Document   : AddInquiry
    Created on : 15-Mar-2016, 01:51:34
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
        String mail=request.getParameter("mail");
        String message=request.getParameter("message");
        Enquiry_Dt ed=new Enquiry_Dt();
        ed.setEnquiry(message);
        ed.setEnquiry_mail(mail);
        String result=Enquiry_Worker.addEnquiry(ed);
        if(result.equals(Results.Success))
        {
            response.sendRedirect("index.html");
        }
        else
        {
            response.sendRedirect("Error.jsp");
        }
        %>
    </body>
</html>
