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
import model.Customer;

/**
 *
 * @author long4
 */
public class CustomerDAO extends dal.BaseDAO<Customer> {

    public Customer getCustomer(int aid) {
        try {
            String sql = "select * from Customer\n"
                    + "where acc_id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, aid);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Customer a = new Customer();
                a.setFirstname(rs.getString("first_name"));
                a.setLastname(rs.getString("last_name"));
                a.setPhone(rs.getString("phone"));
                a.setEmail(rs.getString("email"));
                a.setAddress(rs.getString("address"));
                a.setCimage(rs.getString("cimage"));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static void main(String[] args) {
        CustomerDAO dao = new CustomerDAO();
        Customer o = dao.getCustomer(1);
//        List<Product> listS = dao.getProductWithPagging(1, 4);
//        for (Product o : listS) {
            System.out.println(o);
//        }
    }
}
