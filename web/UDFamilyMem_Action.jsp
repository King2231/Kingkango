<%-- 
    Document   : UDFamilyMem_Action
    Created on : 07-Mar-2016, 13:32:49
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
            System.out.println(request.getParameter("id")+" UD");
            String name=request.getParameter("name");
            String Dob=request.getParameter("dob");
            String bgroup=request.getParameter("bgroup");
            int height=Integer.parseInt(request.getParameter("height"));
            int weight=Integer.parseInt(request.getParameter("weight"));
            String gender=request.getParameter("gender");
            int id=Integer.parseInt(request.getParameter("id"));
            
            String action=request.getParameter("action");
            if(action.equalsIgnoreCase("update"))
            {
                FamilyMember_Dt md=new FamilyMember_Dt();
                md.setM_name(name);
                md.setM_dob(Dob);
                md.setM_bgroup(bgroup);
                md.setM_height(height);
                md.setM_weight(weight);
                md.setM_gender(gender);
                md.setMem_id(id);
                String result=FamilyMember_Worker.UpdateF_Member(md);
                if(result.equals(Results.Success))
                {
                    response.sendRedirect("ShowFamily_Members.jsp");
                }
                else
                {
                    response.sendRedirect("Error.jsp");
                 }
                
            }
            //Redirection Remaining......
            //......
            //......
            //........
            //.......4
            
            if(action.equalsIgnoreCase("delete"))
            {
                FamilyMember_Dt md=new FamilyMember_Dt();
                md.setMem_id(id);
                String result=FamilyMember_Worker.deleteFamily_Member(md);
                if(result.equals(Results.Success))
                {
                    response.sendRedirect("ShowFamily_Members.jsp");
                }
                else
                {
                    response.sendRedirect("Error.jsp");
                 }
            }
            
        %>
    </body>
</html>
