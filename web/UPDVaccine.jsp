<%-- 
    Document   : UPDVaccine
    Created on : 18-Mar-2016, 13:04:08
    Author     : King
--%>

<%@page import="com.Kingkango.*"%>
<%@page import="com.Kingkango.Vaccine_Dt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
           int v_id=Integer.parseInt(request.getParameter("vacc_id"));
            String vname=request.getParameter("v_name");
           String vage=request.getParameter("v_age");
           String vrange=request.getParameter("v_range");
           String vdose=request.getParameter("v_dose");
           String vmessage=request.getParameter("v_message");
           String action=request.getParameter("action");
           if(action.equalsIgnoreCase("update"))
          {
           Vaccine_Dt vd=new Vaccine_Dt();
           vd.setVaccine_id(v_id);
           vd.setVaccine(vname);
           vd.setVacc_age_days(Integer.parseInt(vage));
           vd.setRange(vrange);
           vd.setVaccine(vname);
           vd.setMessage(vmessage);
           vd.setDose(vdose);
           
           String result=Vaccine_Worker.UpdateVaccine(vd);
           if(result.equals(Results.Success))
           {
               response.sendRedirect("admin_home.jsp");
           }   
           else
           {
               response.sendRedirect("AdminError.jsp");
           }
          }
           if(action.equalsIgnoreCase("delete"))
           {
               Vaccine_Dt vd=new Vaccine_Dt();
           vd.setVaccine_id(v_id);
           String result=Vaccine_Worker.deleteVaccine(vd);
           if(result.equals(Results.Success))
           {
               response.sendRedirect("admin_home.jsp");
           }   
           else
           {
               response.sendRedirect("AdminError.jsp");
           }
           }
           
        %>
    </body>
</html>
