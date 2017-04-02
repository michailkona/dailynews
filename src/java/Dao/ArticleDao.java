/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Connection.DBConnection;
import Model.Article;
import Model.Author;
import Model.Category;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author konstantina
 */
public class ArticleDao {

    public static List<Article> getAllArticles(String author_id) {

        DBConnection connection = new DBConnection();
        java.sql.Connection con = connection.getConnection();

        String sql = "SELECT * FROM article,category"
                + " WHERE article.category_id=category.category_id"
                + " and author_id=" + author_id;
        List<Article> result = new ArrayList<>();

        ResultSet resultSet = null;

        try {
            PreparedStatement statement = con.prepareStatement(sql);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Article article = new Article();

                article.setArticle_id(resultSet.getInt("article_id"));
                article.setArticle_title(resultSet.getString("article_title"));
                article.setArticle_text(resultSet.getString("article_text"));
                article.setArticle_date_published(resultSet.getDate("article_date_published"));
                article.setAuthor_id(resultSet.getInt("author_id"));
                article.setCategory_id(resultSet.getInt("category_id"));
                article.setCategory_title(resultSet.getString("category_title"));
                result.add(article);

            }

        } catch (SQLException ex) {
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

    public static void deleteArticle(String article_id) {
        DBConnection connection = new DBConnection();
        java.sql.Connection con = connection.getConnection();

        int articleid = Integer.parseInt(article_id);
        String sqldelete;

        try {

            sqldelete = "Delete from article "
                    + "WHERE article_id=? ";
            PreparedStatement statement = con.prepareStatement(sqldelete);

            statement.setInt(1, articleid);
            statement.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }

    }

    public static List<Article> getArticle(String article_id) {
        DBConnection connection = new DBConnection();
        java.sql.Connection con = connection.getConnection();

        String sql = "SELECT * FROM article,category"
                + " WHERE article.category_id=category.category_id"
                + " and article_id=" + article_id;
        List<Article> result = new ArrayList<>();

        ResultSet resultSet = null;

        try {
            PreparedStatement statement = con.prepareStatement(sql);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Article article = new Article();

                article.setArticle_id(resultSet.getInt("article_id"));
                article.setArticle_title(resultSet.getString("article_title"));
                article.setArticle_text(resultSet.getString("article_text"));
                article.setArticle_date_published(resultSet.getDate("article_date_published"));
                article.setAuthor_id(resultSet.getInt("author_id"));
                article.setCategory_id(resultSet.getInt("category_id"));
                article.setCategory_title(resultSet.getString("category_title"));
                result.add(article);

            }

        } catch (SQLException ex) {
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

    public static void updateArticle(String article_id, String article_title, String article_text, String strDate) {

        DBConnection connection = new DBConnection();
        java.sql.Connection con = connection.getConnection();

        String sqlinsert;
        
        int articleid = Integer.parseInt(article_id);
        

        try {
            sqlinsert = "UPDATE article SET "
                    + "article_title=?,"
                    + "article_text=?,"
                    + "article_date_published=?"
                    + " WHERE article_id=?";

            PreparedStatement statement = con.prepareStatement(sqlinsert);

            statement.setString(1, article_title);
            statement.setString(2, article_text);
            statement.setString(3, strDate);
            statement.setInt(4, articleid);

            statement.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }

    }

    public void saveInsertArticle(String article_title, String article_text, String strDate, String author_id, String category_id) {

        DBConnection connection = new DBConnection();
        java.sql.Connection con = connection.getConnection();

        String sqlinsert;
        int status = 0;
        int authorid = Integer.parseInt(author_id);
        int categoryid = Integer.parseInt(category_id);

        try {
            sqlinsert = "INSERT INTO news_site_db.article"
                    + " ( article_title, article_text, article_date_published, author_id, category_id) "
                    + "	VALUES (  ?, ?, ?, ?, ?) ";

            PreparedStatement statement = con.prepareStatement(sqlinsert);

            statement.setString(1, article_title);
            statement.setString(2, article_text);
            statement.setString(3, strDate);
            statement.setInt(4, authorid);
            statement.setInt(5, categoryid);

            status = statement.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }
        //return status;

    }

}
