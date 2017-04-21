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

    public static List<Article> getCategoryGreece() {

        DBConnection connection = new DBConnection();
        java.sql.Connection con = connection.getConnection();

        String sql = "SELECT category.category_title,article.article_title, article.article_text, article.article_date_published FROM category \n"
                + "inner join article on category.category_id=article.category_id\n"
                + "where category.category_id=1; ";

        List<Article> result = new ArrayList<>();
        ResultSet resultSet = null;

        try {
            PreparedStatement statement = con.prepareStatement(sql);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Article article = new Article();

                
                article.setCategory_title(resultSet.getString("category_title"));
                article.setArticle_title(resultSet.getString("article_title"));
                article.setArticle_text(resultSet.getString("article_text"));
                article.setArticle_date_published(resultSet.getDate("article_date_published"));

                result.add(article);

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

    public static List<Article> getCategoryWorld() {
        DBConnection connection = new DBConnection();
        java.sql.Connection con = connection.getConnection();

        String sql = "SELECT category.category_title,article.article_title, article.article_text, article.article_date_published FROM category \n"
                + "inner join article on category.category_id=article.category_id\n"
                + "where category.category_id=2; ";

        List<Article> result = new ArrayList<>();
        ResultSet resultSet = null;

        try {
            PreparedStatement statement = con.prepareStatement(sql);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Article article = new Article();
                article.setCategory_title(resultSet.getString("category_title"));
                article.setArticle_title(resultSet.getString("article_title"));
                article.setArticle_text(resultSet.getString("article_text"));
                article.setArticle_date_published(resultSet.getDate("article_date_published"));

                result.add(article);

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

    public static List<Article> getCategoryPolitics() {
        DBConnection connection = new DBConnection();
        java.sql.Connection con = connection.getConnection();

        String sql = "SELECT category.category_title,article.article_title, article.article_text, article.article_date_published FROM category \n"
                + "inner join article on category.category_id=article.category_id\n"
                + "where category.category_id=3; ";

        List<Article> result = new ArrayList<>();
        ResultSet resultSet = null;

        try {
            PreparedStatement statement = con.prepareStatement(sql);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Article article = new Article();
                article.setCategory_title(resultSet.getString("category_title"));
                article.setArticle_title(resultSet.getString("article_title"));
                article.setArticle_text(resultSet.getString("article_text"));
                article.setArticle_date_published(resultSet.getDate("article_date_published"));

                result.add(article);

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

    public static List<Article> getCategoryEconomy() {
        DBConnection connection = new DBConnection();
        java.sql.Connection con = connection.getConnection();

        String sql = "SELECT category.category_title,article.article_title, article.article_text, article.article_date_published FROM category \n"
                + "inner join article on category.category_id=article.category_id\n"
                + "where category.category_id=4; ";

        List<Article> result = new ArrayList<>();
        ResultSet resultSet = null;

        try {
            PreparedStatement statement = con.prepareStatement(sql);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Article article = new Article();
                article.setCategory_title(resultSet.getString("category_title"));
                article.setArticle_title(resultSet.getString("article_title"));
                article.setArticle_text(resultSet.getString("article_text"));
                article.setArticle_date_published(resultSet.getDate("article_date_published"));

                result.add(article);

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

    public static List<Article> getCategoryAthletics() {
        DBConnection connection = new DBConnection();
        java.sql.Connection con = connection.getConnection();

        String sql = "SELECT category.category_title,article.article_title, article.article_text, article.article_date_published FROM category \n"
                + "inner join article on category.category_id=article.category_id\n"
                + "where category.category_id=5; ";

        List<Article> result = new ArrayList<>();
        ResultSet resultSet = null;

        try {
            PreparedStatement statement = con.prepareStatement(sql);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Article article = new Article();

                article.setCategory_title(resultSet.getString("category_title"));
                article.setArticle_title(resultSet.getString("article_title"));
                article.setArticle_text(resultSet.getString("article_text"));
                article.setArticle_date_published(resultSet.getDate("article_date_published"));

                result.add(article);

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
