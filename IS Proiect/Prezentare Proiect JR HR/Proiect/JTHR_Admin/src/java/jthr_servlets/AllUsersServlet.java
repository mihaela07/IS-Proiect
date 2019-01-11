package jthr_servlets;

import jthr_model.User;
import jthr_dao.UserDao;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sabrina Ghip
 */

@WebServlet(name = "AllUsersServlet", urlPatterns = {"/AllUsersServlet"})
public class AllUsersServlet extends HttpServlet {

     private UserDao userDao;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)     
        throws ServletException, IOException 
    {
        userDao = new UserDao();
        List<User> userList;
        userList = userDao.getAllUsers();
        userDao.done();
        request.setAttribute("AllUsers",userList);
        RequestDispatcher rd = request.getRequestDispatcher("AllUsers.jsp");
        rd.forward(request, response);
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //this.userDao = new UserDao();
        //request.setAttribute("AllUsers", userDao.getAllUsers());
        //userDao.done();
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
