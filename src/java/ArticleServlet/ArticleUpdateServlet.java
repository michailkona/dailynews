/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ArticleServlet;

import Dao.ArticleDao;
import Dao.CategoryDao;
import Model.Article;
import Model.Category;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author konstantina
 */
public class ArticleUpdateServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        String article_id = request.getParameter("article_id");
        String author_id = request.getParameter("author_id");

        List<Article> article_list = ArticleDao.getArticle(article_id);
        List<Category> categoty_list = CategoryDao.getAllCategory();
         request.setAttribute("categoty_list", categoty_list);
        request.setAttribute("article_list", article_list);
        request.setAttribute("article_id", article_id);
        request.setAttribute("author_id", author_id);

        getServletContext().getRequestDispatcher("/editArticleForm.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        
        String article_id = request.getParameter("article_id");
        String author_id = request.getParameter("author_id");
        String article_title = request.getParameter("article_title");
        String article_text = request.getParameter("article_text");
        
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        Date now = new Date();
        String strDate = format.format(now);
        
        ArticleDao.updateArticle(article_id,article_title, article_text, strDate);
        List<Article> article_list = ArticleDao.getAllArticles(author_id);
        if (article_list.size() > 0) {
            request.setAttribute("article_list", article_list);
            request.setAttribute("author_id", author_id);
            String editmessage = "Η επεξεργασία του άρθρου ήταν επιτυχής!";
            request.setAttribute("editmessage", editmessage);
            getServletContext().getRequestDispatcher("/articles.jsp").forward(request, response);
        } else {
            request.setAttribute("author_id", author_id);
            request.setAttribute("messagearticle", "Δεν υπάρχουν Άρθρα προς προβολή");
            String editmessage = "Η επεξεργασία του άρθρου ήταν επιτυχής";
            request.setAttribute("editmessage", editmessage);
            getServletContext().getRequestDispatcher("/articles.jsp").forward(request, response);
        }

    }

}
