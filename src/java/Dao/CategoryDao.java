/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Connection.DBConnection;
import Model.Article;
import Model.Category;
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
public class CategoryDao {
    
     public static List<Category> getAllCategory() {

        DBConnection connection = new DBConnection();
        java.sql.Connection con = connection.getConnection();

        String sql = "SELECT * FROM category";
        List<Category> result = new ArrayList<>();
        ResultSet resultSet = null;

        try {
            PreparedStatement statement = con.prepareStatement(sql);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Category category = new Category();
                category.setCategory_id(resultSet.getInt("category_id"));
                category.setCategory_title(resultSet.getString("category_title"));
                
                result.add(category);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(CategoryDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return result;

    }
    
}
