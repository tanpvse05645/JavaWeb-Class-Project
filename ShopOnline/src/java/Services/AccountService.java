/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import Entity.Account;
import Model.AccountModel;

/**
 *
 * @author Shado
 */
public class AccountService {
    AccountModel accountModel = new AccountModel();
    
    /** 
     * processLogin service
     * @param email
     * @param password
     * @return Account
     */
    public Account processLogin(String email, String password){
        return accountModel.login(email, password);
    }
}
