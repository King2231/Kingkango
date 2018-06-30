/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Kingkango;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author King
 */
class ExecutionClassOnRun implements Runnable{
    public void performTask()
    {
      System.out.println("Vaccine Run");
      Calendar cal= Calendar.getInstance();
        
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
           
        String strdate = sdf.format(cal.getTime());
              
        System.out.println(strdate);
        
        ArrayList<VaccineGuider_Dt> list=new ArrayList<VaccineGuider_Dt>();
        try{
                String query="select * from vaccine_guider where Vacc_date='"+strdate+"';";
                ResultSet rs=DatabaseConnector.getResultSet(query);
                while(rs.next())
                {
                    VaccineGuider_Dt vd=new VaccineGuider_Dt();
                    vd.setGuider_id(rs.getInt(1));
                    vd.setVacc_id(rs.getInt(2));
                    vd.setClient_g_id(rs.getInt(3));
                    vd.setGuider_date(rs.getString(4));
                    list.add(vd);
                    vd=null;
                }  
                DatabaseConnector.close();
                for(VaccineGuider_Dt gd:list)
                {
                    int vacc_id= gd.getVacc_id();
                    Vaccine_Dt vgd=Vaccine_Worker.showVaccineById(vacc_id);
                    String body=vgd.getMessage();//message
                    
                    int m_id=gd.getClient_g_id();
                    System.out.println(m_id);
                    FamilyMember_Dt md=FamilyMember_Worker.showfamilymemberById(m_id);
                    int fid=md.getM_F_id();
                    System.out.println(fid);
                    Client_Dt cd=Client_Worker.getClientByFamilyId(fid);
                    String rec=cd.getC_mail();//mail
                    
                    String subject="Kingkango_Vaccine_Reminder";
                    System.out.println(rec + subject +body);
                    MailWorker ml=new MailWorker();//mailercode.
                    MailWorker.sendHTMLMail(rec, body, subject);
                    
                  VaccineGuider_Worker.deleteVaccineGuider(gd.getGuider_id());
                }
            
                 
           
                
                
    }
          catch(Exception e)
            {
                e.printStackTrace();
            }
        System.out.println("Reminder Run");
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        Date date = new Date();
        System.out.println(dateFormat.format(date));
        DateFormat Format = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        Date ndate = new Date();
        System.out.println(Format.format(ndate));
        
        String c=Format.format(ndate);
        
        ArrayList<Reminder_Dt> rlist= new ArrayList<Reminder_Dt>();
        try{
        String query="select * from reminder where Reminder_time='"+c+"';";
        ResultSet rs=DatabaseConnector.getResultSet(query);
        while(rs.next())
        {
          Reminder_Dt rd=new Reminder_Dt();
          rd.setRem_id(rs.getInt(1));
          rd.setRem_mail(rs.getString(2));
          rd.setRem_time(rs.getString(3));
          rd.setRem_desc(rs.getString(4));
          rlist.add(rd);
          rd=null;
        } 
        DatabaseConnector.close();
       }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        for(Reminder_Dt rd:rlist)
        {
            String rec=rd.getRem_mail();
            String subject="Kingkango_Reminder_System";
            //int id=rd.getR_c_id();
            //Client_Dt cd=Client_Worker.showClientById(id);
            //String name=cd.getC_name();
          
            String body=rd.getRem_desc();
            MailWorker.sendHTMLMail(rec, body, subject);
            Reminder_Worker.deleteReminder(rd.getRem_id());
        }
    }
    @Override
    public void run() {
        performTask();
   }
}
