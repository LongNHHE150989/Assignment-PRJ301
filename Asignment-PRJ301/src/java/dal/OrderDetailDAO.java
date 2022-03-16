/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Map;
import model.Cart;
import model.OrderDetail;

/**
 *
 * @author long4
 */
public class OrderDetailDAO extends BaseDAO<OrderDetail> {

    public void saveCart(int orderId, Map<Integer, Cart> carts) {
        try {
            String sql = "INSERT INTO [Assignment_PRJ].[dbo].[OderDetail]\n"
                    + "           ([order_id]\n"
                    + "           ,[productname]\n"
                    + "           ,[productimage]\n"
                    + "           ,[productprice]\n"
                    + "           ,[quantity])\n"
                    + "     VALUES(?,?,?,?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, orderId);
            for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
                Integer id = entry.getKey();
                Cart cart = entry.getValue();
                statement.setString(2, cart.getProduct().getName());
                statement.setString(3, cart.getProduct().getImage());
                statement.setDouble(4, cart.getProduct().getPrice());
                statement.setDouble(5, cart.getQuantity());
                statement.executeUpdate();
            }
            
        } catch (Exception e) {
        }
    }

}
