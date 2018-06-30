
<%-- 
    Document   : Add_Reports
    Created on : 19-Jan-2016, 12:34:01
    Author     : King
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report Details</title>
        <style>.tr{
            padding-top: 5px;
}</style>
    </head>
    <body>
        
   <form action="AddReport_Action.jsp">
       <center>  <table border="1">
                  <tr>
                      <td>
                          Report Name:
                      </td>
                      <td>
                          <input type ="text" name="r_name" size="20">
                      </td>
                  </tr>
                  <br><tr>
                      <td>
                          Date Of Report:
                      </td>
                      <td>
                          <input type="date" name="r_dob">
                      </td>
                  </tr>
                 <br>
                  <tr>
                      <td>
                          <input type="submit" name="submit">
                      </td>
                  </tr>
           </table></center>
        </form>

    </body>
</html>
