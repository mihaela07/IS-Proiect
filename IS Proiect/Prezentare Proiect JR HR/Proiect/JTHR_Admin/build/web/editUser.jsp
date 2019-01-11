<%-- 
    Author     : Sabrina Ghip
--%>

<%@page import="jthr_model.User"%>
<%@page import="jthr_dao.UserDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JTHR :: ADMIN :: Edit User</title>
         <link href="css/styles.css" rel='stylesheet' type='text/css' />   
         <script>
            function checkEmpty() 
            {
                var fname = document.forms["editUserForm"]["firstname"].value;
                var lname = document.forms["editUserForm"]["lastname"].value;
                var cellphone = document.forms["editUserForm"]["cellphone"].value;
                var email = document.forms["editUserForm"]["email"].value;

                if (fname === "" || lname === "" || cellphone === "" || email === "")
                {
                    alert("Fields with \"*\" are mandatory and cannot be empty");
                    return false;
                }
                else
                {
                    return true;
                }
            }
         </script>
    </head>
    <body>
        <h1>Edit User</h1>
        <div id="menu">
            <jsp:include page="menu.jsp"/>
        </div>
        <div>
            <%
                UserDao userDao = new UserDao();
                int id = Integer.parseInt(request.getParameter("id"));
                User user = null;
                user = userDao.getUser(id);
                userDao.done();
            %>
            <form onsubmit="return checkEmpty()" name="editUserForm" action="EditUserServlet" method="post">
                <input type="hidden" name="id" value="<%=id%>">
                <table class="formular" align="center" border="0" width="1" cellspacing="2" cellpadding="2">
                    <table class="formular" align="center" >
                        <tbody class="tbody">
                            <tr>
                                <td id="firstname">First Name*: </td>                   
                                <td><input type="text" name="firstname" value=
                                           <%
                                               out.print("\"");
                                               out.print(user.getFirstName());
                                               out.print("\"");
                                           %>    
                                           size="50" maxlength="50" placeholder="Mandatory field"/></td>                  
                            </tr>  
                        <td>&nbsp;</td>                                     
                        <tr>
                            <td id="lastname">Last Name*: </td>                 
                            <td><input type="text" name="lastname" value=
                                       <%
                                           out.print("\"");
                                           out.print(user.getLastName());
                                           out.print("\"");
                                       %>
                                       size="50" maxlength="50"  placeholder="Mandatory field"/></td>
                        </tr>
                        <td>&nbsp;</td>
                        <tr>
                            <td id="cellphone">Cell Phone*: </td>
                            <td><input type="text" name="cellphone" value=
                                       <%
                                           out.print("\"");
                                           out.print(user.getCellPhone());
                                           out.print("\"");
                                       %>
                                       size="11" maxlength="11"  placeholder="Mandatory field"/></td>
                        </tr>  
                        <td>&nbsp;</td>
                        <tr>
                            <td id="phone">Phone: </td>                      
                            <td><input type="text" name="phone" value=
                                       <%
                                           out.print("\"");
                                           out.print(user.getPhone());
                                           out.print("\"");
                                       %>
                                       size="11" maxlength="11" /></td>                       
                        </tr>                   

                        <td>&nbsp;</td>
                        <tr>
                            <td id="email">Email* : </td>
                            <td><input type="text" name="email" value=
                                       <%
                                           out.print("\"");
                                           out.print(user.getEmail());
                                           out.print("\"");
                                       %> 
                                       size="50" maxlength="50" placeholder="email@email.com" /></td>
                        </tr>
                        <td>&nbsp;</td>

                        <td>&nbsp;</td>
                        <tr>
                            <td id="function">Function: </td>
                            <td>
                                <select name="userfunction" size="6">
                                    <option>General Director</option>
                                    <option>Department Director</option>
                                    <option>H.R. Director</option>
                                    <option>Recruiter</option>
                                    <option>Administrator</option>
                                    <option selected="selected">Viewer</option>
                                </select>
                            </td>
                        </tr>

                        <td>&nbsp;</td>
                        <tr>
                            <td id="rolelist">Role List: </td>
                            <td colspan="3">
                                <input name="rolelist" size="50" value=
                                       <%
                                           out.print("\"");
                                           out.print(user.getRoleList());
                                           out.print("\"");
                                       %> 
                                       maxlength="200" placeholder="separete by ,"/>                     

                        </tr>
                        <td>&nbsp;</td>
                        <tr>
                            <td id="description">Description: </td>
                            <td colspan="3">
                                <textarea name="description" rows="3" cols="50" maxlength="300" placeholder="description"> <%out.print(user.getDescription().trim());%></textarea>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <td>&nbsp;</td>
                        <tr>
                            <td>
                                <input type="submit" id="edit_user" value="Edit User" name="editUser" />
                            </td>                       
                        </tr>
                        </tbody>
                </table>
            </form>
        </div>
        <br>
        <div><jsp:include page="css/footer.jsp"/></div>	    
    </body>
</html>
