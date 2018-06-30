<%-- 
    Document   : Show_ClientProfile
    Created on : 12-Mar-2016, 02:14:50
    Author     : King
--%>

<%@page import="com.Kingkango.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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

        <title>Kingkango :Profile</title>
    <style>
            label{font-size: 30px;
            
            font-family: Candara, Calibri, Segoe, 'Segoe UI', Optima, Arial, sans-serif;
}
td{font-size: 20px;
            text-align: center;
            font-family: Candara, Calibri, Segoe, 'Segoe UI', Optima, Arial, sans-serif;
    
} 
        </style>
    
    
        <title>Kingkango :Profile</title>
    </head>
    <body>
        <%
        String client="";
        Object o=session.getAttribute("client");
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
    <li><a href="#" title="Profile"><img src="update2.png" class="img-circle" width="100" height="100"></a></li>
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
    <%
        Client_Dt c=Client_Worker.showClientById(cd.getClient_id());
    %>
     <div class="clientcontent">
<form action="Show_ClientProfile.jsp" method="post" role="form">         
    <div class="form-group">
        <div class='col-lg-5'>
<div class='container'> 
<input type="hidden" name="id" value="<%=cd.getClient_id()%>">
<a href="Show_ClientProfile.jsp"><label for="usr">Dear Client, Please Check Your Details And Edit/Update If Required.</label></a> 
<br>
<center>
<pre>
<label for="usr">Your Good Name is :       <%=c.getC_name()%></label> 
<br>
<label for="usr">Your Date Of Birth is :       <%=c.getC_dob()%></label>
<br>      
<label for="usr">Your E-Mail ID is :       <%=c.getC_mail()%></label>
<br>          
<label for="usr">Your Phone Number is :    <%=c.getC_phone()%></label>
<br>
<label for="usr">Your Address is :     <%=c.getC_address()%></label>
<br>
<label for="usr">Your Blood Group is :     <%=c.getC_bg()%></label>
<br> 
<label for="usr">Your Height is :      <%=c.getC_height()%></label>
<br>
<label for="usr">Your Weight is :  <%=c.getC_weight()%></label>
<br>          
<label for="usr">Gender: <%=c.getC_gender()%></label>
<br>
</pre>
</center> 
     <center><input type="submit" name="action" value="Edit If Changes Required"></center>
</div> 
        </div>
        </div>
     </form>
      <br><br>  
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
