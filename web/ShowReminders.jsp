<%-- 
    Document   : ShowFamily_Members
    Created on : 07-Mar-2016, 12:40:01
    Author     : King
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.Kingkango.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
        <title>Kingkango: Family</title>
        <style>
            th{font-size: 30px;
            text-align: center;
            font-family: Candara, Calibri, Segoe, 'Segoe UI', Optima, Arial, sans-serif;
}
td{font-size: 20px;
            text-align: center;
            font-family: Candara, Calibri, Segoe, 'Segoe UI', Optima, Arial, sans-serif;
    
} 
        </style>
    
    
    </head>
    <body>
        
        <% String client="";
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
ArrayList <Reminder_Dt> list= Reminder_Worker.getAllReminderByC_id(cd.getClient_id());%>
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

    <div class="content1" >        
        <div class="clientcontent">
            <table border="1" align="center" width="100%">
            <tr align="center">
                <th>Reminder Description</th>
                <th>Mail</th>
                <th>Time</th>
                
                
            </tr>
            <% for(Reminder_Dt rd:list) {%>
            <tr align="center">
                <td><a href="UDReminder.jsp?id=<%=rd.getRem_id()%>"><%= rd.getRem_desc()%></a></td>
                <td><%=rd.getRem_mail()%></td>
                <td><%=rd.getRem_time()%></td>     
            </tr>
            
           
            <%}%>
           
        </table> 
            <a href="AddReminder.jsp" class="btn-group-lg"><span class="glyphicon glyphicon-plus-sign">Add Reminder
                </span></a>
        </div>
    </div>
            <script>
$(document).ready(function(){
 $('#sidebar_btn').click(function()
{$('#sidebar').toggleClass('visible');
});
});
</script>
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
