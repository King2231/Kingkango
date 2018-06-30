<%@page import="com.Kingkango.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin_Login</title>
        <script type="text/javascript">
          
        function validateForm() 
        {
             if((document.getElementById('username').value) == "Mail" ||(document.getElementById('password').value) == "Password") 
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
<%
        String admin="";
        Object o=session.getAttribute("admin");
 
        response.setHeader("Cache-Control", "no-cache"); // HTTP 1.1.
        response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
        response.setHeader("Expires", "0"); // Proxies.

        Admin_Dt ad=new Admin_Dt();
 
        if(o!=null)
            {
                
                ad=(Admin_Dt)o;
                System.out.println("not null");
                response.sendRedirect("admin_home.jsp");
            }
        else
        {
            
            session.invalidate();
            System.out.println("null");
        }
        
%>
    
    <div class="container-fluid">

<div id="login">
<hr><font color="white">ADMIN LOGIN</font>
<form name="myform" onSubmit= "return validateForm();" action="AdminLogin_Action.jsp" method="post">
	      	<input type="text" name="username" id="username" class="user" value="Mail" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Mail';}" />
	      	<input type="password" name="password" id="password" class="pass" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" />
	      	
                          	<input type="submit" value="LOGIN" name="login"/>
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
 <!--footer-->		
</body>
</html>