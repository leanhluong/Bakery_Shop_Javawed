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

    public List<Product> getProductsByCategoryId(int categoryId) {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "select * from Product where Product.category_id = ?";

            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, categoryId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = Product.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .code(rs.getString(3))
                        .price(rs.getDouble(4))
                        .description(rs.getString(5))
                        .imageUrl(rs.getString(6))
                        .createdDate(rs.getString(7))
                        .categoryId(rs.getInt(8)).build();
                list.add(product);
            }
        } catch (SQLException ex) {
        }
        return list;
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

}
