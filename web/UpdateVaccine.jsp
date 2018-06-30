<%@page import="java.util.ArrayList"%>
<%@page import="com.Kingkango.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Kinkango</title>

<!--bootstrap links-->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
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
    $('#home').show();
    $('#menu a').click(function(e){
        e.preventDefault();
        $('.admincontent').hide();
        $('#'+$(this).attr('rel')).show();
        location.hash = '#!/'+$(this).attr('rel');
        return false;
    });
});
function showVaccine(vid)
{
    if(window.XMLHttpRequest)
        {
            xmlhttp=new XMLHttpRequest();
            
        }
     else
         {
             xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
         }
     xmlhttp.onreadystatechange=function(){
         if(xmlhttp.readyState==4 && xmlhttp.status==200)
             {
                 alert(str);
                 var vd=new Vaccine_Dt();
                 vd= xmlhttp.response;
             }
     }
     xmlhttp.open("GET","getVaccine.jsp?id=vid",true);
     xmlhttp.send();
}
    

</script>

<style type="text/css">
.admincontent {
    display: none;
}
</style>

</head>
<body>
<%
        String admin="";
        Object o=session.getAttribute("admin");
 
        response.setHeader("Cache-Control", "no-cache"); // HTTP 1.1.
        response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
        response.setHeader("Expires", "-1"); // Proxies.

        Admin_Dt ad=new Admin_Dt();
 
        if(o!=null)
            {
                
                ad=(Admin_Dt)o;
                System.out.println(ad.getAdmin_name());
            
            }
        else
        {
            
            session.invalidate();
            response.sendRedirect("Admin_Login.jsp");
        }
%>
<div id="header"><div id="brand">KINGKANGO</div>
<font size="30px">
Hi <%=ad.getAdmin_name()%> !!!!<a href="Admin_Logout.jsp" title="Logout"><span class="glyphicon glyphicon-log-out"></span></a>
</font>
</div>
<div class="container">
<nav>
 <div class="nav">
 <ul id="menu">
   <li><a href="addClient.html"><span class="glyphicon glyphicon-user">Clients</span></a></li>
  <li><a href="addFeedbak.html"><span class="glyphicon glyphicon-comment">Feedbacks</span></a></li>
  <li><a href="addInquiry.html"><span class="glyphicon glyphicon-envelope">Inquiry</span></a></li>
  <li><a href="Vaccine.html"><span class="glyphicon glyphicon-tint">Vaccines</span></a></li>
  <li><a href="addVaccine.html"><span class="glyphicon glyphicon-plus-sign">Add Vaccines</span></a></li>
  <li><a href="updateVaccine.html"><span class="glyphicon glyphicon-plus-sign">Update Vaccines</span></a></li>
 </ul>
     
 </div>
</nav>

<div class="content" >

<div class="admincontent" id="home">
    <div class="container">
        <% int vid=Integer.parseInt(request.getParameter("id"));
            System.out.println(vid);
            Vaccine_Dt vd=Vaccine_Worker.showVaccineById(vid);
        %>
<h1>Update Vaccine</h1>  
        <form role="form" action="UPDVaccine.jsp">
            
        <div class="form-control-static"> 
            <div class="col-lg-5">
                <input type='hidden' name='vacc_id' value='<%=vd.getVaccine_id()%>'>
                <label for="usr">Vaccine Name:</label>
            <input type="text" name="v_name" class="form-control input-lg" id="usr" value="<%=vd.getVaccine()%>">
                <br><br>   
                
            <label for="usr">Age At Which Vaccine Is To Be Given In Days:</label>
            <input type="text" name="v_age" class="form-control input-lg" id="usr" value="<%=vd.getVacc_age_days()%>">
                    <br><br> 
    
     <label for="usr">Range In Days Within Which The Vaccination Should Be Done(If Applicable):</label>
     <input type="text" name="v_range" class="form-control input-lg" id="usr" value="<%=vd.getRange()%>">
    <br><br>
    
        
     <label for="usr">DOSE (In case of Multiple Doses mention to which dose this info belongs):</label>
     <input type="text" name="v_dose" class="form-control input-lg" id="usr" value="<%=vd.getDose()%>">
    <br><br>
                  
               
     <label for="comment">Message To Be Sent To The Client:</label><br>
     <textarea class="form-control input-lg" rows="5"  id="comment" name="v_message"><%=vd.getMessage()%></textarea><br>
      
     <center><input type="submit" class="bg-primary btn-lg" value="Update" name='action'>&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="bg-primary btn-lg" value="Delete" name='action'></center>
  </div>
    </div>        
        </form>
   
    </div>
</div>

</div>
</div>
<div id="footer">
copyright &copy; KINGKANGO
</div>
</body>
</html>