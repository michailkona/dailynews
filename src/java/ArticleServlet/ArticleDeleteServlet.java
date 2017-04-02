/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ArticleServlet;

import Dao.ArticleDao;
import Model.Article;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author konstantina
 */
public class ArticleDeleteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        String article_id = request.getParameter("article_id");
        String author_id = request.getParameter("author_id");

        ArticleDao.deleteArticle(article_id);
        List<Article> article_list = ArticleDao.getAllArticles(author_id);
        if (article_list.size() > 0) {
            request.setAttribute("article_list", article_list);
            request.setAttribute("author_id", author_id);
            String message = "Η διαγραφή του άρθρου ήταν επιτυχής!";
            request.setAttribute("message", message);
            getServletContext().getRequestDispatcher("/articles.jsp").forward(request, response);
        } else {
            request.setAttribute("author_id", author_id);
            request.setAttribute("messagearticle", "Δεν υπάρχουν Άρθρα προς προβολή");
            String message = "Η διαγραφή του άρθρου ήταν επιτυχής";
            request.setAttribute("message", message);
            getServletContext().getRequestDispatcher("/articles.jsp").forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
