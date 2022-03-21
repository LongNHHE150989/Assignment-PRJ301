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
public class Customer {
    private String firstname;
    private String lastname;
    private String phone;
    private String email;
    private String address;
    private String cimage;

    public Customer() {
    }

    public Customer(String firstname, String lastname, String phone, String email, String address, String cimage) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.phone = phone;
        this.email = email;
        this.address = address;
        this.cimage = cimage;
    }

    

    

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firtname) {
        this.firstname = firtname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCimage() {
        return cimage;
    }

    public void setCimage(String cimage) {
        this.cimage = cimage;
    }

    @Override
    public String toString() {
        return "Customer{" + "firtname=" + firstname + ", lastname=" + lastname + ", phone=" + phone + ", email=" + email + ", address=" + address + ", cimage=" + cimage + '}';
    }
    
}
