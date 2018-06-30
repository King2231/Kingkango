<%-- 
    Document   : AddVaccine
    Created on : 21-Mar-2016, 00:58:59
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
        String name=request.getParameter("v_name");
        int age=Integer.parseInt(request.getParameter("v_age"));
        String range=request.getParameter("v_range");
        String dose=request.getParameter("v_dose");
        String message=request.getParameter("v_message");
        
        Vaccine_Dt vd=new Vaccine_Dt();
        vd.setVaccine(name);
        vd.setVacc_age_days(age);
        vd.setRange(range);
        vd.setMessage(message);
        vd.setDose(dose);
        String result=Vaccine_Worker.addVaccine(vd);
        if(result.equals(Results.Success))
        {
            response.sendRedirect("admin_home.jsp");
        }
        else
        {
            response.sendRedirect("AdminError.jsp");
        }
        
        %>
    </body>
</html>
