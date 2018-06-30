<%-- 
    Document   : ShowAllCLient
    Created on : 27-Jan-2016, 11:41:08
    Author     : King
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.Kingkango.*"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/mycss.css" rel='stylesheet' type='text/css' />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kingkango : Reports</title>
        <meta charset="utf-8">
        <link rel="shortcut icon" href="img/logo.jpg" type="favicon/ico" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  #myCarousel.carousel slide{
      position: absolute;
      top: 200px;
  }
  </style>

    </head>
    <body>
        <% 
            int f_id=Integer.parseInt(request.getParameter("f_name"));
            ArrayList <Reports_Dt> list=Reports_Worker.getAllReportsByGid(f_id);
            int size=list.size();
            int slides=size*4;
            System.out.println(size);
        %>
        <div class="container">
  <br>
  <br>
  <br>
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
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <%for(int i=0;i<slides;i++){%>
      <li data-target="#myCarousel" data-slide-to="<%=i%>"></li>
      <%}%>
      
      <!--<li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>-->
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="img_chania.jpg" alt="Chania" width="460" height="345">
      </div>
<% for(Reports_Dt rd:list) {%>
      <div class="item">
       <a href="download.jsp?name=<%=rd.getRep_pic1()%>" title="download"><img src="Example/image-folder/<%=rd.getRep_pic1()%>" alt="Chania" width="460" height="345"></a>
      <label for="usr"><%=rd.getRep_name()%></label><br>
      <label for="usr"><%=rd.getRep_tdate()%></label>
      </div>
    
      <div class="item">
        <a href="download.jsp?name=<%=rd.getRep_pic2()%>" title="download"><img src="Example/image-folder/<%=rd.getRep_pic2()%>" alt="Flower" width="460" height="345"></a>
      <label for="usr"><%=rd.getRep_name()%></label><br>
      <label for="usr"><%=rd.getRep_tdate()%></label>
      </div>

      <div class="item">
        <a href="download.jsp?name=<%=rd.getRep_pic3()%>" title="download"><img src="Example/image-folder/<%=rd.getRep_pic3()%>" alt="Flower" width="460" height="345"></a>
      <label for="usr"><%=rd.getRep_name()%></label><br>
      <label for="usr"><%=rd.getRep_tdate()%></label>
      </div>
        <div class="item">
        <a href="download.jsp?name=<%=rd.getRep_pic4()%>" title="download"><img src="Example/image-folder/<%=rd.getRep_pic4()%>" alt="Flower" width="460" height="345"></a>
      <label for="usr"><%=rd.getRep_name()%></label><br>
      <label for="usr"><%=rd.getRep_tdate()%></label>
        </div>
<%}%>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

            
            
            
            
            
            
            
            
            
            
            
            
            <!--<div class="container">
        <table border="1" align="center" width="100%">
            <tr>
                <th>Report Name</th>
                <th>Report Date</th>
                <th>Upload Date</th>
             </tr>
            <% //for(Reports_Dt rd:list) {%>
            <tr align="center">
                <td><%//=rd.getRep_name()%></td>
                <td><%//=rd.getRep_tdate()%></td>
                <td><%//=rd.getRep_date()%></td>
            </tr>
            <%//}%>
        </table> 
        <%// for(Reports_Dt rd:list) {%>
        <a href="download.jsp?name=<%//=rd.getRep_pic1()%>" title="download"><img src="Example/image-folder/<%//=rd.getRep_pic1()%>" width="250" height="200" /></a><br>
        <a href="download.jsp?name=<%//=rd.getRep_pic2()%>" title="download"><img src="Example/image-folder/<%//=rd.getRep_pic2()%>" width="250" height="200" /></a><br>
        <a href="download.jsp?name=<%//=rd.getRep_pic3()%>" title="download"><img src="Example/image-folder/<%//=rd.getRep_pic3()%>" width="250" height="200" /></a><br>
        <a href="download.jsp?name=<%//=rd.getRep_pic4()%>" title="download"><img src="Example/image-folder/<%//=rd.getRep_pic4()%>" width="250" height="200" /></a><br>
        <%//}%>
        </div>-->
    </body>
</html>
