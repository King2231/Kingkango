
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.tomcat.util.http.fileupload.*"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileUploadException"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItemFactory"%>
<%@page import="com.Kingkango.*,java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>  

<%@ page import="java.util.ResourceBundle" %>  
<%@ page import="java.text.*"%>  


<html>  
<head>  
<title>Insert title here</title>  
</head>  
<body>  
    <center>  
        <table border="2">  
            <tr>  
                <td>  
                    <h1>Your files uploaded</h1>  
                </td>  
            </tr>
        </table>
			<%
			String ImageFile="";
			String value="";
			String itemName="";
			String pic1="";
			String pic2="";
			String pic3="";
			
			ArrayList<String> list=new ArrayList<String>();

			boolean isMultipart = ServletFileUpload.isMultipartContent(request);  
			if (!isMultipart) 
				{  
					System.out.println(":::::::::::::::::: multipart is null :::::::::::::::");
				} 
			else 
				{
				String directory="";  
				FileItemFactory factory = new DiskFileItemFactory();  
			   ServletFileUpload upload = new ServletFileUpload(factory);  
			   List items = null;  
			   try {  
					   items = upload.parseRequest(request);  
			   } 
                           catch(Exception e) {  
					   e.printStackTrace();  
			   }
			   Iterator itr = items.iterator();  
			   while (itr.hasNext()) {  
			   FileItem item = (FileItem) itr.next();  
			   if (item.isFormField()) { 

				 String name = item.getFieldName(); 
				 value = item.getString();
				
//				 list.add(value);
				 System.out.println("list "+list);
				
				if(name.equals("ImageFile")) 
				  { 
					ImageFile=value; 
				  } 
				   
			   } else {  
					   try {  
				 itemName = item.getName();
				 
				 DateFormat df = new SimpleDateFormat("ddMMyyHHmmss");
				java.util.Date curTime= new java.util.Date();
				String time=df.format(curTime);
				
				 itemName=time+itemName;
				 File savedFile = new File(config.getServletContext().getRealPath("/")+"Example\\image-folder\\"+itemName);   
				 String path=savedFile.toString();
				 System.out.println("image path "+path);
				  //File savedFile = new File("C:\\Users\\sagar\\Desktop\\JAVA Training\\code(1)\\test\\WebContent\\WEB-INF\\uploads\\"+itemName);      
				 //File savedFile = new File(config.getServletContext ().getRealPath("/")+"uploadedFiles/"+itemName);  
							   item.write(savedFile);    
								 
	//out.println("<tr><td><b>Your file has been saved at the loaction:</b></td></tr><tr><td><b>"+config.getServletContext().getRealPath  
	//("/")+"uploadedFiles"+"\\"+itemName+"</td></tr>");  
	out.println("<tr><td><b>Your file has been saved at the loaction:</b></td></tr><tr><td><b>"+path+  
	("/")+"uploadedFiles"+"\\"+itemName+"</td></tr>");
					
					list.add(itemName);
					
					   } catch (Exception e) {  
							   e.printStackTrace();  
					   }  
			   }  
           }
		   
		   try
	{
			   
		pic1=list.get(0);
		pic2=list.get(1);
		pic3=list.get(2);
		MultipleImage r=new MultipleImage();
		//stmt.executeUpdate("insert into multipleimg (img1,img2,img3)value('"+pic1+"','"+pic2+"','"+pic3+"')"); 
				 
		r.setImg1(pic1);
		r.setImg2(pic2);
		r.setImg3(pic3);
		
		System.out.println("Updatequery in try block ");
		
//		session.setAttribute("email",list.get(1));
//		System.out.println("email set in profile action :"+list.get(1));
		response.sendRedirect("http://www.google.com");
		
	  }
		catch(Exception el)
		{
		out.println("Inserting error :"+el.getMessage());
		}
   }  
   %>
        
		  
    </center>  
  
  
</body>  
</html>