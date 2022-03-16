/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import model.Order;

/**
 *
 * @author long4
 */
public class OrderDAO extends BaseDAO<Order> {

    public int insertOrdersRetrunID(int accountId, Double totalPrice, String note, int shippingId) {
        try {
            String sql = "INSERT INTO [Assignment_PRJ].[dbo].[Orders]\n"
                    + "           ([account_id]\n"
                    + "           ,[totalPrice]\n"
                    + "           ,[note]\n"
                    + "           ,[shipping_id])\n"
                    + "     VALUES(?,?,?,?)";
            PreparedStatement statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            statement.setInt(1, accountId);
            statement.setDouble(2, totalPrice);
            statement.setString(3, note);
            statement.setInt(4, shippingId);
            statement.executeUpdate();

            ResultSet rs = statement.getGeneratedKeys();
            if (rs.next()) {
                return rs.getInt(1);

            }
        } catch (Exception e) {
        }
        return 0;
    }
}
