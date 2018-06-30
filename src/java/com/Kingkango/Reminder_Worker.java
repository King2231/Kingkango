/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Kingkango;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author King
 */
public class Reminder_Worker {
         public static String addReminder(Reminder_Dt rd)
    {
       String result = "";
       try
       {
           String query="Insert into reminder(Reminder_mail,Reminder_time,Reminder_desc,Reminder_c_id) values (?,?,?,?)";
           PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
           pstmt.setString(1,rd.getRem_mail());
           pstmt.setString(2,rd.getRem_time());
           pstmt.setString(3,rd.getRem_desc());
           pstmt.setInt(4,rd.getR_c_id());
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
     public static String UpdateReminder(Reminder_Dt rd)
    {
        String result="";
        try
        {
            String query="Update reminder set Reminder_mail=?,Reminder_time=?,Reminder_desc=? where Reminder_id=?";
            PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
            pstmt.setString(1,rd.getRem_mail());
            pstmt.setString(2,rd.getRem_time());
            pstmt.setString(3,rd.getRem_desc());
         
            pstmt.setInt(4,rd.getRem_id());
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
    public static String deleteReminder(int r_id)
    {
       String result="";
    try
    {        
        String query="Delete from reminder where Reminder_id='"+r_id+"';";
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
  public static Reminder_Dt showReminderById(int Reminder_id)
    {
        Reminder_Dt rd=null;
        try
        {
            String query="Select * from reminder where Reminder_id ="+Reminder_id+";";
            ResultSet rs=DatabaseConnector.getResultSet(query);
                    if(rs.next())
                    {
                        rd=new Reminder_Dt();
                        rd.setRem_id(rs.getInt(1));
                        rd.setRem_mail(rs.getString(2));
                        rd.setRem_time(rs.getString(3));
                        rd.setRem_desc(rs.getString(4));
                        rd.setR_c_id(rs.getInt(5));
                    }
         }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return rd;
    }
    
    //Client get all
    public static ArrayList<Reminder_Dt> getAllReminder()
        {
            ArrayList<Reminder_Dt>list=new ArrayList<Reminder_Dt>();
            try
            {
                String query="Select * from reminder;";
                ResultSet rs=DatabaseConnector.getResultSet(query);
                while(rs.next())
                {
                    Reminder_Dt rd=new Reminder_Dt();
                    rd.setRem_id(rs.getInt(1));
                        rd.setRem_mail(rs.getString(2));
                        rd.setRem_time(rs.getString(3));
                        rd.setRem_desc(rs.getString(4));
                        rd.setR_c_id(rs.getInt(5));
                        
                    list.add(rd);
                    rd=null;
                 }
             }
             catch(Exception e)
             {
                 e.printStackTrace();
             }
                return list;
        }
        public static ArrayList<Reminder_Dt> getAllReminderByC_id(int c_id)
        {
            ArrayList<Reminder_Dt>list=new ArrayList<Reminder_Dt>();
            try
            {
                String query="Select * from reminder where Reminder_c_id='"+c_id+"';";
                ResultSet rs=DatabaseConnector.getResultSet(query);
                while(rs.next())
                {
                    Reminder_Dt rd=new Reminder_Dt();
                    rd.setRem_id(rs.getInt(1));
                        rd.setRem_mail(rs.getString(2));
                        rd.setRem_time(rs.getString(3));
                        rd.setRem_desc(rs.getString(4));
                        rd.setR_c_id(rs.getInt(5));
                        
                    list.add(rd);
                    rd=null;
                 }
             }
             catch(Exception e)
             {
                 e.printStackTrace();
             }
                return list;
        }

}
