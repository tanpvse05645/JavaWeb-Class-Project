/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import DAO.MSSQLConnection;
import Entity.Account;
import Utils.ICommon;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Shado
 */
public class AccountModel implements ICommon<Account>{
    private Connection connection = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    
    @Override
    public ArrayList<Account> getAll() {
        return null;
    }

    @Override
    public Account getOne() {
        return null;
    }

    @Override
    public boolean add() {
        return false;
    }

    @Override
    public boolean update() {
        return false;
    }

    @Override
    public boolean delete() {
        return false;
    }
    
    /**
     * Authentication information user input login
     * @param email
     * @param password
     * @return Object Account
     */
    public Account login(String email, String password){
        String query = "SELECT * FROM Account WHERE Email = ? AND Password = ?";
        try{
            connection = MSSQLConnection.getConnection();
            ps = connection.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            rs = ps.executeQuery();
            if(rs.next()){
                Account account = new Account(rs.getInt(1), rs.getString(2), rs.getString(3), 
                        rs.getInt(4), rs.getInt(5), rs.getInt(6), rs.getString(7));
                return account;
            }
            return null;
        }catch(SQLException e){
            System.out.println(e);                
        }finally{
            MSSQLConnection.closeResultSet(rs);
            MSSQLConnection.closePreparedStatement(ps);
            MSSQLConnection.closeConnection(connection);
        }
        return null;
    }
}