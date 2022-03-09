/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Category;
import model.Product;

/**
 *
 * @author long4
 */
public class CategoryDAO extends dal.BaseDAO<Category>{
    public List<Category> getAllCategory() {
        List<Category> listC = new ArrayList<>();
        try {
            String sql = "select*from Category";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Category a = new Category();
                a.setCateID(rs.getInt("cateID"));
                a.setCname(rs.getString("cname"));
                a.setCimage(rs.getString("cimage"));
                listC.add(a);
            }
            return listC;
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
   
    
    public static void main(String[] args) {
        CategoryDAO dao = new CategoryDAO();
        List<Category>  listC = dao.getAllCategory();
        for (Category o : listC) {
            System.out.println(o);
        }
    }
    
    public Category getCategory(int id) {
        try {
            String sql = "select * from Category\n"
                    + "where cateID =?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Category a = new Category();
                a.setCateID(rs.getInt("cateID"));
                a.setCname(rs.getString("cname"));
                a.setCimage(rs.getString("cimage"));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
