<%-- 
    Author     : Ioana Bugner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
    </head>
    <body>
        <% 
            session.setAttribute("loggedin",(Boolean)false); //modifica variablia de sesiune
            response.sendRedirect("index.jsp"); //redirectioneaza pe pagina index.jsp
        %>
    </body>
</html>
