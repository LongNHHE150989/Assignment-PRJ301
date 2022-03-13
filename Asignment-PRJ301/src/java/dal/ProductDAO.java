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
public class ProductDAO extends BaseDAO<Product> {

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "select p.ID,"
                    + " p.name,"
                    + " p.image,"
                    + " p.price,"
                    + " p.description,"
                    + " c.cateID,"
                    + " c.cname,"
                    + " p.quantity,"
                    + " p.sale \n"
                    + " from product p inner join Category c\n"
                    + "on p.cateID = c.cateID";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product a = new Product();
                a.setId(rs.getInt("id"));
                a.setName(rs.getString("name"));
                a.setImage(rs.getString("image"));
                a.setPrice(rs.getDouble("price"));
                a.setDescription(rs.getString("description"));
                Category cate = new Category();
                cate.setCateID(rs.getInt("cateID"));
                cate.setCname(rs.getString("cname"));
                a.setQuantity(rs.getInt("quantity"));
                a.setSale(rs.getBoolean("sale"));
                a.setCategory(cate);
                list.add(a);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Product getProduct(int id) {
        try {
            String sql = "select * from product\n"
                    + "where id =?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product a = new Product();
                a.setId(rs.getInt("id"));
                a.setName(rs.getString("name"));
                a.setImage(rs.getString("image"));
                a.setPrice(rs.getDouble("price"));
                a.setDescription(rs.getString("description"));
                a.setQuantity(rs.getInt("quantity"));
                a.setSale(rs.getBoolean("sale"));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<Product> getNewProduct() {
        List<Product> listnew = new ArrayList<>();
        try {
            String sql = "select p.ID,"
                    + " p.name,"
                    + " p.image,"
                    + " p.price,"
                    + " p.description,"
                    + " c.cateID,"
                    + " c.cname,"
                    + " p.quantity,"
                    + " p.sale \n"
                    + " from product p inner join Category c\n"
                    + "on p.cateID = c.cateID\n"
                    + "where id<=8";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product a = new Product();
                a.setId(rs.getInt("id"));
                a.setName(rs.getString("name"));
                a.setImage(rs.getString("image"));
                a.setPrice(rs.getDouble("price"));
                a.setDescription(rs.getString("description"));
                Category cate = new Category();
                cate.setCateID(rs.getInt("cateID"));
                cate.setCname(rs.getString("cname"));
                a.setCategory(cate);
                a.setQuantity(rs.getInt("quantity"));
                a.setSale(rs.getBoolean("sale"));
                listnew.add(a);
            }
            return listnew;
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<Product> getCateProduct(int cid) {
        List<Product> listCt = new ArrayList<>();
        try {
            String sql = "select * from product\n"
                    + "where cateID=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, cid);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product a = new Product();
                a.setId(rs.getInt("id"));
                a.setName(rs.getString("name"));
                a.setImage(rs.getString("image"));
                a.setPrice(rs.getDouble("price"));
                a.setDescription(rs.getString("description"));
                a.setQuantity(rs.getInt("quantity"));
                a.setSale(rs.getBoolean("sale"));
                listCt.add(a);
            }
            return listCt;
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public List<Product> getSearchProduct(String s) {
        List<Product> listS = new ArrayList<>();
        try {
            String sql = "select p.ID,"
                    + " p.name,"
                    + " p.image,"
                    + " p.price,"
                    + " p.description,"
                    + " c.cateID,"
                    + " c.cname,"
                    + " p.quantity,"
                    + " p.sale \n"
                    + " from product p inner join Category c\n"
                    + "on p.cateID = c.cateID\n"
                    + "where name like ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, "%"+s+"%");
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product a = new Product();
                a.setId(rs.getInt("id"));
                a.setName(rs.getString("name"));
                a.setImage(rs.getString("image"));
                a.setPrice(rs.getDouble("price"));
                a.setDescription(rs.getString("description"));
                Category cate = new Category();
                cate.setCateID(rs.getInt("cateID"));
                cate.setCname(rs.getString("cname"));
                a.setCategory(cate);
                a.setQuantity(rs.getInt("quantity"));
                a.setSale(rs.getBoolean("sale"));
                listS.add(a);
            }
            return listS;
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public void deleteProduct(int id) {
        try {
            String sql = "delete from product\n"
                    + "where id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public static void main(String[] args) {
        ProductDAO dao = new ProductDAO();
        List<Product> listS = dao.getNewProduct();
        for (Product o : listS) {
            System.out.println(o);
        }
    }
}
