<%-- 
    Author     : Alex Cozma
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
     
<!DOCTYPE html>
<html>    
    <head>
<!--         <jsp:include page="menu.jsp"/>   -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JTHR :: ADMIN :: Add User</title>
 <link href="css/styles.css" rel='stylesheet' type='text/css' />      
        
        <script>
            function checkEmpty() {
                var fname = document.forms["addUserForm"]["firstname"].value;
                var lname = document.forms["addUserForm"]["lastname"].value;
                var cellphone = document.forms["addUserForm"]["cellphone"].value;
                var email = document.forms["addUserForm"]["email"].value;
                
                if(fname==="" || lname==="" ||
                    cellphone==="" || email==="" )
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
        <h1>Add new users</h1> 
        <div id="menu">
            <jsp:include page="menu.jsp"/>                    
         
        </div>
        <div class="stanga">  <img src="IMG/adduser.jpg"  height="300" width="200"/></div> 
        <div id="menubody">
            <form onsubmit="return checkEmpty()" name="addUserForm" action="AddUserServlet" method="POST">

                <table class="formular" align="center" >
                    <tbody class="tbody">
                        <tr>
                            <td id="firstname">First Name*: </td>                   
                            <td><input type="text" name="firstname" value="" size="50" maxlength="50" placeholder="Mandatory field"/></td>                  
                        </tr>  
                    <td>&nbsp;</td>                                     
                    <tr>
                        <td id="lastname">Last Name*: </td>                 
                        <td><input type="text" name="lastname" value="" size="50" maxlength="50"  placeholder="Mandatory field"/></td>
                    </tr>
                    <td>&nbsp;</td>
                    <tr>
                        <td id="cellphone">Cell Phone*: </td>
                        <td><input type="text" name="cellphone" value="" size="11" maxlength="11"  placeholder="Mandatory field"/></td>
                    </tr>  
                    <td>&nbsp;</td>
                    <tr>
                        <td id="phone">Phone: </td>                      
                        <td><input type="text" name="phone" value="" size="11" maxlength="11" /></td>                       
                    </tr>                   

                    <td>&nbsp;</td>
                    <tr>
                        <td id="email">Email* : </td>
                        <td><input type="text" name="email" value="" size="50" maxlength="50" placeholder="email@email.com" /></td>
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
                        <td colspan="3"><input name="rolelist" size="50" maxlength="200" placeholder="separete by ,"/></textarea>                      

                    </tr>
                    <td>&nbsp;</td>
                    <tr>
                        <td id="description">Description: </td>
                        <td colspan="3"><textarea name="description" rows="3" cols="50" maxlength="300" placeholder="description"></textarea>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <td>&nbsp;</td>
                    <tr>
                        <td>
                            <input type="submit" id="add_user" value="Add User" name="addUser" />
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
