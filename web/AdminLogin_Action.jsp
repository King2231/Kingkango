<%-- 
    Document   : AdminLogin_Action
    Created on : 24-Jan-2016, 18:39:42
    Author     : King
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="com.Kingkango.*,java.io.*,java.lang.*,java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
    </head>
    <body>
        <%
           response.setHeader("Cache-Control", "no-cache"); // HTTP 1.1.
        response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
        response.setHeader("Expires", "0"); 
            String user= request.getParameter("username");
           String pass=request.getParameter("password");
           String query="select Admin_user,Admin_passwd from admin where Admin_user='"+user+"' && Admin_passwd='"+pass+"';";
           Statement stmt=DatabaseConnector.getStatement();
           ResultSet rs=null;
           rs=stmt.executeQuery(query);
           if(rs.next())
            {
		String und=rs.getString(1);
		String passd=rs.getString(2);
              
                if(und.equals(user)&&passd.equals(pass))
                {
                    int id=Admin_Worker.getIdByUser(user); //session is created and pssed to rest of the forms >>imp
                    Admin_Dt ad=Admin_Worker.showAdminyId(id);
                    session.setAttribute("admin",ad);
                    response.sendRedirect("admin_home.jsp");
                    
                }
                else
                {
                    response.sendRedirect("Admin_Login.jsp");
                }
            }
           else
                {
                    response.sendRedirect("Admin_Login.jsp");
                }
         %>   
    </body>
</html>
