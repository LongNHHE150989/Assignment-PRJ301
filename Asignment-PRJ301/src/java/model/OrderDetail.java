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
public class OrderDetail {
    private int id;
    private int orderID;
    private String productName;
    private String productImage;
    private double productPrice;
    private int quantity;

    public OrderDetail() {
    }

    public OrderDetail(int id, int orderID, String productName, String productImage, double productPrice, int quantity) {
        this.id = id;
        this.orderID = orderID;
        this.productName = productName;
        this.productImage = productImage;
        this.productPrice = productPrice;
        this.quantity = quantity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "OrderDetail{" + "id=" + id + ", orderID=" + orderID + ", productName=" + productName + ", productImage=" + productImage + ", productPrice=" + productPrice + ", quantity=" + quantity + '}';
    }
    
    
}
