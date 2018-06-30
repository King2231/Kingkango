<%-- 
    Document   : UDReminderAction
    Created on : 21-Mar-2016, 09:37:08
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
           
            String date=request.getParameter("date");
            String time=request.getParameter("time");
            //out.println(time);
            time=date+" "+time;
            //out.println(time);
            String mail=request.getParameter("mail");
            String message=request.getParameter("desc");
            String action=request.getParameter("action");
            int r_id=Integer.parseInt(request.getParameter("r_id"));
            
            if(action.equalsIgnoreCase("update"))
            {
                Reminder_Dt rd=new Reminder_Dt();
                rd.setRem_mail(mail);
                rd.setRem_time(time);
                rd.setRem_desc(message);
                rd.setRem_id(r_id);
            
            String result = Reminder_Worker.UpdateReminder(rd);
            
            if(result.equals(Results.Success))
            {
                response.sendRedirect("ShowReminders.jsp");
                
            }
            else
            {
                response.sendRedirect("Error.jsp");
            }
        }
            if(action.equalsIgnoreCase("delete"))
            {
                
                String result = Reminder_Worker.deleteReminder(r_id);
            
            if(result.equals(Results.Success))
            {
                response.sendRedirect("ShowReminders.jsp");
                
            }
            else
            {
                response.sendRedirect("Error.jsp");
            }
         }
            
        
        %>
        
    </body>
</html>
