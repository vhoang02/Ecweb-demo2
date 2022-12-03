package com.example.demo2.dao;

import com.example.demo2.Entity.Category;
import com.example.demo2.Entity.Product;
import com.example.demo2.Entity.User;
import com.example.demo2.context.DBContext;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    //Find all product
    public List<Product> getAllProduct(){
        List<Product> list = new ArrayList<>();
        String query = "select * from products";
        try {
            conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getString(8)));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }

    //find all category
    public List<Category> getAllCategory(){
        List<Category> list = new ArrayList<>();
        String query = "select * from categories";
        try {
            conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Category(
                        rs.getInt(1),
                        rs.getString(2)
                ));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }

    //get product by category id
    public List<Product> getAllProductByCid(String CatID){
        List<Product> list = new ArrayList<>();
        String query = "select * from products where CatID = ?";
        try {
            conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, CatID);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getString(8)));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }

    //getProduct by ID
    public Product getProductByID(String ProID){
        String query = "select * from products where ProID = ?";
        try {
            conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, ProID);
            rs = ps.executeQuery();
            while (rs.next()){
                 return new  Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getInt(6),
                        rs.getInt(7),
                         rs.getString(8));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    //search theo name
    public List<Product> searchByName(String txtSearch){
        List<Product> list = new ArrayList<>();
        String query = "select * from products where ProName like ?";
        try {
            conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getString(8)));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }

    //ham tra ve user
    public User login(String user, String pass){
        String query = "select * from users\n" +
                "where username = ? and password = ?";
        try {
            conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()){
                return new User(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5)
                );
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    //check acount exist
    public User checkAccountExist(String user){
        String query = "select *\n" +
                "from users where username = ?";
        try {
            conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()){
                return new User(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5)
                );
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }


    public void deleteProduct(String pid){
        String query = "delete from products where ProID = ?";
        try {
            conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void signup(String user, String pass){
        String query = "insert into users ( username, password, isAdmin, isSell) value (?, ? , 0, 0)";
        try {
            conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2,pass);
            ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void insertProduct(String name, String price, String tinyDes, String fullDes, String category, String quantity, String image){
        String query = "insert  into products (ProName, TinyDes, FullDes, Price, CatID, Quantity, Image) VALUE (?, ?, ?, ?, ?, ?, ?)";
        try {
            conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, tinyDes);
            ps.setString(3, fullDes);
            ps.setString(4, price);
            ps.setString(5, category);
            ps.setString(6, quantity);
            ps.setString(7, image);
            ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void editProduct(String id,String name, String price, String tinyDes, String fullDes, String category, String quantity, String image){
        String query = "update products set ProName = ?,\n" +
                "                    TinyDes = ?,\n" +
                "                    FullDes = ?,\n" +
                "                    Price = ?,\n" +
                "                    CatID = ?,\n" +
                "                    Quantity = ?,\n" +
                "                    Image = ?" +
                "where ProID = ?";
        try {
            conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, tinyDes);
            ps.setString(3, fullDes);
            ps.setString(4, price);
            ps.setString(5, category);
            ps.setString(6, quantity);
            ps.setString(7, image);
            ps.setString(8, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
