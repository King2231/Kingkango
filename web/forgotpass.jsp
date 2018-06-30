<%-- 
    Document   : forgotpass
    Created on : 19-Mar-2016, 06:05:58
    Author     : King
--%>

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
           ArrayList<Email_list> list=Client_Worker.getAllMail();
           if(list.contains(email))
           {
               String body="<a href=http://localhost:8085/King/ChangePass.jsp?abc=1002020209202020202020202020&xyz=83838383838383838383838383838&mno=oidShjbasjfvdjlkfbajgfvafkjbafjgajhjbfrjhbdcjkbfkjcNBDvdagdkjs&axyxz="+email+"&loop=India&village=8766827t63786278>Click Here to CHange the Password</a>"; 
               MailWorker ml=new MailWorker();
                
                ml.sendHTMLMail(email, body,"Change Password Request");
                response.sendRedirect("Client_Login.jsp");
           }
  
           
        
        
        %>
    </body>
</html>
