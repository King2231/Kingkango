<%-- 
    Document   : ForgetPasswordAction
    Created on : 3 Feb, 2016, 12:59:57 PM
    Author     : user
--%>

<%@page import="java.sql.*"%>
<%@page import="com.Kingkango.*"%>

<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      
        <%
                String email=request.getParameter("email");
          //ArrayList<FlatDetail> emailList=FlatWorker.getAllEmail();
         // for(FlatDetail f:emailList)
         // {
              
             // emailList.add(f);
           
          // emailList.add("bobhateaditi@gmail.com");
            //STsring body=reques
            //String email=request.getParameter("email);
      String e;
      String query="Select username from flatdetail where username='"+email+"';";
      
            ResultSet rs=DatabaseConnector.getResultSet(query);
            if(rs.next())
            {
            e=rs.getString(1);
            System.out.println("e = "+e);
            if(e.equals(email))
                    {
                String body="<a href=http://localhost:9090/WebApplication3/ChangePassword.jsp>Click Here to CHange the Password</a>";
                MailWorker ml=new MailWorker();
                ml.sendHTMLMail(email, body,"Change Password Request");
                response.sendRedirect("message.jsp");
            }
            else
            {
                out.println("User doesn't exist");
            }
          }
       %>
  
    </body>
</html>
