<%@page import="com.Kingkango.*"%>
<%@page import="java.util.ArrayList"%>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Kingkango: Blog</title>

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
</head>
<body>
<div class="container-fluid">
<div class="header">
</div>
    </div>
    <div id="sidebar_btn">
  <img src="menu.png" class="img-circle" width="200" height="200">
    </div>>
 <div id="signin">
    <a href="Client_Login.jsp" title="Client Login"><img src="img\Login.png" class="img-circle"/></a>
   </div>
   <div id="Signup"> 
       <a href="Add_Client.jsp" title="Sign Up"><img src="signup.png" class="img-circle"/></a>
   </div>
   


<div id="sidebar">
 <ul>
    <li><a href="index.html" title="Home"><img src="home.png" class="img-cirlce"></a></li>
    <li><a href="#" title="Blog"><img src="blog.png" class="img-circle"></a></li>
    <li><a href="about.html" title="About Us"><img src="about.png" class="img-circle"></a></li>
    <li><a href="contact.html" title="Contact"><img src="contact.png" class="img-circle"></a></li>
  </ul>
</div>
<script>
$(document).ready(function(){
 $('#sidebar_btn').click(function()
{$('#sidebar').toggleClass('visible');
});
});
$(document).ready(function(){
 $('#signin').click(function()
{
    $('#adminsignin').toggleClass('visible');
    $('#clientsignin').toggleClass('visible');
});
});
</script>

  <%
       ArrayList<Feedback_Dt> li=Feedback_Worker.getAllFeedback();
    %> 
     <div class="feedback" id="home">
            <div class="container">
                <br><center>WHAT PEOPLE SAY ABOUT US....</center>
      <div class="feedbackcontent">
        <%
       for(Feedback_Dt fd:li){
        int id=fd.getFeedback_c_id();   
       Client_Dt cd=Client_Worker.showClientById(id);
        %><%=cd.getC_name()%>:<br><%=fd.getFeedback()%><hr><br>  
       <%}%>
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

      
        

<!--footer-->		
<script type="text/javascript">
		$("h1").fitText(1.1, { minFontSize: '25px', maxFontSize: '75px' });
	</script>

</body>
</html>