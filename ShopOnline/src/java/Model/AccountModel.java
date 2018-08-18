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
    
    /**
     * Get all account in Database
     * @return list object Account
     */
    @Override
    public ArrayList<Account> getAll() {
        return null;
    }

    /**
     * Get one Account by Id
     * @param id
     * @return one object Account
     */
    @Override
    public Account getOne(int id) {
        return null;
    }

    /**
     * Insert one Account to Database
     * @param account
     * @return true if insert Account success
     *         false if insert Account fail
     */
    @Override
    public boolean add(Account account) {
        return false;
    }

    /**
     * Update info one Account in Database
     * @param account
     * @return true if update Account success
     *         false if update Account fail
     */
    @Override
    public boolean update(Account account) {
        return false;
    }

    /**
     * Delete one Account in Database by Id
     * @param id
     * @return true if delete Account success
     *         false if delete Account fail
     */
    @Override
    public boolean delete(int id) {
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
                Account account = new Account(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getInt(4),
                    rs.getInt(5),
                    rs.getInt(6),
                    rs.getString(7)
                );
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