/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

/**
 *
 * @author long4
 */
public class AccountDAO extends BaseDAO<Account> {

    public Account login(String username, String password) {

        try {
            String sql = "select * from account\n"
                    + "where username =? and password =?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setAccID(rs.getInt("accID"));
                a.setUsername(rs.getString("username"));
                a.setPassword(rs.getString("password"));
                a.setIsAdmin(rs.getBoolean("isAdmin"));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Account checkAccountExist(String u) {
        try {
            String sql = "select * from account\n"
                    + "where username =?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, u);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setAccID(rs.getInt("accID"));
                a.setUsername(rs.getString("username"));
                a.setPassword(rs.getString("password"));
                a.setIsAdmin(rs.getBoolean("isAdmin"));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void signup(String username, String password) {
        try {
            String sql = "INSERT INTO [Assignment_PRJ].[dbo].[Account]\n"
                    + "           ([username]\n"
                    + "           ,[password]\n"
                    + "           ,[isAdmin])\n"
                    + "     VALUES\n"
                    + "           (?,?,0)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);
            statement.executeUpdate();

        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        AccountDAO dao = new AccountDAO();
        Account acc = dao.checkAccountExist("admin1");
//        for (Account o : listS) {
        System.out.println(acc);
//        }
    }
}
