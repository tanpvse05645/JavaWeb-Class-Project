/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entity.Account;
import java.util.ArrayList;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.Ignore;

/**
 *
 * @author nhatl
 */
public class AccountModelTest {
    
    public AccountModelTest() {
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

//    /**
//     * Test of getAll method, of class AccountModel.
//     */
//    @Ignore
//    @Test
//    public void testGetAll() {
//        System.out.println("getAll");
//        AccountModel instance = new AccountModel();
//        ArrayList<Account> expResult = null;
//        ArrayList<Account> result = instance.getAll();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getOne method, of class AccountModel.
//     */
//    @Ignore
//    @Test
//    public void testGetOne() {
//        System.out.println("getOne");
//        AccountModel instance = new AccountModel();
//        Account expResult = null;
//        Account result = instance.getOne();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of add method, of class AccountModel.
//     */
//    @Ignore
//    @Test
//    public void testAdd() {
//        System.out.println("add");
//        AccountModel instance = new AccountModel();
//        boolean expResult = false;
//        boolean result = instance.add();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of update method, of class AccountModel.
//     */
//    @Ignore
//    @Test
//    public void testUpdate() {
//        System.out.println("update");
//        AccountModel instance = new AccountModel();
//        boolean expResult = false;
//        boolean result = instance.update();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of delete method, of class AccountModel.
//     */
//    @Ignore
//    @Test
//    public void testDelete() {
//        System.out.println("delete");
//        AccountModel instance = new AccountModel();
//        boolean expResult = false;
//        boolean result = instance.delete();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }

    /**
     * Test of login method, of class AccountModel.
     */
    @Test
    public void testLoginSuccess() {
        System.out.println("login success");
        String email = "admin@gmail.com";
        String password = "123456";
        AccountModel instance = new AccountModel();
        Account result = instance.login(email, password);
        assertEquals(true, result != null);       
    }
    
    @Test
    public void testLoginFail() {
        System.out.println("login fail");
        String email = "admin@gmail.com";
        String password = "123456xxx";
        AccountModel instance = new AccountModel();
        Account result = instance.login(email, password);
        assertEquals(true, result == null);       
    }
    
}
