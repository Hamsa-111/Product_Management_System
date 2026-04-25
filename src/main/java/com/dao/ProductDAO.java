package com.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.model.Product;

public class ProductDAO {

    // ADD PRODUCT
    public void addProduct(Product p) throws Exception {
        Connection con = DBUtil.getConnection();

        String sql = "INSERT INTO Products VALUES(?,?,?,?,?)";
        PreparedStatement ps = con.prepareStatement(sql);

        ps.setInt(1, p.getProductId());
        ps.setString(2, p.getProductName());
        ps.setString(3, p.getCategory());
        ps.setDouble(4, p.getPrice());
        ps.setInt(5, p.getQuantity());

        ps.executeUpdate();
        con.close();
    }

    // ✅ UPDATE PRODUCT
    public void updateProduct(Product p) throws Exception {
        Connection con = DBUtil.getConnection();

        String sql = "UPDATE Products SET ProductName=?, Category=?, Price=?, Quantity=? WHERE ProductID=?";
        PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, p.getProductName());
        ps.setString(2, p.getCategory());
        ps.setDouble(3, p.getPrice());
        ps.setInt(4, p.getQuantity());
        ps.setInt(5, p.getProductId());

        ps.executeUpdate();
        con.close();
    }

    //DELETE PRODUCT
    public void deleteProduct(int id) throws Exception {
        Connection con = DBUtil.getConnection();

        String sql = "DELETE FROM Products WHERE ProductID=?";
        PreparedStatement ps = con.prepareStatement(sql);

        ps.setInt(1, id);
        ps.executeUpdate();
        con.close();
    }

    // ✅ DISPLAY ALL PRODUCTS
    public List<Product> getAllProducts() throws Exception {
        List<Product> list = new ArrayList<>();

        Connection con = DBUtil.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("SELECT * FROM Products");

        while (rs.next()) {
            Product p = new Product();

            p.setProductId(rs.getInt(1));
            p.setProductName(rs.getString(2));
            p.setCategory(rs.getString(3));
            p.setPrice(rs.getDouble(4));
            p.setQuantity(rs.getInt(5));

            list.add(p);
        }

        con.close();
        return list;
    }

    // REPORT: PRICE GREATER THAN
    public List<Product> getProductsAbovePrice(double price) throws Exception {
        List<Product> list = new ArrayList<>();

        Connection con = DBUtil.getConnection();

        String sql = "SELECT * FROM Products WHERE Price > ?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setDouble(1, price);

        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            Product p = new Product();

            p.setProductId(rs.getInt(1));
            p.setProductName(rs.getString(2));
            p.setCategory(rs.getString(3));
            p.setPrice(rs.getDouble(4));
            p.setQuantity(rs.getInt(5));

            list.add(p);
        }

        con.close();
        return list;
    }

    // REPORT: CATEGORY WISE
    public List<Product> getProductsByCategory(String category) throws Exception {
        List<Product> list = new ArrayList<>();

        Connection con = DBUtil.getConnection();

        String sql = "SELECT * FROM Products WHERE Category=?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, category);

        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            Product p = new Product();

            p.setProductId(rs.getInt(1));
            p.setProductName(rs.getString(2));
            p.setCategory(rs.getString(3));
            p.setPrice(rs.getDouble(4));
            p.setQuantity(rs.getInt(5));

            list.add(p);
        }

        con.close();
        return list;
    }
}