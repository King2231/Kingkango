<!-- 
    Document   : UDClient_Action
    Created on : 19-Jan-2016, 15:42:10
    Author     : King
-->

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
            String name=request.getParameter("name");
            String Dob=request.getParameter("dob");
            String mail=request.getParameter("email");
            String phone=request.getParameter("phone");
            String address=request.getParameter("address");
            String bgroup=request.getParameter("bgroup");
            int height=Integer.parseInt(request.getParameter("height"));
            int weight=Integer.parseInt(request.getParameter("weight"));
            String gender=request.getParameter("gender");
            int id=Integer.parseInt(request.getParameter("id"));
            
            String action=request.getParameter("action");
            if(action.equalsIgnoreCase("update"))
            {
                Client_Dt cd=new Client_Dt();
                cd.setC_name(name);
                cd.setC_dob(Dob);
                cd.setC_mail(mail);
                cd.setC_phone(phone);
                cd.setC_address(address);
                cd.setC_bg(bgroup);
                cd.setC_height(height);
                cd.setC_weight(weight);
                cd.setC_gender(gender);
                cd.setClient_id(id);
                String result=Client_Worker.UpdateClient(cd);
                if(result.equals(Results.Success))
                {
                    response.sendRedirect("ViewClientProfile.jsp");
                    
                }
            }
            //Redirection Remaining......
            //......
            //......
            //........
            //.......4
            
            if(action.equalsIgnoreCase("delete"))
            {
                Client_Dt cd=new Client_Dt();
                cd.setClient_id(id);
                String results=Client_Worker.deleteClient(cd);
                if(results.equals(Results.Success))
                 {
                    response.sendRedirect("index.html");    
                 }
            }
            
        %>
    </body>
</html>
