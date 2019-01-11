<%-- 
    Author     : Sabrina Ghip
--%>

<%@page import="java.util.List"%>
<%@page import="jthr_model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All users</title>
         <link href="css/styles.css" rel='stylesheet' type='text/css' />   
    </head>
    <body>
		<h1>Edit / Remove users</h1> 
        <div id="menu">
            <jsp:include page="menu.jsp"/>
        </div>
        <div id="menubody" style="width: 1200px; margin-left: auto; margin-right: auto;">
            <table class="listing">
			<thead>
                            <tr>
				<th>Username</th>
				<th>First name</th>
				<th>Last name</th>
				<th>Email</th>
				<th>Cell phone</th>
				<th>Phone</th>
				<th>User Function</th>
				<th>Role list</th>
				<th>Description</th>
				<th>&nbsp;</th>
				<th>&nbsp;</th>
                            </tr>
			</thead>		
                    <tbody>
                <%
                  List<User> lst = (List<User>)request.getAttribute("AllUsers");
                  for(User u : lst)
                  {
                      out.println("<tr>");
                      
                      out.println("<td>");
                      out.println(u.getUsername());
                      out.println("</td>");
                      
                      out.println("<td>");
                      out.println(u.getFirstName());
                      out.println("</td>");
                      
                      out.println("<td>");
                      out.println(u.getLastName());
                      out.println("</td>");
                      
                      out.println("<td>");
                      out.println(u.getEmail());
                      out.println("</td>");
                      
                      out.println("<td>");
                      out.println(u.getCellPhone());
                      out.println("</td>");
                      
                      out.println("<td>");
                      out.println(u.getPhone());
                      out.println("</td>");
                      
                      out.println("<td>");
                      out.println(u.getUserFunction());
                      out.println("</td>");
                      
                      out.println("<td>");
                      out.println(u.getRoleList());
                      out.println("</td>");
                      
                      out.println("<td>");
                      out.println(u.getDescription());
                      out.println("</td>");
                      
                      out.print("<td><a href=\"editUser.jsp?id=");
                      out.print(u.getId());
                      out.println("\"> Edit</a></td>");
                      
                      out.print("<td><a href=\"RemoveUserServlet?id=");
                      out.print(u.getId());
                      out.println("\"  onclick=\"return confirm('Are you sure?')\"> Remove</a></td>");
                      
                      out.println("</tr>");
                  }
                %>
                </tbody>
            </table>
        </div>
        <div><jsp:include page="css/footer.jsp"/></div>	        
    </body>
</html>
