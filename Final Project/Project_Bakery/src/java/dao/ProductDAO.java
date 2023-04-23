/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Product;

/**
 *
 * @author Admin
 */
public class ProductDAO extends DBContext {

        public ArrayList<Product> getAllProduct(String search, String category) {
        ArrayList<Product> proList = new ArrayList<>();
        try {
            String sql = "select * from product where 1 = 1 ";
            if (search != null && !search.equals("")) {
                sql += " and name like ?";
            }
            if (category != null && !category.equals("-1") && !category.equals("")) {
                sql += " and category_id = ?";
            }
            PreparedStatement stm = connection.prepareStatement(sql);
            if (search != null && !search.equals("")) {
                stm.setString(1, "%" + search + "%");
            }
            if (category != null && !category.equals("-1") && !category.equals("")) {
                int cate = Integer.parseInt(category);
                stm.setInt(1, cate);
            }
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product p = Product.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .code(rs.getString(3))
                        .price(rs.getDouble(4))
                        .description(rs.getString(5))
                        .imageUrl(rs.getString(6))
                        .createdDate(rs.getString(7))
                        .categoryId(rs.getInt(8)).build();
                proList.add(p);
            }
        } catch (SQLException e) {
        }
        return proList;
    }      
        
    public Product getProduct(int id) {
        try {
            String sql = "select  * from product where id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();

            while (rs.next()) {
                Product p = Product.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .code(rs.getString(3))
                        .price(rs.getDouble(4))
                        .description(rs.getString(5))
                        .imageUrl(rs.getString(6))
                        .createdDate(rs.getString(7))
                        .categoryId(rs.getInt(8)).build();
                return p;
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public ArrayList<Product> getNewProduct() {
        ArrayList<Product> proList = new ArrayList<>();
        try {
            String sql = "select top 6  * from product order by id desc";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product p = Product.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .code(rs.getString(3))
                        .price(rs.getDouble(4))
                        .description(rs.getString(5))
                        .imageUrl(rs.getString(6))
                        .createdDate(rs.getString(7))
                        .categoryId(rs.getInt(8)).build();
                proList.add(p);
            }
        } catch (SQLException e) {
        }
        return proList;
    }

    public ArrayList<Product> getProduct1() {
        ArrayList<Product> proList = new ArrayList<>();
        try {
            String sql = "select top 6 * from product where category_id = 1 ";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product p = Product.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .code(rs.getString(3))
                        .price(rs.getDouble(4))
                        .description(rs.getString(5))
                        .imageUrl(rs.getString(6))
                        .createdDate(rs.getString(7))
                        .categoryId(rs.getInt(8)).build();
                proList.add(p);
            }
        } catch (SQLException e) {
        }
        return proList;
    }
    
    public ArrayList<Product> getProduct2() {
        ArrayList<Product> proList = new ArrayList<>();
        try {
            String sql = "select top 6 * from product where category_id = 3 ";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product p = Product.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .code(rs.getString(3))
                        .price(rs.getDouble(4))
                        .description(rs.getString(5))
                        .imageUrl(rs.getString(6))
                        .createdDate(rs.getString(7))
                        .categoryId(rs.getInt(8)).build();
                proList.add(p);
            }
        } catch (SQLException e) {
        }
        return proList;
    }

    public ArrayList<Product> getAdminProduct() {
        ArrayList<Product> proList = new ArrayList<>();
        try {
            String sql = "select * from product";

            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product p = Product.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .code(rs.getString(3))
                        .price(rs.getDouble(4))
                        .description(rs.getString(5))
                        .imageUrl(rs.getString(6))
                        .createdDate(rs.getString(7))
                        .categoryId(rs.getInt(8)).build();
                proList.add(p);
            }
        } catch (SQLException e) {
        }
        return proList;
    }

//    public static void main(String[] args) {
//        System.out.println(new ProductDAO().getAllProduct("x",null).size());
//        System.out.println(new ProductDAO().getRelateProduct(48));
//    }
    public void changeProduct(String name,String code, double price, String description, String image_url, int category_id, int id) {

        try {
            PreparedStatement ps = connection.prepareStatement("UPDATE [dbo].[product]\n"
                    + "   SET\n"
                    + "      [product_name] = ?\n"
                    + "      ,[code] = ?\n"
                    + "      ,[price] = ?\n"
                    + "      ,[description] = ?\n"
                    + "      ,[image_url] = ?\n"
                    + "      ,[category_id] = ?\n"
                    + " WHERE id = ?");
            ps.setString(1, name);
            ps.setString(2, code);
            ps.setDouble(3, price);
            ps.setString(4, description);
            ps.setString(5,image_url );
            ps.setInt(6, category_id);
            ps.setInt(7, id);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public void deleteProduct(int id) {
        String sql = "DELETE FROM [dbo].[Product]\n"
                + "      WHERE id= ?";
        try {
            PreparedStatement st = connection.prepareCall(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void addProduct(String name,String code, double price, String description, String image_url, String created_date, int category_id) {
        String sql = "INSERT INTO [dbo].[Product]\n"
                + "           ([name]\n"
                + "           ,[code]\n"
                + "           ,[price]\n"
                + "           ,[description]\n"
                + "           ,[image_url]\n"
                + "           ,[created_date]\n"
                + "           ,[category_id])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?)";
        //2 lenh nhu nhau
        //String sql = "insert into Categories values(?,?,?)";
        try {
            PreparedStatement st = connection.prepareCall(sql);
            st.setString(1, name);
            st.setString(2, code);
            st.setDouble(3, price);
            st.setString(4, description);
            st.setString(5, image_url);
            st.setString(6, created_date);
            st.setInt(7, category_id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }    
    
}
