/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
            Account a = new Account();
            a.setAccID(rs.getInt("accID"));
            a.setUsername(rs.getString("username"));
            a.setPassword(rs.getString("password"));

        } catch (Exception e) {
        }
        return null;
    }

    public static void main(String[] args) {
        AccountDAO dao = new AccountDAO();
        Account acc = dao.login("user1", "123456");
//        for (Product o : listS) {
        System.out.println(acc);
//        }
    }
}
