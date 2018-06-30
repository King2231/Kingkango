<%-- 
    Document   : ShowFamilyMem_id
    Created on : 07-Mar-2016, 13:24:48
    Author     : King
--%>

<%@page import="com.Kingkango.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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

        <title>Kingkango :Family</title>
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
              String n=request.getParameter("id");
              int id=Integer.parseInt(n);
              FamilyMember_Dt md=FamilyMember_Worker.showfamilymemberById(id);
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
          
 <div class="contentsh">
     <div class="clientcontent">
<form action="UDFamilyMem_Action.jsp" method="post" role="form">         
    <div class="form-group">     
     
     <input type="hidden" name="id" value="<%=md.getMem_id()%>">       
     <label for="usr">Name:</label>
     <input type="text" class="form-control input-lg" id="usr" name="name" value="<%=md.getM_name()%>">
    
     <label for="usr">Date Of Birth:</label>
     <input type="date" class="form-control input-lg" id="usr" name="dob" value="<%=md.getM_dob()%>">
          
      <label for="usr">Blood Group:</label>
     <input type="text" class="form-control input-lg" id="usr" name="bgroup" value="<%=md.getM_bgroup()%>">
         
     <label for="usr">Height:</label>
     <input type="text" class="form-control input-lg" id="usr" name="height" value="<%=md.getM_height()%>">
     
     <label for="usr">Weight:</label>
     <input type="text" class="form-control input-lg" id="usr" name="weight" value="<%=md.getM_weight()%>">
     
     <label for="usr">Gender:</label>
     <input type="text" class="form-control input-lg" id="usr" name="gender" value="<%=md.getM_gender()%>">
     
                 <br>
          <center><input type="submit" name="action" value="update"></center>
          <br>
          
          <center><input type="submit" name="action" value="delete" id='delete'></center>
          
          </div>
</form>  
     </div>
 </div>         
   <script>
$(document).ready(function(){
 $('#sidebar_btn').click(function()
{$('#sidebar').toggleClass('visible');
});
});
</script>        
 <%System.out.println(md.getMem_id());
 System.out.println("idwala");
 %>

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
