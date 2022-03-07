package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

public class AccountDAO extends dal.BaseDAO<Account> {

    @Override
    public Account getAccount(String email, String password) {
        try {
            String sql = "SELECT [accountID]\n"
                    + "      ,[email]\n"
                    + "      ,[password]\n"
                    + "  FROM [Account]\n"
                    + "where email=? and password=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, email);
            statement.setString(2, password);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setAccountID(rs.getString("accountID"));
                a.setEmail(rs.getString("email"));
                a.setPassword(rs.getString("password"));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
