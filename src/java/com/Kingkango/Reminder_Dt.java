/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Kingkango;

/**
 *
 * @author King
 */
public class Reminder_Dt {
    int rem_id,r_c_id;

    public int getR_c_id() {
        return r_c_id;
    }

    public void setR_c_id(int r_c_id) {
        this.r_c_id = r_c_id;
    }
    String rem_mail,rem_time,rem_desc;

    public int getRem_id() {
        return rem_id;
    }

    public void setRem_id(int rem_id) {
        this.rem_id = rem_id;
    }

    public String getRem_mail() {
        return rem_mail;
    }

    public void setRem_mail(String rem_mail) {
        this.rem_mail = rem_mail;
    }

    public String getRem_time() {
        return rem_time;
    }

    public void setRem_time(String rem_time) {
        this.rem_time = rem_time;
    }

    public String getRem_desc() {
        return rem_desc;
    }

    public void setRem_desc(String rem_desc) {
        this.rem_desc = rem_desc;
    }
}
