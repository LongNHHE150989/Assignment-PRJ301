/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author long4
 */
public class Status {
    private int statusid;
    private String statusname;

    public Status() {
    }

    public Status(int statusid, String statusname) {
        this.statusid = statusid;
        this.statusname = statusname;
    }

    public int getStatusid() {
        return statusid;
    }

    public void setStatusid(int statusid) {
        this.statusid = statusid;
    }

    public String getStatusname() {
        return statusname;
    }

    public void setStatusname(String statusname) {
        this.statusname = statusname;
    }

    @Override
    public String toString() {
        return "Status{" + "statusid=" + statusid + ", statusname=" + statusname + '}';
    }
    
    
}
