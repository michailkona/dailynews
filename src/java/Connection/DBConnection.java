/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connection;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author konstantina
 */
public class DBConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/news_site_db?zeroDateTimeBehavior=convertToNull&useSSL=false";
    static final String Username = "root";
    static final String Password = "ntina";
    private Connection con = null;
    
    
    public  Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection(URL, Username, Password);

        } catch (Exception e) {
            System.out.println(e);
        }
        return con;

    }
    
    public void closeConnection() {
        try {
            this.con.close();
        } catch (SQLException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
}
