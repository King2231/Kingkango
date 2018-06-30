<%-- 
    Document   : AddReminderAction
    Created on : 20-Mar-2016, 12:29:09
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
            int r_c_id=Integer.parseInt(request.getParameter("c_id"));
            String date=request.getParameter("date");
            String time=request.getParameter("time");
            //out.println(time);
            time=date+" "+time;
            //out.println(time);
            String mail=request.getParameter("mail");
            String message=request.getParameter("desc");
            
           
             Reminder_Dt rd=new Reminder_Dt();
            rd.setRem_mail(mail);
            rd.setRem_time(time);
            rd.setRem_desc(message);
            rd.setR_c_id(r_c_id);
            String result = Reminder_Worker.addReminder(rd);
            
            if(result.equals(Results.Success))
            {
                response.sendRedirect("ShowReminders.jsp");
                
            }
            else
            {
                response.sendRedirect("Error.jsp");
            }
        
        %>
        
    </body>
</html>
