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
public class Feedback_Worker {
    public static String addFeedback(Feedback_Dt fbd)
    {
       String result = "";
       try
       {
           String query="Insert into feedback(Feedback_C_id,Feedback) values (?,?)";
           PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
           pstmt.setInt(1,fbd.getFeedback_c_id());
           pstmt.setString(2,fbd.getFeedback());
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
    
public static String updateFeedback(Feedback_Dt fbd)
    {
       String result = "";
       try
       {
           String query="update feedback set Feedback=? where Feedback_id=?";
           PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
           pstmt.setString(1,fbd.getFeedback());
           pstmt.setInt(2,fbd.getFeedback_id());
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
    public static String deleteFeedback(int fb_id)
    {
       String result="";
    try
    {
        String query="Delete from feedback where Feedback_id='"+fb_id+"';";
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
    public static ArrayList<Feedback_Dt> getAllFeedback()
        {
            ArrayList<Feedback_Dt>list=new ArrayList<Feedback_Dt>();
            try
            {
                String query="Select * from feedback;";
                ResultSet rs=DatabaseConnector.getResultSet(query);
                while(rs.next())
                {
                    Feedback_Dt fbd=new Feedback_Dt();
                    fbd=new Feedback_Dt();
                    fbd.setFeedback_id(rs.getInt(1));
                    fbd.setFeedback_c_id(rs.getInt(2));
                    fbd.setFeedback(rs.getString(3));
                    list.add(fbd);
                    fbd=null;
                 }
             }
             catch(Exception e)
             {
                 e.printStackTrace();
             }
                return list;
        }
    public static Feedback_Dt showfeedbackById(int Feedback_id)
    {
        Feedback_Dt fbd=null;
        try
        {
            String query="Select * from feedback where feedback_id ="+Feedback_id+";";
            ResultSet rs=DatabaseConnector.getResultSet(query);
                    if(rs.next())
                    {
                        fbd=new Feedback_Dt();
                        fbd=new Feedback_Dt();
                        fbd.setFeedback_id(rs.getInt(1));
                        fbd.setFeedback_c_id(rs.getInt(2));
                        fbd.setFeedback(rs.getString(3));
                    
                        
                     }                        
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return fbd;
    }
    
}

