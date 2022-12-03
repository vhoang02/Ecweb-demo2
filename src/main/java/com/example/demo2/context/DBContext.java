package com.example.demo2.context;

import com.mysql.jdbc.Driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBContext {
    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/qlbh";
            String user = "root";
            String password = "root";
            return DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException | SQLException e) {
            return null;
        }
    }

//    public static void main(String[] args) {
//        try {
//            Connection connection = getConnection();
//            System.out.println("Connected");
//        }catch (Exception e){
//            System.out.println(e);
//        }
//    }
}
