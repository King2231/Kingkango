<%-- 
    Document   : AddGuider
    Created on : 12-Mar-2016, 15:48:11
    Author     : King
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.Kingkango.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kingkango :Guider</title>
     
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
<%
        int cid=cd.getClient_id();
        Client_Dt c=Client_Worker.showClientById(cid);
        int fid=c.getFam_id();
        ArrayList<FamilyMember_Dt> flist=new ArrayList<FamilyMember_Dt>();
                flist=FamilyMember_Worker.getAllF_Members(fid);
                
    
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
<div class="content1">
    <div class="clientcontent">
        <form action="AddVaccineGuider.jsp" method="post">
            <label for="usr">Please select the Family Member for whom you wish to set the guider:<br> If you haven't added them to your account please <a href='AddFamilyMember.jsp'>Please Add Them First</a></label>
            <select name="f_name" class="form-control input-lg" id="usr" required>
          
            <% for(FamilyMember_Dt fd:flist){%><option value="<%=fd.getMem_id()%>"><%=fd.getM_name()%></option>
    <%}%>
    </select>
    <br>  
        <%ArrayList <Vaccine_Dt> list=Vaccine_Worker.getAllVaccine();%>
            <table>
            <tr>
                <th>Select</th>
                <th>Vaccine Name</th>
             </tr>
            <% for(Vaccine_Dt vd:list) {%>
             <tr>
                 <td>
                <input type="checkbox" name="vaccine" value="<%=vd.getVaccine_id()%>" onselect="" id='myCheck'></td>
                <td><%=vd.getVaccine()%></td>
            
             </tr>
              <%}%>
        </table>   
        <input type="submit" value="submit" name="submit" onsubmit="myFunction()">
        </form>
    </div>
</div>
        <script>
function myFunction() {
    var x= document.getElementById("myCheck").required;
    if(x=="true")
        {
            alert("Select atleast on Vaccine");
            return true;
        }
        else
            {
        return false;    
        }
}
</script>

        <script>
$(document).ready(function(){
 $('#sidebar_btn').click(function()
{$('#sidebar').toggleClass('visible');
});
});
</script>
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
