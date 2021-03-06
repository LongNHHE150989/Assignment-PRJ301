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
public class Order {
    private int id;
    private int accountId;
    private double totalPrice;
    private String note;
    private String createdDate;
    private int shippingID;
    private Shipping shipping;
    private int statusID;
    private Status status;

    public Order() {
    }

    public Order(int id, int accountId, double totalPrice, String note, String createdDate, int shippingID, Shipping shipping, int statusID, Status status) {
        this.id = id;
        this.accountId = accountId;
        this.totalPrice = totalPrice;
        this.note = note;
        this.createdDate = createdDate;
        this.shippingID = shippingID;
        this.shipping = shipping;
        this.statusID = statusID;
        this.status = status;
    }

    

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }

    public int getShippingID() {
        return shippingID;
    }

    public void setShippingID(int shippingID) {
        this.shippingID = shippingID;
    }

    public int getStatusID() {
        return statusID;
    }

    public void setStatusID(int statusID) {
        this.statusID = statusID;
    }

    public Shipping getShipping() {
        return shipping;
    }

    public void setShipping(Shipping shipping) {
        this.shipping = shipping;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Order{" + "id=" + id + ", accountId=" + accountId + ", totalPrice=" + totalPrice + ", note=" + note + ", createdDate=" + createdDate + ", shippingID=" + shippingID + ", shipping=" + shipping + ", statusID=" + statusID + ", status=" + status + '}';
    }
    
    
    
}
