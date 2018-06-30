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
 
        //response.setHeader("Cache-Control", "no-cache"); // HTTP 1.1.
        //response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
        //response.setHeader("Expires", "-1"); // Proxies.

        Admin_Dt ad=new Admin_Dt();
 
        if(o!=null)
            {
                System.out.println("not null");
                ad=(Admin_Dt)o;
                System.out.println(ad.getAdmin_name() + "not null");
            
            }
        else
        {
            System.out.println("null");
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
  <li><a href="showReminder.html"><span class="glyphicon glyphicon-plus-sign">Show Reminders</span></a></li>
 </ul>
     
 </div>
</nav>

<div class="content" >

<div class="admincontent" id="home">
    <div class="container-fluid">
        <h1>HOME </h1>    
    </div>
</div>
 <!--ADD ADMIN CONTENT-->   
    <div class="admincontent" id="addClient">
    <div class="container-fluid">
        <%ArrayList <Client_Dt> list=Client_Worker.getAllClient();%>
        <div class="container">
             <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>Date Of Birth</th>
        <th>Email</th>
        <th>Phone Number</th>
        <th>Address</th>
        <th>Blood Group</th>
        <th>Height</th>
        <th>Weight</th>
        <th>Gender</th>
      </tr>
    </thead>
    <tbody>
     <% for(Client_Dt cd:list) {%>
        <tr>
        <td><%= cd.getClient_id()%></td>
                <td><%=cd.getC_name()%></td>
                <td><%=cd.getC_dob()%></td>
                <td><%=cd.getC_mail()%></td>
                <td><%=cd.getC_phone()%></td>
                <td><%=cd.getC_address()%></td>
                <td><%=cd.getC_bg()%></td>
                <td><%=cd.getC_height()%></td>
                <td><%=cd.getC_weight()%></td>
                <td><%=cd.getC_gender()%></td>
      </tr>
      <%}%>
    </tbody>
  </table>
  </div>
</div>    
</div>
</div>
<!--ADD ADMIN CONTENT-->

<!--SHOW VACCINE CONTENT-->
<div class="admincontent" id="Vaccine">
    <div class="container-fluid">
        <h1>VACCINE </h1> 
        <%ArrayList <Vaccine_Dt> l=Vaccine_Worker.getAllVaccine();%>
        <div class="container">
   <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th>ID</th>
        <th>Vaccine Name</th>
        <th>Range</th>
        <th>Age Of Child(in days)</th>
        <th>Dose</th>
      </tr>
    </thead>
    <tbody>
     <% for(Vaccine_Dt vd:l) {%>
        <tr>
        <td><a href="UpdateVaccine.jsp?id=<%=vd.getVaccine_id()%>"><%= vd.getVaccine_id()%></a></td>
                <td><%=vd.getVaccine()%></td>
                <td><%=vd.getRange()%></td>
                <td><%=vd.getVacc_age_days()%></td>
                <td><%=vd.getDose()%></td>
      </tr>
      <%}%>
    </tbody>
  </table>
  </div>
</div>
</div>
</div>
<!--SHOW VACCINE CONTENT-->

<!--ENQUIRY -->
<div class="admincontent" id="addInquiry"><div class="container-fluid">
        <h1>ENQUIRY </h1> 
        <%ArrayList<Enquiry_Dt> en=new ArrayList<Enquiry_Dt>();
          en=Enquiry_Worker.getAllEnquiries();       
        %>
<div class="container">
   <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th>Mailer</th>
        <th>Query</th>
        <th>Options</th>
      </tr>
    </thead>
    <tbody>
     <% for(Enquiry_Dt e:en) {%>
        <tr>
        <td><%=e.getEnquiry_mail()%></td>
        <td><%=e.getEnquiry()%></td>
        <td style="font-size: 30px;letter-spacing: 5px;"><a href="DeleteEnquiry.jsp?id=<%=e.getEnquiry_id()%>" title="Delete"><span class="glyphicon glyphicon-trash"></span></a>&nbsp;<a href="ReplyEnquiry.jsp?id=<%=e.getEnquiry_id()%>" title="Reply"><span class="glyphicon glyphicon-envelope"></span></a>
      </tr>
      <%}%>
    </tbody>
  </table>
  </div>
</div>
    
    
    
    
    
    
    </div>
</div>
<!--ENQUIRY -->

<!--FEEDBACK-->
<div class="admincontent" id="addFeedbak">
    <div class="container-fluid">
        <%
            ArrayList<Feedback_Dt> li=Feedback_Worker.getAllFeedback();
    %> 
        <div class="feedback">
            <br><center> FeedBacks:</center>
      <div class="feedbackcontent">
        <%
       for(Feedback_Dt fd:li){
        int id=fd.getFeedback_c_id();
        Client_Dt c=Client_Worker.showClientById(id);
        %>
       
        <%=c.getC_name()%> :<br> <%=fd.getFeedback()%>
       <a href="adeleteFeedback.jsp?id=<%=fd.getFeedback_id()%>" title="remove"><span class="glyphicon glyphicon-remove"></span></a>
       <hr><br>  
       <%}%>
       
      </div>
    </div>    
<!--FEEDBACK-->
    
    
    </div>
</div>
       <div class="admincontent" id="addVaccine">
   <div class="container">
       <%ArrayList <Vaccine_Dt> V=Vaccine_Worker.getAllVaccine();%>
       <h1>Add Vaccine</h1>
        <form role="form" action="AddVaccine.jsp">
        <div class="form-control-static">
            <div class="container-fluid">
            <div class="col-lg-5">
     <label for="usr">Vaccine Name:</label>
     <input type="text" class="form-control input-lg" id="usr" name="v_name" required>
         <br><br>   
                
     <label for="usr">Age At Which Vaccine Is To Be Given In Days:</label>
     <input type="text" name="v_age" class="form-control input-lg" id="usr" required>
       <br><br> 
    
     <label for="usr">Range In Days Within Which The Vaccination Should Be Done(If Applicable):</label>
     <input type="text" name="v_range" class="form-control input-lg" id="usr">
    <br><br>
    
        
     <label for="usr">DOSE (In case of Multiple Doses mention to which dose this info belongs):</label>
     <input type="text" name="v_dose" class="form-control input-lg" id="usr">
    <br><br>
                  
               
     <label for="comment">Message To Be Sent To The Client:</label><br>
     <textarea class="form-control input-lg" rows="5"  id="comment" name="v_message" required></textarea><br>
       </div>
  </div>
            <center><input type="submit" class="bg-primary btn-lg" value="Submit"></center>
   </div> 
        </form>
     
</div>
       </div>
     


       <div class="admincontent" id="showReminder">
    <div class="container-fluid">
        <h1>VACCINE GUIDERS </h1> 
        <%ArrayList <VaccineGuider_Dt> rist=VaccineGuider_Worker.getAllGuider();%>
        <div class="container">
   <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th>Guider Id</th>
        <th>Guider Date</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
     <% for(VaccineGuider_Dt rd:rist) {%>
        <tr>
        <td><%=rd.getGuider_id()%></td>
        <td><%=rd.getGuider_date()%></td>
        <td><a href='deleteGuider.jsp?id=<%=rd.getGuider_id()%>'><span class='glyphicon glyphicon-remove'></td>          
      </tr>
      <%}%>
    </tbody>
  </table>
  </div>
</div>
</div>
</div>

</div>
</div>
<div id="footer">
copyright &copy; KINGKANGO
</div>
</body>
</html>