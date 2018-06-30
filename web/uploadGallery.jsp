<%-- 
    Document   : uploadImage
    Created on : 07-Mar-2016, 23:59:51
    Author     : King
--%>

<%@page import="com.Kingkango.*,java.sql.*,java.io.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	<link class="jsbin" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
        
<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Upload page</title>
		<style>
  article, aside, figure, footer, header, hgroup, 
  menu, nav, section { display: block; }
</style>
    </head>

  <jsp:include page="header.jsp"></jsp:include>  
    <body>
        
	<center><h1>Multiple file Upload</h1></center>
        
<form action="tempimg.jsp" method="post" enctype="multipart/form-data" id="form1">
    
<table border="2" align="center">  
      
<tr>  
          <div id="fileuploads" align="left">  
     
  <td>      
      <input type="file" name="fileimage1" id="fileField" onchange="readURL1(this);" />  
   </td>
   <td>
		<img id="blah1" src="#" alt="your image" />
  </td>
</tr>       
<tr>
    <td>
		<input type="file" name="fileimage2" id="fileField" onchange="readURL2(this);" />  
    </td>
    <td>
                <img id="blah2" src="#" alt="your image" />
    </td> 
</tr>      
<tr>
    <td>
		<input type="file" name="fileimage3" id="fileField" onchange="readURL3(this);" />  
     </td>
     <td>
                <img id="blah3" src="#" alt="your image" />
       
    </td>
</tr>

<tr>
    <td>
		<input type="file" name="fileimage4" id="fileField" onchange="readURL4(this);" />  
     </td>
     <td>
                <img id="blah4" src="#" alt="your image" />
      
    </td>
      </div>
</tr>

<tr>
 <td align="left" colspan="2">  
    <input type="submit" name="action" value="add">  
 </td>
 </tr>
        </table>
      </form>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>

<script>
function readURL1(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah1')
                    .attr('src', e.target.result)
                    .width(250)
                    .height(250);
					
            };

            reader.readAsDataURL(input.files[0]);
        }
    }

	function readURL2(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah2')
                    .attr('src', e.target.result)
                    .width(250)
                    .height(250);
					
            };

            reader.readAsDataURL(input.files[0]);
        }
    }

	function readURL3(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah3')
                    .attr('src', e.target.result)
                    .width(250)
                    .height(250);
					
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
    function readURL4(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah4')
                    .attr('src', e.target.result)
                    .width(250)
                    .height(250);
					
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
	</script>

