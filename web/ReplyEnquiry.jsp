<%-- 
    Document   : ReplyEnquiry
    Created on : 19-Mar-2016, 04:28:13
    Author     : King
--%>

<%@page import="com.Kingkango.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--bootstrap links-->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!---->
<link rel="shortcut icon" href="img/logo.jpg" type="favicon/ico" />
<!--csslinks-->
<link href="css/mycss.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/demo.css">
<link rel="stylesheet" href="css/common.css">
<!---->

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reply Mail</title>
    </head>
    <body>
        <% 
        int id=Integer.parseInt(request.getParameter("id"));
        Enquiry_Dt ed=Enquiry_Worker.showEnquiryById(id);
        
        %>
    <div class="container">    
    <form role="form" action="sendmail.jsp" method="post" class="form-control-static" >
            
         <div id="container-fluid">
          <br><br>    
             <label id="usr">Your E-mail:</label><br>
          <div class="col-lg-10">
          <input type="text" class="form-control input-group-lg" name="reciever" value="<%=ed.getEnquiry_mail()%>">
          
          <input type="hidden" value="KINGKANGO : Reply_Mail" name="subject">
          <label id="usr">Query:</label><br>
          <textarea name="body" class="form-control input-group-lg" rows="5" size="250"></textarea>
          </div>
          <input type="submit" name="submit" value="Reply">
         </div>
            </form>
    </div>
    </body>
</html>
