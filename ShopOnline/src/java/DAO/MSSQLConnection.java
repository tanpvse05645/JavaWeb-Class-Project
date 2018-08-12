/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Config.IDBConfig;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Shado
 */
public class MSSQLConnection {

    public static Connection getConnection() {
        Connection con = null;
        String connectionUrl = "jdbc:sqlserver://" + IDBConfig.HOSTNAME
                + ":" + IDBConfig.PORT + ";"
                + "databaseName=" + IDBConfig.DBNAME + ";"
                + "integratedSecurity=" + IDBConfig.INTEGRATED_SECURITY + ";";

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException ex) {
            System.err.println("Where is your MySQL JDBC Driver?");
            return con;
        }
        System.out.println("MySQL JDBC Driver Registered!");

        try {
            con = DriverManager.getConnection(connectionUrl, IDBConfig.USERNAME, IDBConfig.PASSWORD);
        } catch (SQLException ex) {
            System.err.println("Connection Failed! Check output console");
            return con;
        }
        return con;
    }
}
