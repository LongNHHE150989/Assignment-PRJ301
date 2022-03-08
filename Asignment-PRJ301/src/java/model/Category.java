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
public class Category {
    private int cateID;
    private String cname;

    public Category() {
    }

    public Category(int cateID, String cname) {
        this.cateID = cateID;
        this.cname = cname;
    }

    public int getCateID() {
        return cateID;
    }

    public void setCateID(int cateID) {
        this.cateID = cateID;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    @Override
    public String toString() {
        return "Category{" + "cateID=" + cateID + ", cname=" + cname + '}';
    }
    
    
}
