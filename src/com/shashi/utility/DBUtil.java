package com.shashi.utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBUtil {
    private static Connection conn;

    public DBUtil() {
    }

    public static Connection provideConnection() {
        try {
            if (conn == null || conn.isClosed()) {
                // Directly specify the database connection parameters
                String connectionString = "jdbc:mysql://database-1.cgkf5qiqs0zz.us-east-2.rds.amazonaws.com:3306/shopping-cart";
                String driverName = "com.mysql.cj.jdbc.Driver";
                String username = "admin";
                String password = "Perumal_Raj54321";

                try {
                    Class.forName(driverName);
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                }
                conn = DriverManager.getConnection(connectionString, username, password);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return conn;
    }

    public static void closeConnection(Connection con) {
        try {
            if (con != null && !con.isClosed()) {
                con.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void closeConnection(ResultSet rs) {
        try {
            if (rs != null && !rs.isClosed()) {
                rs.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void closeConnection(PreparedStatement ps) {
        try {
            if (ps != null && !ps.isClosed()) {
                ps.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

