<%-- 
    Document   : forgotpassword
    Created on : 16-Jan-2016, 13:48:04
    Author     : aditi bobhate
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Client_Login : Forgot Password</title>
        <script type="text/javascript">
          
        function validateForm() 
        {
             if((document.getElementById('username').value) == "Mail") 
            {
                alert("Please fill in all the details");
                return false;
            }
            else
            {
                return true; 
            }
            
        }
       </script>

<!--bootstrap links-->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!---->

<!--csslinks-->
<link href="css/mycss.css" rel='stylesheet' type='text/css' />

<!---->
<link rel="shortcut icon" href="img/logo.jpg" type="favicon/ico" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    </head>
    <body>
            <div class="container-fluid">

<div id="sidebar_btn">
  <img src="menu.png" class="img-circle" width="200" height="200">
 </div>
 <div id="signin"> 
       <a href="Add_Client.jsp" title="Sign Up"><img src="signup.png" class="img-circle"/></a>
   </div>
<div id="sidebar">
 <ul>
    <li><a href="index.html" title="Home"><img src="home.png" class="img-cirlce"></a></li>
    <li><a href="blog.html" title="Blog"><img src="blog.png" class="img-circle"></a></li>
    <li><a href="about.html" title="About Us"><img src="about.png" class="img-circle"></a></li>
    <li><a href="contact.html" title="Contact"><img src="contact.png" class="img-circle"></a></li>
  </ul>
</div>
<div id="login">
<hr><font color="white">CLIENT LOGIN</font>
<form name="myform" onSubmit= "return validateForm();" action="forgotpass.jsp" method="post">
	      	<input type="text" name="email" id="username" class="user" value="Mail" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Mail';}" />
	      	<input type="submit" value="Reset Password" name="login"/>
	 	</form>
<hr>
	  <p class="login">Copyright &copy; KINGKANGO</p>
    
</div>
<script>
$(document).ready(function(){
        $('#sidebar_btn').click(function()
        {$('#sidebar').toggleClass('visible');
        });
        });  
</script>
</div>
        
        
        
        
        
        <form method="Post" action="sendmail.jsp">
        <input type="text" name="reciever" size="70">
        your subject: <input type="text" name="subject" size="70">
        your message: <input type="text" name="body" size="70">
        <br>
        <input type="submit" value="CHange Password">
        </form>
    </body>
</html>
