<%-- 
    Document   : AddVaccineGuider_Action
    Created on : 16-Feb-2016, 03:04:25
    Author     : King
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String name=request.getParameter("name");
        String mail=request.getParameter("mail");
        String number=request.getParameter("number");
        String date=request.getParameter("dob");
        String dateParts[] = date.split("-");
        int yr  = Integer.parseInt(dateParts[0]);
        int mon  = Integer.parseInt(dateParts[1]);
        int d = Integer.parseInt(dateParts[2]);
        
        /*String date1[]={Integer.toString(yr),Integer.toString(mon+1),Integer.toString(d)};
        String date2=Integer.toString(yr)+Integer.toString(mon+2)+Integer.toString(d);
        String date3=Integer.toString(yr)+Integer.toString(mon+4)+Integer.toString(d);
        String date4=Integer.toString(yr)+Integer.toString(mon+6)+Integer.toString(d);
        String date5=Integer.toString(yr+1)+Integer.toString(mon)+Integer.toString(d);
        String date6=Integer.toString(yr+1)+Integer.toString(mon+3)+Integer.toString(d);
        String date7=Integer.toString(yr+2)+Integer.toString(mon)+Integer.toString(d);
        String date8=Integer.toString(yr+4)+Integer.toString(mon)+Integer.toString(d);*/
        
               %>
    </body>
</html>
