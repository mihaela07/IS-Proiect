<%-- 
    Author     : Alex Cozma
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Boolean loggedin = (Boolean)session.getAttribute("loggedin");
    
%>
    <table  align="center" border = "0" cellspacing = "7" cellpadding = "2"> 
        <tbody>
            <tr class="meniu">
                <td><a href="index.jsp">Home</a></td>
                <%
                    try{
                        if((Boolean)session.getAttribute("loggedin") == true)
						{                          
                            out.print("<td><a href = \"logout.jsp\">Log out</a></td>");
                            out.print("<td><a href = \"addUser.jsp\">Add User</a></td>");
                            out.print("<td><a href = \"AllUsersServlet\">Edit//Remove User</a></td>");
                            out.print("<td><a href = \"AlegereJob.jsp\">Alegere Job-uri</a></td>");
                            //out.print("<td><a href = \"AllUsersServlet\">Remove User</a></td>");
                        }else
						{
                            out.print("<td><a href = \"login.jsp\">Log in</a></td>");
                        }
                    }catch(Exception e)
					{
                        out.print("<td><a href = \"login.jsp\">Login</a></td>");
                    }
                %>
            </tr>
        </tbody>
    </table>
