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
import model.Order;
import model.Shipping;
import model.Status;

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

    public List<Order> getOrder() {
        List<Order> list = new ArrayList<>();
        try {
            String sql = "select o.*, s.name, s.phone, s.[address], os.status from\n"
                    + "Orders o inner join Shipping s \n"
                    + "on o.shipping_id = s.id\n"
                    + "inner join OrderStatus os\n"
                    + "on o.status_id = os.id";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Order o = new Order();
                o.setId(rs.getInt("id"));
                o.setAccountId(rs.getInt("account_id"));
                o.setTotalPrice(rs.getDouble("totalPrice"));
                o.setNote(rs.getString("note"));
                o.setCreatedDate(rs.getString("created_date"));
                o.setShippingID(rs.getInt("shipping_id"));
                o.setStatusID(rs.getInt("status_id"));
                Status status = new Status();
                status.setStatusname(rs.getString("status"));
                o.setStatus(status);
                Shipping shipping = new Shipping();
                shipping.setName(rs.getString("name"));
                shipping.setPhone(rs.getString("phone"));
                shipping.setAddress(rs.getString("address"));
                o.setShipping(shipping);
                list.add(o);
            }
        } catch (Exception e) {

        }
        return list;
    }

    public Order getOrderbyID(int oid) {
        try {
            String sql = "select o.*, s.name, s.phone, s.[address], os.status from\n"
                    + "Orders o inner join Shipping s \n"
                    + "on o.shipping_id = s.id\n"
                    + "inner join OrderStatus os\n"
                    + "on o.status_id = os.id\n"
                    + "where o.id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, oid);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Order o = new Order();
                o.setId(rs.getInt("id"));
                o.setAccountId(rs.getInt("account_id"));
                o.setTotalPrice(rs.getDouble("totalPrice"));
                o.setNote(rs.getString("note"));
                o.setCreatedDate(rs.getString("created_date"));
                o.setShippingID(rs.getInt("shipping_id"));
                o.setStatusID(rs.getInt("status_id"));
                Status status = new Status();
                status.setStatusname(rs.getString("status"));
                o.setStatus(status);
                Shipping shipping = new Shipping();
                shipping.setName(rs.getString("name"));
                shipping.setPhone(rs.getString("phone"));
                shipping.setAddress(rs.getString("address"));
                o.setShipping(shipping);
                return o;
            }
        } catch (Exception e) {

        }
        return null;
    }

    public List<Status> getStatus() {
        List<Status> list = new ArrayList<>();
        try {
            String sql = "select * from OrderStatus";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Status o = new Status();
                o.setStatusid(rs.getInt("id"));
                o.setStatusname(rs.getString("status"));
                list.add(o);
            }
        } catch (Exception e) {

        }
        return list;
    }

    public void editOrder(int accountid, double total, String note, String createdDate, int shippingid, int statusid, int id) {
        try {
            String sql = "UPDATE [Assignment_PRJ].[dbo].[Orders]\n"
                    + "   SET [account_id] = ?\n"
                    + "      ,[totalPrice] = ?\n"
                    + "      ,[note] = ?\n"
                    + "      ,[created_date] = ?\n"
                    + "      ,[shipping_id] = ?\n"
                    + "      ,[status_id] = ?\n"
                    + " WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, accountid);
            statement.setDouble(2, total);
            statement.setString(3, note);
            statement.setString(4, createdDate);
            statement.setInt(5, shippingid);
            statement.setInt(6, statusid);
            statement.setInt(7, id);
            statement.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        OrderDAO dao = new OrderDAO();
//        int o = dao.getTotalProduct();
//        List<Status> listS = dao.getStatus();
//        for (Status o : listS) {
//            System.out.println(o);
//        }
        dao.editOrder(1, 0, "giao buoi chieu", "2022-02-17", 3, 1, 9);
    }
}
