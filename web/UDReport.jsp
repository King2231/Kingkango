<%-- 
    Document   : UDReport
    Created on : 21-Mar-2016, 08:44:29
    Author     : King
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Kingkango.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>  <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
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
        <title>Kingkango: Family</title>
        <style>
            th{font-size: 30px;
            text-align: center;
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
            /*String client="";
        Object o=session.getAttribute("client");
 
        response.setHeader("Cache-Control", "no-cache"); // HTTP 1.1.
        response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
        response.setHeader("Expires", "0"); // Proxies.

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
        int f_id=Client_Worker.getF_IdById(cd.getClient_id());
        ArrayList <FamilyMember_Dt> list= FamilyMember_Worker.getAllF_Members(f_id);
 */%>
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
</div><% 
            int f_id=Integer.parseInt(request.getParameter("f_name"));
            ArrayList <Reports_Dt> list=Reports_Worker.getAllReportsByGid(f_id);
            
%>
    <div class="content1">
    <div class="clientcontent">
        <a href="show_Reports.jsp" title="Show Reports">Show Earlier Reports</a>
    <form action="AddReportDt.jsp" method="post">
        
    <br>
    <label for="usr">Report name:</label>
    <input type="text" class="form-control input-lg" id="usr" name="rep_name"><br>

      <label for="usr">Upload Date:</label>
     <input type="date" class="form-control input-lg" id="usr" name="rep_dob"><br>
    
     <label for="usr">Test-Date:</label>
     <input type="date" class="form-control input-lg" id="usr" name="rep_test_dt"><br>
     
     <center><input type="submit" class="btn-lg" value="Next" name="next"></center>
     
    </form>
    </div>
</div>

        
    </body>
</html>
