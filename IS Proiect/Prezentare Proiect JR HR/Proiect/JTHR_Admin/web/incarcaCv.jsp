<%-- 
    Document   : incarcaCv
    Created on : 10.01.2019, 20:29:45
    Author     : IAGARUMIHAELA-IONELA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JTHR CV</title>
         <link href="css/bodyStyle.css" rel='stylesheet' type='text/css' />
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
       
                <h1>Upload</h1>
                <div class="userpass" align="center"> 
        <form method="POST" action="upload" enctype="multipart/form-data" >
            Job:
            <select name="Jobs">
    <option value="is">Inginerie Software</option>
    <option value="PrUni">Profesor Universotar</option>
    <option value="secretara">Secretara</option>
    <option value="mecanic">Mecanic</option>
    <option value="menager">Menager</option>
    <option value="pilot">Pilot</option>
    <option value="reporter">Reporter</option>
    <option value="avocat">Avocat</option>
  </select><br/>
            First Name:
            <input type="text" name="name"><br/>
            Last Name:
            <input type="text" name="name"><br/>
            Upload CV:
            <input type="file" name="file" id="file" /> <br/>
            Destination:
            <input type="text" value="/tmp" name="destination"/>
            </br>
            <input type="submit" value="Upload" name="upload" id="upload" />
        </form>
                <div class="mijloc"></div>
        <div><jsp:include page="css/footer.jsp"/></div>
        </div>
    </body>
</html>
