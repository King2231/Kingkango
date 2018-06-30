<%-- 
    Document   : AddReportDt
    Created on : 19-Mar-2016, 10:24:08
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
            int f_id=Integer.parseInt(request.getParameter("f_name"));
            String rname=request.getParameter("rep_name");
            String rdate=request.getParameter("rep_dob");
            String rtdate=request.getParameter("rep_test_dt");
            
            Reports_Dt rd=new Reports_Dt();
            rd.setRep_c_id(f_id);
            rd.setRep_date(rdate);
            rd.setRep_tdate(rtdate);
            rd.setRep_name(rname);
            String result=Reports_Worker.addReport(rd);
            if(result.equals(Results.Success))
            {
                response.sendRedirect("AddReport.jsp");
                
            }
            else
            {
                response.sendRedirect("Error.jsp");
            }
        
        %>
    </body>
</html>
