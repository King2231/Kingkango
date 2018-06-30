/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Kingkango;
import java.util.*;
/**
 *
 * @author aditi bobhate
 */
public class DateWorker 
{
    public static String getCurrentDate()
    {
        Calendar cal=Calendar.getInstance();
        int m=cal.get(Calendar.MONTH)+1;
        int y=cal.get(Calendar.YEAR);
        int d=cal.get(Calendar.DATE);
        String date=""+y+"-"+m+"-"+d;
        return date;
        
    }
    public static String convertToSql(String date)
    {
        String[] dates=date.split("-");
        String std=dates[2]+"-"+dates[1]+"-"+dates[0];
        return std;
    }
    public static String convertToStandard(String date)
    {
      String[] dates=date.split("-");
        String std=dates[2]+"-"+dates[1]+"-"+dates[0];
        return std;  
    }
}
