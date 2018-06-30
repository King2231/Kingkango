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
public class Vaccine_Worker {
     public static String addVaccine(Vaccine_Dt vd)
    {
       String result = "";
       try
       {
           String query="Insert into vaccine_details(Vacc_Age_days,Vacc_Range,Vaccine,Dose,Message) values (?,?,?,?,?)";
           PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
           pstmt.setInt(1,vd.getVacc_age_days());
           pstmt.setString(2,vd.getRange());
           pstmt.setString(3,vd.getVaccine());
           pstmt.setString(4,vd.getDose());
           pstmt.setString(5,vd.getMessage());
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
     public static String UpdateVaccine(Vaccine_Dt vd)
    {
        String result="";
        try
        {
            String query="Update vaccine_details set Vacc_Age_days=?,Vacc_Range=?,Vaccine=?,Dose=?,Message=? where Vaccine_Id=?;";
            PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
            pstmt.setInt(1,vd.getVacc_age_days());
            pstmt.setString(2,vd.getRange());
            pstmt.setString(3,vd.getVaccine());
            pstmt.setString(4,vd.getDose());
            pstmt.setString(5,vd.getMessage());
            
            pstmt.setInt(6,vd.getVaccine_id());
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
    public static String deleteVaccine(Vaccine_Dt vd)
    {
       String result="";
    try
    {        
        String query="Delete from vaccine_details where Vaccine_Id=?;";
        PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
        pstmt.setInt(1,vd.getVaccine_id());
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
  public static Vaccine_Dt showVaccineById(int Vaccine_id)
    {
        Vaccine_Dt vd=null;
        try
        {
            String query="Select * from vaccine_details where Vaccine_Id ="+Vaccine_id+";";
            ResultSet rs=DatabaseConnector.getResultSet(query);
                    if(rs.next())
                    {
                        vd=new Vaccine_Dt();
                        vd.setVaccine_id(rs.getInt(1));
                        vd.setVacc_age_days(rs.getInt(2));
                        vd.setRange(rs.getString(3));
                        vd.setVaccine(rs.getString(4));
                        vd.setDose(rs.getString(5));
                        vd.setMessage(rs.getString(6));
                        System.out.println(vd.getVaccine());
                    }
           DatabaseConnector.close();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return vd;
    }
    
    //Client get all
    public static ArrayList<Vaccine_Dt> getAllVaccine()
        {
            ArrayList<Vaccine_Dt>list=new ArrayList<Vaccine_Dt>();
            try
            {
                String query="Select * from vaccine_details;";
                ResultSet rs=DatabaseConnector.getResultSet(query);
                while(rs.next())
                {
                    Vaccine_Dt vd=new Vaccine_Dt();
                    
                    vd.setVaccine_id(rs.getInt(1));
                    vd.setVacc_age_days(rs.getInt(2));
                    vd.setRange(rs.getString(3));
                    vd.setVaccine(rs.getString(4));
                    vd.setDose(rs.getString(5));
                    vd.setMessage(rs.getString(6));
                        
                    list.add(vd);
                    vd=null;
                 }
             }
             catch(Exception e)
             {
                 e.printStackTrace();
             }
                return list;
        }
}
