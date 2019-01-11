package jthr_servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jthr_dao.UserDao;

/**
 *
 * @author Ioana Bugner
 */
@WebServlet(name = "RemoveUserServlet", urlPatterns = {"/RemoveUserServlet"})
public class RemoveUserServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String idTemp = request.getParameter("id");
        int userid = Integer.parseInt(idTemp);
        UserDao userDao = new UserDao();
        userDao.deleteUser(userid);
        userDao.done();
        response.sendRedirect("AllUsersServlet");
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
