<%-- 
    Document   : AddVaccineGuider
    Created on : 16-Feb-2016, 02:56:08
    Author     : King
--%>

<%@page import="com.Kingkango.*"%>
<%@page import="com.Kingkango.Vaccine_Dt"%>
<%@page import="com.Kingkango.Vaccine_Worker"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! String[] vaccine; %>
        <%
            
            
            String result="";
            int fid=Integer.parseInt(request.getParameter("f_name"));
            FamilyMember_Dt md=FamilyMember_Worker.showfamilymemberById(fid);
            String dob=md.getM_dob();
            vaccine = request.getParameterValues("vaccine");
            
        if (vaccine != null) 
        {
            for (int i = 0; i < vaccine.length; i++) 
            {
                int id=Integer.parseInt(vaccine[i]);
                Vaccine_Dt vd=Vaccine_Worker.showVaccineById(id);
                int days=vd.getVacc_age_days();
          
                out.println(dob);
                SimpleDateFormat  formatter = new SimpleDateFormat("yyyy-MM-dd");    
                //Date d=formatter.parse(dt);
                //System.out.println(d); 
                // Date date= new Date();
                //Calendar cal = Calendar.getInstance();
                //cal.setTime (d);
                //cal.add (Calendar.DATE, 30);
                //date = cal.getTime ();
                Date date = formatter.parse(dob);
                GregorianCalendar calendar = new GregorianCalendar();
                calendar.setTime(date);
                //System.out.println(date);
                calendar.add(Calendar.DAY_OF_MONTH, days);
                System.out.println(calendar.getTime());
                
                String strdate = null;

                
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");

                if (calendar != null) {
                strdate = sdf.format(calendar.getTime());
                System.out.println(strdate);
                }
                VaccineGuider_Dt gd=new VaccineGuider_Dt();
                gd.setClient_g_id(fid);
                gd.setGuider_date(strdate);
                gd.setVacc_id(id);
                result=VaccineGuider_Worker.addGuider(gd);
                
                }
        }
        else
        {
            response.sendRedirect("Error.jsp");
        }
                
 %>
        
</body>
</html>
