<%-- 
    Document   : Client_logout
    Created on : 18-Feb-2016, 11:02:13
    Author     : King
--%>

<%@page import="com.Kingkango.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
        String admin="";
        Object o=session.getAttribute("admin");
 
        response.setHeader("Cache-Control", "no-cache"); // HTTP 1.1.
        response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
        response.setHeader("Expires", "-1"); // Proxies.
 
        Admin_Dt cd=new Admin_Dt();
 
        if(o!=null)
            {
                
            cd=(Admin_Dt)o;
            System.out.println(cd.getAdmin_name());
            
            }
        else
        {
            try{
            session.invalidate();
            }
            catch(java.lang.IllegalStateException e)
            {
                response.sendRedirect("Admin_Login.jsp");
            }
        }
        try{
            session.removeAttribute("admin");
            session.invalidate();
            response.sendRedirect("Admin_Login.jsp");
        }
        catch(Exception n)
        {
            n.printStackTrace();
            response.sendRedirect("Admin_Login.jsp");
        }
        %>
    </body>
</html>
