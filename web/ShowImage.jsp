<%-- 
    Document   : ShowImage
    Created on : 21-Mar-2016, 08:22:49
    Author     : King
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <META Http-Equiv="Cache-Control" Content="no-cache">
<META Http-Equiv="Pragma" Content="no-cache">
<META Http-Equiv="Expires" Content="0">
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
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container-fluid">
        <div class="header">
</div>
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
<div class="content1" >        
        <div class="clientcontent">
        <%
        String name=request.getParameter("name");
        %>
        <center> <img src = "Example/image-folder/<%=name%>" height="700" width="700" class="thumbnail"></center>
        </div>
</div>
        <div class="footer" style="position: absolute; top: 900px">
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
