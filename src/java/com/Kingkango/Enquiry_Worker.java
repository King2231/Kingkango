/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Kingkango;

import java.sql.*;
import java.util.ArrayList;
/**
 *
 * @author King
 */
public class Enquiry_Worker {
  public static String addEnquiry(Enquiry_Dt ed)
    {
       String result = "";
       try
       {
           String query="Insert into enquiry(enquiry_user_mail,enquiry_matter) values (?,?)";
           PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
           pstmt.setString(1,ed.getEnquiry_mail());
           pstmt.setString(2,ed.getEnquiry());
           int i=pstmt.executeUpdate();
           if(i==1)
           {
               result=Results.Success;
           }
           else
           {
               result=Results.FAILURE;
           }
       DatabaseConnector.close();
       }
       catch(Exception e)
        {
            e.printStackTrace();
        }
       return result;
    }
    
//Delete Family By id
    public static String deleteEnquiry(int e_id)
    {
       String result="";
    try
    {
        String query="Delete from enquiry where Enquiry_id='"+e_id+"';";
        PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
        int i=pstmt.executeUpdate();
        if(i==1)
        {
            result=Results.Success;
        }
   else
        {
            result=Results.FAILURE;
        
        }
    DatabaseConnector.close();
    }
    catch(Exception e)
    {
        result=Results.PROBLEM;
        e.printStackTrace();
    }
    return result;
    
   }
        //Enquiry get all
    public static ArrayList<Enquiry_Dt> getAllEnquiries()
        {
            ArrayList<Enquiry_Dt>list=new ArrayList<Enquiry_Dt>();
            try
            {
                String query="Select * from Enquiry;";
                ResultSet rs=DatabaseConnector.getResultSet(query);
                while(rs.next())
                {
                    Enquiry_Dt ed=new Enquiry_Dt();
                    ed=new Enquiry_Dt();
                    ed.setEnquiry_id(rs.getInt(1));
                    ed.setEnquiry_mail(rs.getString(2));
                    ed.setEnquiry(rs.getString(3));
                    list.add(ed);
                    ed=null;
                 }
             }
             catch(Exception e)
             {
                 e.printStackTrace();
             }
                return list;
        }
    public static Enquiry_Dt showEnquiryById(int Enquiry_id)
    {
        Enquiry_Dt ed=null;
        try
        {
            String query="Select * from enquiry where enquiry_id ="+Enquiry_id+";";
            ResultSet rs=DatabaseConnector.getResultSet(query);
                    if(rs.next())
                    {
                        ed=new Enquiry_Dt();
                        ed.setEnquiry_id(rs.getInt(1));
                        ed.setEnquiry_mail(rs.getString(2));
                        ed.setEnquiry(rs.getString(3));
                        
                     }                        
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return ed;
    }
    
}
