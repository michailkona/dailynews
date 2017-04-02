/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LoginServlet;

import Dao.AuthorDao;
import Model.Author;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author konstantina
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       // response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        String author_username = request.getParameter("author_username");
        String author_password = request.getParameter("author_password");

        List<Author> author_list = AuthorDao.getAllAuthors(author_username, author_password);

        if (author_list.size() > 0) {
            HttpSession session = request.getSession();
            session.setAttribute("author_username", author_username);
            //setting session to expiry in 30 mins
            session.setMaxInactiveInterval(30 * 60);
            // Store Information to cookie
            Cookie cookieName = new Cookie("author_username", author_username);
            cookieName.setMaxAge(30 * 60);
            response.addCookie(cookieName);
            String message = "Καλως ήρθες, " + author_list.get(0).getAuthor_firstname();
            request.setAttribute("author_id", author_list.get(0).getAuthor_id());
            request.setAttribute("message", message);
            getServletContext().getRequestDispatcher("/LoginSuccess.jsp").forward(request, response);

        } else {
            request.setAttribute("error", "Λανθασμένα στοιχεία.Παρακαλώ δοκιμάστε ξανά!!");
            getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);

        }
    }

}
