<%-- 
    Document   : ShowAllCLient
    Created on : 27-Jan-2016, 11:41:08
    Author     : King
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.Kingkango.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            ArrayList <Client_Dt> list=Client_Worker.getAllClient();%>
        <div class="container">
        <table border="1" align="center" width="100%">
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>Date Of Birth</th>
                <th>Email</th>
                <th>Phone Number</th>
                <th>Address</th>
                <th>Blood Group</th>
                <th>Height</th>
                <th>Weight</th>
                <th>Gender</th>
             </tr>
            <% for(Client_Dt cd:list) {%>
            <tr align="center">
                <td><a href="ShowClient_id.jsp?id=<%=cd.getClient_id()%>"><%= cd.getClient_id()%></a></td>
                <td><%=cd.getC_name()%></td>
                <td><%=cd.getC_dob()%></td>
                <td><%=cd.getC_mail()%></td>
                <td><%=cd.getC_phone()%></td>
                <td><%=cd.getC_address()%></td>
                <td><%=cd.getC_bg()%></td>
                <td><%=cd.getC_height()%></td>
                <td><%=cd.getC_weight()%></td>
                <td><%=cd.getC_gender()%></td>
               
                
            </tr>
            
           
            <%}%>
           
        
            
        </table> 
        </div>
    </body>
</html>
