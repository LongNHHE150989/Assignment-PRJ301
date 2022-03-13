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
public class Account {
    private int accID;
    private String username;
    private String password;
    private boolean isAdmin;

    public Account() {
    }

    public Account(int accID, String username, String password, boolean isAdmin) {
        this.accID = accID;
        this.username = username;
        this.password = password;
        this.isAdmin = isAdmin;
    }

    

    public int getAccID() {
        return accID;
    }

    public void setAccID(int accID) {
        this.accID = accID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
    }

    @Override
    public String toString() {
        return "Account{" + "accID=" + accID + ", username=" + username + ", password=" + password + ", isAdmin=" + isAdmin + '}';
    }
    
}
