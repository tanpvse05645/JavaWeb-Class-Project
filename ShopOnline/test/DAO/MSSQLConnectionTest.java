/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author nhatl
 */
public class MSSQLConnectionTest {
    
    public MSSQLConnectionTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of getConnection method, of class MSSQLConnection.
     */
    @Test
    public void testGetConnection() {
        System.out.println("getConnection");
        Connection con = MSSQLConnection.getConnection();
        assertEquals(true, con != null);
    }
    
    @Test
    public void testCloseConnection() {
        System.out.println("testCloseConnection");
        Connection con = MSSQLConnection.getConnection();
        MSSQLConnection.closeConnection(con);              
        assertEquals(true, con == null);
    }
    
}
