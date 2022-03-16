/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import model.Shipping;

/**
 *
 * @author long4
 */
public class ShippingDAO extends BaseDAO<Shipping>{
    
    public int insertShippingRetrunID(String name, String phone, String address) {
        try {
            String sql = "INSERT INTO [Assignment_PRJ].[dbo].[Shipping]\n"
                    + "           ([name]\n"
                    + "           ,[phone]\n"
                    + "           ,[address])\n"
                    + "VALUES(?,?,?)";
            PreparedStatement statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            statement.setString(1, name);
            statement.setString(2, phone);
            statement.setString(3, address);
            statement.executeUpdate();
            
            ResultSet rs = statement.getGeneratedKeys();
            if(rs.next()){
                return rs.getInt(1);
                
            }
        } catch (Exception e) {
        }
        return 0;
    }
}
