package jthr_servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//our stuff
import jthr_dao.UserDao;
import jthr_model.User;
/**
 *
 * @author Alex Cozma
 */
@WebServlet(name = "LoginServelt", urlPatterns = {"/LoginServelt"})
public class LoginServlet extends HttpServlet {

    private UserDao userDao;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //try {
            response.setContentType("text/html");
            HttpSession ses = request.getSession();
            PrintWriter out = response.getWriter();

            String userName = request.getParameter("username");
            String password = request.getParameter("password");
            //String userfuntion = ""; // for further use
            User user = null;
            userDao = new UserDao();
            try{
                user = userDao.getUser(userName);
            }catch(Exception x){
                out.write("Problem Connectinc to Database Server");
            }
            userDao.done();
            if(user != null)
            {
                if(user.getPassword().equals(password) && user.getUserFunction().contains("admin"))
                {
                    ses.setAttribute("loggedin", (Boolean)true); // set the session variable
                    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                    rd.forward(request, response);
                }else
                {
                    ses.setAttribute("loggedin", (Boolean)false); // set the session variable
                    RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                    rd.forward(request, response);
                }
            }
            else // no such user in the db
            {
                ses.setAttribute("loggedin", (Boolean)false); // set the session variable
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.forward(request, response);
            }
            
    
    }

}
