/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author long4
 */
public class Category {
    private int cateID;
    private String cname;
    private String cimage;
    private ArrayList<Product> CPlist = new ArrayList();
    
    public Category() {
    }

    public Category(int cateID, String cname, String cimage) {
        this.cateID = cateID;
        this.cname = cname;
        this.cimage = cimage;
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

    public String getCimage() {
        return cimage;
    }

    public void setCimage(String cimage) {
        this.cimage = cimage;
    }

    @Override
    public String toString() {
        return "Category{" + "cateID=" + cateID + ", cname=" + cname + ", cimage=" + cimage + ", CPlist=" + CPlist + '}';
    }
    
    
    
}
