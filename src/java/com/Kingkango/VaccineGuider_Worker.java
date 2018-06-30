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
//EDITING REMAINING GUIDER WORKER.....
public class VaccineGuider_Worker {
     public static String addGuider(VaccineGuider_Dt gd)
    {
       String result = "";
       try
       {
           String query="Insert into vaccine_guider(Vacc_id,Group_mem_id,Vacc_date) values (?,?,?)";
           PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
           pstmt.setInt(1,gd.getVacc_id());
           pstmt.setInt(2,gd.getClient_g_id());
           pstmt.setString(3,gd.getGuider_date());
           
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
     public static String UpdateVaccineGuider(VaccineGuider_Dt gd)
    {
        String result="";
        try
        {
            String query="Update vaccine_guider set Vacc_id=?,Group_mem_id=?,Vacc_date=? where Guider_id=?";
            PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
            pstmt.setInt(1,gd.getVacc_id());
            pstmt.setInt(2,gd.getClient_g_id());
            pstmt.setString(3,gd.getGuider_date());
            
            pstmt.setInt(4,gd.getGuider_id());
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
    public static String deleteVaccineGuider(int g_id)
    {
       String result="";
    try
    {        
        String query="Delete from vaccine_guider where Guider_id='"+g_id+"';";
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
  public static VaccineGuider_Dt showGuiderById(int Guider_id)
    {
        VaccineGuider_Dt gd=null;
        try
        {
            String query="Select * from vaccine_guider where Guider_id ="+Guider_id+";";
            ResultSet rs=DatabaseConnector.getResultSet(query);
                    if(rs.next())
                    {
                        gd=new VaccineGuider_Dt();
                        gd.setGuider_id(rs.getInt(1));
                        gd.setVacc_id(rs.getInt(2));
                        gd.setClient_g_id(rs.getInt(3));
                        gd.setGuider_date(rs.getString(4));
                        
                    }
         }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return gd;
    }
    
    //Client get all
    public static ArrayList<VaccineGuider_Dt> getAllGuider()
        {
            ArrayList<VaccineGuider_Dt>list=new ArrayList<VaccineGuider_Dt>();
            try
            {
                String query="Select * from vaccine_guider;";
                ResultSet rs=DatabaseConnector.getResultSet(query);
                while(rs.next())
                {
                    VaccineGuider_Dt gd=new VaccineGuider_Dt();
                    gd.setGuider_id(rs.getInt(1));
                    gd.setVacc_id(rs.getInt(2));
                    gd.setClient_g_id(rs.getInt(3));
                    gd.setGuider_date(rs.getString(4));
                    
                        
                    list.add(gd);
                    gd=null;
                 }
             }
             catch(Exception e)
             {
                 e.printStackTrace();
             }
                return list;
        }
}

