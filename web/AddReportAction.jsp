<%-- 
    Document   : AddReportAction
    Created on : 19-Mar-2016, 01:40:05
    Author     : King
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        String r_g_name=request.getParameter("f_name");
                                        String r_name=request.getParameter("rep_name");
                                        String r_date=request.getParameter("rep_date");
                                        String r_t_date=request.getParameter("rep_t_dt");
                                        System.out.println(r_g_name + r_date + r_t_date);
                                        FamilyMember_Dt md=FamilyMember_Worker.getMemByName(r_g_name);
                                       
                                        int r_c_id=md.getMem_id();
    </body>
</html>
