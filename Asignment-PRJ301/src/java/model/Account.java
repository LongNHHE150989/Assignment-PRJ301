package model;

public class Account {
    private String accountID;
    private String email;
    private String password;

    public Account() {
    }

    public Account(String accountID, String email, String password) {
        this.accountID= accountID;
        this.email = email;
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAccountID() {
        return accountID;
    }

    public void setAccountID(String accountID) {
        this.accountID = accountID;
    }
    
    
}