<%@page import="com.Kingkango.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Kinkango</title>

<!--bootstrap links-->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!---->
<link rel="shortcut icon" href="img/logo.jpg" type="favicon/ico" />
<!--csslinks-->
<link href="css/adminsite.css" rel='stylesheet' type='text/css' />

<!---->

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="text/javascript">
$(document).ready(function(){
    $('#menu a').each(function(){
        id = $(this).attr('href');
        id = id.substring(id.lastIndexOf('/'));
        id = id.substring(0,id.indexOf('.'));
        $(this).attr('rel',id);
    });
    $('#index').show();
    $('#menu a').click(function(e){
        e.preventDefault();
        $('.content').hide();
        $('#'+$(this).attr('rel')).show();
        location.hash = '#!/'+$(this).attr('rel');
        return false;
    });
});
</script>

</head>
<body>
<div id="header"><div id="brand">KINGKANGO</div>
<font size="40px">
Hi KING !!!!
</font>
</div>
<div class="container">
<nav id="menu">
 <div class="nav">
 <ul id="menu">
  <li ><a href="" id="showClient"><span class="glyphicon glyphicon-user">View Clients</span></a></li>
  <li ><a href="" id="showFeedbacks"><span class="glyphicon glyphicon-comment">View Feedbacks</span></a></li>
  <li ><a href="" id="showInquiry"><span class="glyphicon glyphicon-envelope">View Inquiry</span></a></li>
  <li ><a href="" id="showVaccines"><span class="glyphicon glyphicon-tint">View Vaccines</span></a></li>
  <li><a href="Admin_Logout.jsp"><span class="glyphicon glyphicon-log-out">Logout</span></a></li>
  </ul>
  </div>
</nav>

<section id="content">
<div id="admincontent">
<div class="container-fluid">
        
</div>
</div>
</section>
</div>
<div id="footer">
copyright &copy; KINGKANGO
</div>
</body>
</html>