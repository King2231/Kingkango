<%-- 
    Document   : ChangePasswordAction
    Created on : 8 Feb, 2016, 8:12:08 AM
    Author     : user
--%>

<%@page import="com.Kingkango.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/myproject";
            String user="root";
            String password="mogli1407";
            Connection con=DriverManager.getConnection(url,user,password);
            
            String login=request.getParameter("txtname");
            String pwd=request.getParameter("txtnewpass");
            String und,passd;
            
            String query="update client set Client_password='"+pwd+"' where Client_mail='"+login+"';";
            
            System.out.println(query);
            
            PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
             int i=pstmt.executeUpdate();
              String result="";
        if(i==1)
        {
            result=Results.Success;
        }
   else
        {
            result=Results.FAILURE;
        
        }
            
            
        %>
   </body>
</html>
