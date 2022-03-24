/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
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

    public List<OrderDetail> getOrderDetail(int orderId) {
        List<OrderDetail> list = new ArrayList<>();
        try {
            String sql = "select * from OderDetail\n"
                    + "where order_id =?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, orderId);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                OrderDetail od = new OrderDetail();
                od.setId(rs.getInt("id"));
                od.setProductName(rs.getString("productName"));
                od.setProductImage(rs.getString("productImage"));
                od.setProductPrice(rs.getDouble("productPrice"));
                od.setQuantity(rs.getInt("quantity"));
                list.add(od);
            }
        } catch (Exception e) {

        }
        return list;
    }
    public static void main(String[] args) {
        OrderDetailDAO dao = new OrderDetailDAO();
//        int o = dao.getTotalProduct();
        List<OrderDetail> listS = dao.getOrderDetail(3);
        for (OrderDetail o : listS) {
            System.out.println(o);
        }
    }
}
