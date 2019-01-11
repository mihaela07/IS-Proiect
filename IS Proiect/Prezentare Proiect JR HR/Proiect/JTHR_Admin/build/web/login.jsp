<%-- 
    Author     : Alex Cozma
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JTHR Login</title>
         <link href="css/styles.css" rel='stylesheet' type='text/css' />
         <script>
             function checklogin()
            {
                var uname = document.forms["loginform"]["username"].vlaue;
                if(uname=="")
                {
                    alert("username requiered");
                    return false;
                }else
                {
                    return true;
                }
            }
         </script>
    </head>
    <body>
        <h1>Please login:</h1>
        <div id="menu">
            <jsp:include page="menu.jsp"/>                    
         
        </div>
		<div class="stanga">  <img src="IMG/login.jpg"  height="300" width="200"/></div>
		
        <div id="login_form">
            <form onsubmit="return checklogin()" action="LoginServelt" name="loginform" method="POST">
                <table class="userpass" align="center" border="0" cellpadding="2">
                    <tr>
                        <td class="username">Username:</td>
                        <td><input type="text" name="username" value="" size="26" /></td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="password">Password:</td>
                        <td><input type="password" name="password" value="" size="26" /></td>
                    </tr> 
                    <tr><td></td></tr>
                    <tr>                     
                        <td><input type="submit" id="login_button" value="LOGIN" name="loginbtn" /></td>
                    </tr>
                </table>
            </form>
        </div>
		
		<div class="mijloc"></div>
        <div><jsp:include page="css/footer.jsp"/></div>
    </body>
</html>
