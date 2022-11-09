package com.guy.guysstore;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DatabaseConnection {

    //Creating Connection
    public static Connection connection;
    public static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    public static final String USERNAME = "group5";
    public static final String PASSWORD = "BJTUgroup5";
    public static final String URL = "jdbc:mysql://rm-8vbr8ca021o44ca4euo.mysql.zhangbei.rds.aliyuncs.com:3306/store?autoReconnect=true&useSSL=false";

    public DatabaseConnection() {
        try {
            //Registering with mysql Driver
            Class.forName(DRIVER);
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //Creating universal method to close connect will mysql database
    public static void CloseConnection() {
        if (connection != null) {
            try {
                connection.close();
                connection = null;
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }

    //Creating universal method to query for retriving information
    public static ResultSet GetResultFromSqlQuery(String SqlQueryString) {
        //Creating Resultset object
        ResultSet rs = null;
        try {
            //Querying the query
            rs = connection.createStatement().executeQuery(SqlQueryString);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return rs;
    }

    //Creating universal method to query for inserting or updating information in mysql database
    public static int InsertUpdateFromSqlQuery(String SqlQueryString) {
        int i = 2;
        try {
            //Querying the query
            i = connection.createStatement().executeUpdate(SqlQueryString);

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return i;
    }
}
