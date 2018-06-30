<%-- 
    Document   : AddEventsAction
    Created on : Dec 29, 2015, 11:20:47 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.Kingkango.*,java.io.*,java.lang.*,java.sql.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="java.util.*, java.io.*" %>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.List"%>
<%@ page import="java.io.File"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <% 
        String client="";
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

           
                String action="add";
           //     String eventid=(String)session.getAttribute("eventid");
                if(action.equalsIgnoreCase("add"))
                {
					String image1=request.getParameter("fileimage1");
					String image2=request.getParameter("fileimage2");
					String image3=request.getParameter("fileimage3");
					String image4=request.getParameter("fileimage4");
                                                                             
     					
                                        //String r_name=(String)session.getAttribute("rep_name");
                                        //String r_date=(String)session.getAttribute("rep_date");
                                        //String r_t_date=(String)session.getAttribute("rep_t_dt");
                                        
                                      
                                        File savedFile1,savedFile2,savedFile3,savedFile4;
                                        ArrayList<String> list=new ArrayList<String>();
					try
					{
						String fileimage1="";
						String fileimage2="";
						String fileimage3="";
						String fileimage4="";
						String itemName1 = "";
						String itemName2 = "";
						String itemName3 = "";
						String itemName4 = "";
                                                String value="";
                                                String ImageFile="";
                                                String itemName="";
						boolean isMultipart = ServletFileUpload.isMultipartContent(request);
						if (!isMultipart)
						{
							System.out.println("i m in nt multipart of tempeventaction");
						}
						else
						{
							FileItemFactory factory = new DiskFileItemFactory();
							ServletFileUpload upload = new ServletFileUpload(factory);
							List items = null;
							try
							{
								items = upload.parseRequest(request);
							}
							catch (FileUploadException e)
							{
								e.getMessage();
							}
 
							Iterator itr = items.iterator();
							while (itr.hasNext())
                                                        {  
                                                                                                        FileItem item = (FileItem) itr.next();  
                                                                                                        if (item.isFormField()) 
                                                                                                            { 

                                                                                                                String name = item.getFieldName(); 
                                                                                                                value = item.getString();
				
//                                                              list.add(value);
                                                                                                        System.out.println("list "+list);
				
                                                                                                if(name.equals("ImageFile")) 
                                                                                            { 
                                                                    ImageFile=value; 
                                                                } 
				   
                                                            }               
                                                            else 
                                                            {  
                                                                try 
                                                                {  
                                                                    itemName = item.getName();
                                                                    itemName=itemName;
                                                                    File savedFile = new File(config.getServletContext().getRealPath("/")+"Example\\image-folder\\"+itemName);   
                                                                    String path=savedFile.toString();
                                                                    System.out.println("image path "+path);
				  //File savedFile = new File("C:\\Users\\sagar\\Desktop\\JAVA Training\\code(1)\\test\\WebContent\\WEB-INF\\uploads\\"+itemName);      
				 //File savedFile = new File(config.getServletContext ().getRealPath("/")+"uploadedFiles/"+itemName);  
                                                                    item.write(savedFile);    
								 
	//out.println("<tr><td><b>Your file has been saved at the loaction:</b></td></tr><tr><td><b>"+config.getServletContext().getRealPath  
	//("/")+"uploadedFiles"+"\\"+itemName+"</td></tr>");  
                                                                    out.println("<tr><td><b>Your file has been saved at the loaction:</b></td></tr><tr><td><b>"+path+("/")+"uploadedFiles"+"\\"+itemName+"</td></tr>");
					
                                                                    list.add(itemName);
					
                                                                } 
                                                                catch (Exception e) 
                                                                {  
                                                                    e.printStackTrace();  
                                                                }  
                                                            }  
                                                        }
						try
						{
							System.out.println("i m in try");
                                                        image1=list.get(0);
                                                        image2=list.get(1);
                                                        image3=list.get(2);
                                                        image4=list.get(3);
							
                                                        Reports_Dt ev=new Reports_Dt();
                                                        
							ev.setRep_pic1(image1);
							ev.setRep_pic2(image2);
							ev.setRep_pic3(image3);
							ev.setRep_pic4(image4);
                                                        int rep_id=Reports_Worker.getMaxId();
                                                        ev.setRep_id(rep_id);
                                                        
                                                        
							System.out.println(image1);
							System.out.println(image2);
							System.out.println(image3);
							System.out.println(image4);
                                                        
							
                                                        
							if(ev==null)
							{
								System.out.println("i m here");
							}
							String result=Reports_Worker.AddRepoImg(ev);
                                                        
							if(result.equals(Results.Success))
							{
                                                            response.sendRedirect("Success.jsp");
                                                         }
							else
							{
								session.setAttribute("alertMsg", "data add fail");
								response.sendRedirect("Error.jsp");
                               
							}
                                                
						}
						catch(Exception el)
						{
							response.sendRedirect("Error.jsp");
						}
                                                }
					}
					catch(Exception e)
					{
						response.sendRedirect("Error.jsp");
					}
                }
          %>
    </body>
</html>
