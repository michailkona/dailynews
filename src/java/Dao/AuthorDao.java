/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;


import Connection.DBConnection;
import Model.Author;
import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author konstantina
 */
public class AuthorDao {
    

    public static List<Author> getAllAuthors(String author_username, String author_password) {
        
        
        DBConnection connection = new DBConnection();
        java.sql.Connection con = connection.getConnection();
        
        String sql = "SELECT * FROM author WHERE author_username='"+author_username+"' AND author_password='"+author_password+"' ";
        List<Author> result = new ArrayList<>();
        ResultSet resultSet = null;
        
        try{
            PreparedStatement statement = con.prepareStatement(sql);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Author author = new Author();
                author.setAuthor_username(resultSet.getString("author_username"));
                author.setAuthor_password(resultSet.getString("author_password"));
                author.setAuthor_firstname(resultSet.getString("author_firstname"));
                author.setAuthor_id(resultSet.getInt("author_id"));
                result.add(author);
            }
            
            
        
        
        
        }catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(AuthorDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return result;
       
    }

    
}
