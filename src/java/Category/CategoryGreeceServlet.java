/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Category;

import Dao.CategoryDao;
import Model.Article;
import Model.Category;
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
public class CategoryGreeceServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        String author_id = request.getParameter("author_id");
        
        try {
            List<Article> article_list = CategoryDao.getCategoryGreece();

            if (article_list.size() > 0) {
                request.setAttribute("article_list", article_list);
                request.setAttribute("author_id", author_id);
                getServletContext().getRequestDispatcher("/category.jsp").forward(request, response);
            } else {
                request.setAttribute("author_id", author_id);
                request.setAttribute("messagearticle", "Δεν υπάρχουν Άρθρα προς προβολή");
                getServletContext().getRequestDispatcher("/category.jsp").forward(request, response);
            }

        } catch (Exception e) {
            System.out.println(e);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
