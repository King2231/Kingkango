<%-- 
    Document   : sendmail
    Created on : 16-Jan-2016, 13:28:02
    Author     : aditi bobhate
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
        <h1>Hello World!</h1>
        
        <%
            String rec=request.getParameter("reciever");
            String subject=request.getParameter("subject");
            String body=request.getParameter("body");
            System.out.println(rec + subject +body);
            
            MailWorker ml=new MailWorker();
            ml.sendHTMLMail(rec, body, subject);
            
            response.sendRedirect("admin_home.jsp");
            
        %>
        <a href="admin_home.jsp"><span class="glyphicon glyphicon-home"></span></a>
    </body>
</html>
