/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Kingkango;

/**
 *
 * @author King
 */
import java.sql.*;
import java.util.*;
public class MultipleImageWorker 
{
    public static String addMultipleImg(MultipleImage b)

	{

	String result="";

	try

	{
                        
	String query="insert into galleryimages set img1=?,img2=?,img3=?,img4=?;";

	PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);

	pstmt.setString(1,b.getImg1());
	pstmt.setString(2,b.getImg2());
	pstmt.setString(3,b.getImg3());
        pstmt.setString(4,b.getImg4());
     
        
	int i=pstmt.executeUpdate();				
	if(i==1)
	{
	result=Results.Success;
	}

	else
	{
	   result=Results.FAILURE;
	}

	}

	catch(Exception e)

	{

	result=Results.PROBLEM;

	e.printStackTrace();

	}

	return result;

	}

//----------add Description-------------
    
  public static String addDescriptionImg(MultipleImage b)

	{

	String result="";

	try

	{

	String query="insert into galleryimages(ProjectName,Description,ProjectCategory,Location) values(?,?,?,?);";

	PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);

	
        pstmt.setString(1,b.getProjectName());
        pstmt.setString(2,b.getDescription());
        pstmt.setString(3,b.getProjectCategory());
        pstmt.setString(4,b.getLocation());
        
	int i=pstmt.executeUpdate();				
	if(i==1)
	{
	result=Results.Success;
	}

	else
	{
	   result=Results.FAILURE;
	}

	}

	catch(Exception e)

	{

	result=Results.PROBLEM;

	e.printStackTrace();

	}

	return result;

	}
 //--------------------------------------
  
  
  
  
//--------------------------UPDATE----------------------

	public static String updateMultipleImg(MultipleImage b)

	{

	String result="";

	try

	{

	String query="update galleryimages set img1=?,img2=?,img3=? where Id=?;";

	PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);

	pstmt.setString(1,b.getImg1());

	pstmt.setString(2,b.getImg2());

	pstmt.setString(3,b.getImg3());

	int i=pstmt.executeUpdate();

	if(i==1)
	{
	result=Results.Success;
	}

	else
	{
	result=Results.FAILURE;
	}

	}

	catch(Exception e)

	{

	result=Results.PROBLEM;

	e.printStackTrace();

	}

	return result;

	}


//--------------------------DELETE----------------------

	public static String deleteMultipleImg(int id)
	{
	String result="";
	try
	{
	String query="delete from galleryimages where Id=?;";

	PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);

	pstmt.setInt(1,id);

	int i=pstmt.executeUpdate();

	if(i==1)
	{
	result=Results.Success;
	}

	else
	{
	result=Results.FAILURE;
	}

	}

	catch(Exception e)

	{

	result=Results.PROBLEM;

	e.printStackTrace();

	}

	return result;

	}
//--------------------------SELECT----------------------

	public static MultipleImage getMultipleImgById(int id)
	{
	MultipleImage b=null;
	try
	{

	String query="select * from galleryimages where Id="+id+";";

	Statement stmt=DatabaseConnector.getStatement();

	ResultSet rs=stmt.executeQuery(query);

	if(rs.next())

	{

	b=new MultipleImage();

	b.setId(rs.getInt(1));
	b.setImg1(rs.getString(2));
	b.setImg2(rs.getString(3));
	b.setImg3(rs.getString(4));
	}

	}

	catch(Exception e)

	{

	e.printStackTrace();

	}

	return b;

	}

        
        public static ArrayList<MultipleImage> getAllImages()
     {
         
        ArrayList<MultipleImage> list=new  ArrayList<MultipleImage>();
         try
         {
             String query="Select * from galleryimages";
             ResultSet rs=DatabaseConnector.getResultSet(query);
             while(rs.next())
             {
                MultipleImage m =new MultipleImage();
       
                m.setId(rs.getInt(1));
                m.setImg1(rs.getString(2));
                m.setImg2(rs.getString(3));
                m.setImg3(rs.getString(4));
                m.setImg4(rs.getString(5));
                m.setProjectName(rs.getString(6));
                m.setDescription(rs.getString(7));
                m.setProjectCategory(rs.getString(8));
                m.setLocation(rs.getString(9));
                
                list.add(m);
               m=null;
             }
              
          
        }
            catch(Exception ex)
            {
                
          ex.printStackTrace();
            }
       
       return list;
        
     } 
    //get ID by projectname
      
        public static int getIdByProjectName(String ProjectName)
     {
        
        int id=0;
         try
         {
             String query="Select id from galleryimages where ProjectName='"+ProjectName+"';";
             ResultSet rs=DatabaseConnector.getResultSet(query);
             if(rs.next())
             {
              id=rs.getInt(1);
             }
          
        }
            catch(Exception ex)
            {
               
          ex.printStackTrace();
            }
        return id;
     }
        
}
