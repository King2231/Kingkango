<%-- 
    Document   : c_home
    Created on : 14-Feb-2016, 01:24:46
    Author     : King
--%>

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

<!--csslinks-->
<link href="css/mycss.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/demo.css">
<link rel="stylesheet" href="css/common.css">
<!---->
<link rel="shortcut icon" href="img/logo.jpg" type="favicon/ico" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script language="JavaScript">
<!--
$(document).ready(function() {
        function disableBack() { window.history.forward(); }

        window.onload = disableBack();
        window.onpageshow = function(evt) { if (evt.persisted) disableBack(); };
    });
function calculateBmi() {
var weight = document.bmiForm.weight.value;
var height = document.bmiForm.height.value;
if(height > weight)
{
alert("It seems you interchanged the values")
}
else{
if(weight > 0 && height > 0){	
var finalBmi = weight/(height/100*height/100);
document.bmiForm.bmi.value = finalBmi;
}
else{
alert("Please Fill in everything correctly")
}
}
}
//-->
</script>
<style>
    .welcome#client{
        height: 750px;
    }
</style>
</head>
<body>
<%
        String client="";
        Object o=session.getAttribute("client");
 
        //response.setHeader("Cache-Control", "no-cache"); // HTTP 1.1.
        //response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
        //response.setHeader("Expires", "0"); // Proxies.

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
<div id="welcome" class="client" style="height:900px;">
<hr><hr><span class="glyphicon glyphicon-thumbs-up"></span> Hi &nbsp;<%=cd.getC_name()%> !!!
<hr><hr>
<div class="plaintext">Every Medical Report is Important. You might need any of them anytime,anywhere<br><a href="AddRepoDt.jsp"><span class="glyphicon glyphicon-time">Upload Reports</span></a> on Kingkango and then your reports are just few clicks away.</div>

<hr><hr>
<div class="plaintext">Need An Earlier Saved Report. Relax ! We have them <br><a href="show_Reports.jsp"><span class="glyphicon glyphicon-download">In Here</span></a>Your Reports are safe with Kingkango.</div>
<hr><hr>
</div>

<script>
$(document).ready(function(){
 $('#sidebar_btn').click(function()
{$('#sidebar').toggleClass('visible');
});
});
</script>
<!--Footer-->
<div class="footer" id="client" style="position:absolute;top: 1250px;">
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