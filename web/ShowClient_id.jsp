<%-- 
    Document   : ShowClient_id
    Created on : 19-Jan-2016, 15:22:34
    Author     : King
--%>

<%@page import="com.Kingkango.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Client</title>
    </head>
    <body>
        <form method="post" action="UDClient_Action.jsp">
                        
         <% 
              String n=request.getParameter("id");
              int id=Integer.parseInt(n);
              Client_Dt cd=Client_Worker.showClientById(id);
          %>
         
          <input type="hidden" name="id" value="<%=cd.getClient_id()%>">
 
          Name:
          <input type="text" name="name" value="<%=cd.getC_name()%>"><br>
          
          Date Of Birth:
          <input type="text" name="dob" value="<%=cd.getC_dob()%>">
          <br>
          
          Email:
          <input type="text" name="email" value="<%=cd.getC_mail()%>"><br>
          
          Phone:
          <input type="text" name="phone" value="<%=cd.getC_phone()%>"><br>
          
          Address:
          <input type="text" name="address" value="<%=cd.getC_address()%>"><br>
          
          Blood Group:
          <input type="text" name="bgroup" value="<%=cd.getC_bg()%>">
          <br>
          
          Height:
          <input type="text" name="height" value="<%=cd.getC_height()%>">
          <br>
          
          Weight:
          <input type="text" name="weight" value="<%=cd.getC_weight()%>">
          <br>
          
          Gender:
          <input type="text" name="gender" value="<%=cd.getC_gender()%>">
          
                 <br><input type="submit" name="action" value="update">
          <br>
          
          <input type="submit" name="action" value="delete">
      </form>
    </body>
</html>
