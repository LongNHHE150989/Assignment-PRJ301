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
                    + "where p.id =?";
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
                Category cate = new Category();
                cate.setCateID(rs.getInt("cateID"));
                cate.setCname(rs.getString("cname"));
                a.setCategory(cate);
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
                    + "where id<=4";
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
            statement.setString(1, "%" + s + "%");
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

    public void addProduct(String name, String image, int price, int cateID, String description, int quantity, String sale) {
        try {
            String sql = "INSERT INTO [Assignment_PRJ].[dbo].[product]\n"
                    + "           ([name]\n"
                    + "           ,[image]\n"
                    + "           ,[price]\n"
                    + "           ,[cateID]\n"
                    + "           ,[description]\n"
                    + "           ,[quantity]\n"
                    + "           ,[sale])\n"
                    + "     VALUES(?,?,?,?,?,?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, image);
            statement.setInt(3, price);
            statement.setInt(4, cateID);
            statement.setString(5, description);
            statement.setInt(6, quantity);
            statement.setString(7, sale);
            statement.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void editProduct(String name, String image, int price, int cateID, String description, int quantity, String sale, int id) {
        try {
            String sql = "UPDATE [Assignment_PRJ].[dbo].[product]\n"
                    + "   SET [name] = ?\n"
                    + "      ,[image] = ?\n"
                    + "      ,[price] = ?\n"
                    + "      ,[cateID] = ?\n"
                    + "      ,[description] = ?\n"
                    + "      ,[quantity] = ?\n"
                    + "      ,[sale] = ?\n"
                    + " WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, image);
            statement.setInt(3, price);
            statement.setInt(4, cateID);
            statement.setString(5, description);
            statement.setInt(6, quantity);
            statement.setString(7, sale);
            statement.setInt(8, id);
            statement.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Product> getProductWithPagging(int page, int PAGE_SIZE) {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM\n"
                    + "(SELECT  p.id, p.name, p.image, p.price, p.description, c.cateID, c.cname, p.quantity, p.sale, ROW_NUMBER() OVER (ORDER BY p.id ASC) AS ROWNUM\n"
                    + "FROM product p LEFT JOIN Category c\n"
                    + "ON p.cateID = c.cateID)t\n"
                    + "WHERE ROWNUM >= (? - 1)*? + 1 AND ROWNUM <= ? * ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, page);
            statement.setInt(2, PAGE_SIZE);
            statement.setInt(3, page);
            statement.setInt(4, PAGE_SIZE);
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
    
    public int getTotalProduct(){
        try {
            String sql = "select COUNT(id) from product";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public static void main(String[] args) {
        ProductDAO dao = new ProductDAO();
        int o = dao.getTotalProduct();
//        List<Product> listS = dao.getProductWithPagging(1, 4);
//        for (Product o : listS) {
            System.out.println(o);
//        }
    }

}
