
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
import jthr_dao.UserDao;
import jthr_util.EmailValidator;
import jthr_model.User;
import jthr_util.PhoneValidator; 

/**
 *
 * @author Alex Cozma
 * 
 */
@WebServlet(name = "AddUserServlet", urlPatterns = {"/AddUserServlet"})
public class AddUserServlet extends HttpServlet {

    private UserDao userDao;
    private String errorLog;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddUserServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            //out.println("<h1>Servlet AddUserServlet at " + request.getContextPath() + "</h1>");
            out.println("<a href=\"addUser.jsp\">back</a>");
            out.println("<h2>" + this.errorLog + "</h2>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html");
        
        //get information form the form:
        User user = new User(request.getParameter("firstname").toLowerCase(), 
                request.getParameter("lastname").toLowerCase(), 
                request.getParameter("phone").toLowerCase(),
                request.getParameter("cellphone").toLowerCase(), 
                request.getParameter("email").toLowerCase(), 
                request.getParameter("userfunction").toLowerCase(), 
                request.getParameter("rolelist").toLowerCase().trim(),
                request.getParameter("description").toLowerCase().trim());
        //check if such user exist
        this.userDao = new UserDao();
        if(this.userDao.getUser(user.getFirstName(), user.getLastName())!= null)
        {
            //there is already a user with that name 
            this.errorLog = "There is already a user with that name !";
            this.processRequest(request, response);
        }else
        {// the user can be added
            
  //form username
            String username;
            try{
                username = user.getLastName().substring(0, 5);
            }catch(IndexOutOfBoundsException e)
            {
                username = user.getLastName();
            }
            int index = 0, fnLength = user.getFirstName().length(); 
            username = username + user.getFirstName().substring(0,1);
            boolean success = false;
            while(index < fnLength)
            {
                if(this.userDao.getUser(user.getUsername()) != null)
                { //add more leters from first name
                    index++;
                    username = username + user.getFirstName().substring(index,index+1);
                }else
                {
                    success = true;
                    user.setUsername(username);
                    break; 
                }
            }
            if(!success) 
            {
                //TODO: COVER THIS CASE:username couldn't be generated
                //DONE
                this.errorLog = "the username cannot be generated to be unique!\n"
                        + "the user may already exist";
                this.processRequest(request, response);
                return;
            }
            
 //generate password
            user.setPassword(user.getUsername() + "2016");
            
 //validate email
            EmailValidator emailValid = new EmailValidator();
            if(!emailValid.validate(user.getEmail()))
            {
                this.errorLog = "invalid email adress";
                this.processRequest(request, response);
                return;
            }
  //validate phones
            PhoneValidator phoneValid = new PhoneValidator();
            if(!phoneValid.validate(user.getCellPhone()))
            {
                this.errorLog = "invalid cellphone";
                this.processRequest(request, response);
            }
            if(!phoneValid.validate(user.getPhone()))
            {
                this.errorLog = "invalid phone";
                this.processRequest(request, response);
            }
 //deal with ' chars
            String desc = user.getDescription();
            String rolel = user.getRoleList();
            while(rolel.contains("\'"))
            {
                int i = rolel.indexOf("\'");
                rolel = rolel.subSequence(0, i) + rolel.substring(i+1, rolel.length());
            }
            user.setRoleList(rolel);
            while(desc.contains("\'"))
            {
                int i = desc.indexOf("\'");
                desc = desc.subSequence(0, i) + desc.substring(i+1, desc.length());
            }
            user.setDescription(desc);
 //if this point is reached then the user is valid and can be added
            userDao.AddUser(user);
            //TODO DISPACHING AND ADD CONFIRMATION
            //Done
            HttpSession ses = request.getSession();
            ses.setAttribute("userAdded", (Boolean)true);
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            try {
                rd.forward(request, response);
            } catch (ServletException | IOException ex) {
            }
        }
        
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
