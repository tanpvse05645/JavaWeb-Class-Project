/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utils;

/**
 *
 * @author nhatl
 */
public class BcryptTest {

    public static void main(String[] args) {
        
        String password = "123456";
        
        // Hash a password for the first time
        String hashed = BCrypt.hashpw(password, BCrypt.gensalt());
        System.out.println(hashed);

        // gensalt's log_rounds parameter determines the complexity
        // the work factor is 2**log_rounds, and the default is 10
        // String hashed = BCrypt.hashpw(password, BCrypt.gensalt(12));

        // Check that an unencrypted password matches one that has
        // previously been hashed
        if (BCrypt.checkpw("12345678", hashed)) {
            System.out.println("It matches");
        } else {
            System.out.println(
                    "It does not match");
        }
    }
}
