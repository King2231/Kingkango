<%-- 
    Document   : AddReminder
    Created on : 20-Mar-2016, 12:22:11
    Author     : King
--%>

<%@page import="com.Kingkango.Client_Dt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!---->

<!--csslinks-->
<link href="css/mycss.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/demo.css">
<link rel="stylesheet" href="css/common.css">
<!---->
<link rel="shortcut icon" href="img/logo.jpg" type="favicon/ico" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

        <title>Kingkango :Reminder</title>
    <style>
            label{font-size: 30px;
            
            font-family: Candara, Calibri, Segoe, 'Segoe UI', Optima, Arial, sans-serif;
}
td{font-size: 20px;
            text-align: center;
            font-family: Candara, Calibri, Segoe, 'Segoe UI', Optima, Arial, sans-serif;
    
} 
        </style>
    </head>
    <body>
         <%
               String client="";
                Object o=session.getAttribute("client");
 
                response.setHeader("Cache-Control", "no-cache"); // HTTP 1.1.
                response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
                response.setHeader("Expires", "0"); // Proxies.

                Client_Dt cd=new Client_Dt();
 
                if(o!=null)
                {
                
                    cd=(Client_Dt)o;
                    System.out.println(cd.getC_name());
            
                }
            else
            {
            
                session.invalidate();
                response.sendRedirect("Client_Login.jsp");
            }
        %>
        <div class="container-fluid">
    <div class="header">
    </div>
</div>
<div id="sidebar_btn">
  <img src="menu.png" class="img-circle" width="100" height="100">
</div>
<div id="sidebar">
 <ul>
    <li><a href="c_home.jsp" title="Home"><img src="home.png" class="img-cirlce" width="100" height="100"></a></li>
    <li><a href="Add_Feedback.jsp" title="Feedback"><img src="blog.png" class="img-circle" width="100" height="100"></a></li>
    <li><a href="ViewClientProfile.jsp" title="Profile"><img src="update2.png" class="img-circle" width="100" height="100"></a></li>
    <li><a href="Client_logout.jsp" title="Logout"><img src="logout.png" class="img-circle" width="100" height="100"></a></li>
  </ul>
</div>
<script>
$(document).ready(function(){
 $('#sidebar_btn').click(function()
{$('#sidebar').toggleClass('visible');
});
});
</script> 
<div class="contentcp">
     <div class="clientcontent">
       <div class="form-group">
             
        <form action="AddReminderAction.jsp">
            <input type='hidden' name='c_id' value='<%=cd.getClient_id()%>'>  
            <label for="usr">Enter Reminder date: </label>
     <input type="date" class="form-control input-lg" id="usr" name="date" required><br>
            
     <label for="usr">Enter Reminder time: </label>
     <input type="time" class="form-control input-lg" id="usr" name="time" required><br>
     
     <label for="usr">Enter your e-mail: </label>
     <input type="text" class="form-control input-lg" id="usr" name="mail" required><br>
            
      <label for="usr">Enter Reminder Description: </label>
     <textarea class="form-control input-lg" id="usr" name="desc" required></textarea><br><br>
     <center><input type="submit" name="submit" value="submit" class="btn-primary"></center>
        </form>
       </div>
     </div>
</div>
     <div class="footer">
	<div class="copy">
	  <div class="container">
        <div class="component">
        <a href="#" class="icon icon-cube facebook">facebook</a>
        <a href="#" class="icon icon-cube twitter">twitter</a>
        <a href="#" class="icon icon-cube googleplus">google+</a>
        </div>
      </div>
	  <br><p>Copyright &copy; KINGKANGO</p>
    </div>
</div>
       
       
       </body>
</html>
