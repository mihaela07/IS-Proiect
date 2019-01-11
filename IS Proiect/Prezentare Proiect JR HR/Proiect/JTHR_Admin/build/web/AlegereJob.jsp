<%-- 
    Document   : AlegereJob
    Created on : Jan 10, 2019, 9:02:55 PM
    Author     : PURECEANA-MARIA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/styles.css" rel='stylesheet' type='text/css' />
        <title>Job-uri</title>
    </head>
    <body>
        <h1>Choose your JOB !</h1>
        <div id="menu">
            <jsp:include page="menu.jsp"/>                    
        </div>
         <table>
	    <tr>
		<td rowspan="1" class="denumiri"><a href=>Inginer Software</a></td>
		<td class="denumiri"><a href=>Profesor Universitar</a></td>
		<td class="denumiri"><a href=>Secretara</a></td>
		<td class="denumiri"><a href=>Mecanic</a></td>
            </tr>
            <tr>
                <td class="cerinte">Cerinte:</td>
                <td class="cerinte">Cerinte:</td>
                <td class="cerinte">Cerinte:</td>
                <td class="cerinte">Cerinte:</td>
            </tr>
            
            <tr>
                <td class="descrieri">-capacitatea de a lucra in echipa</td>
                <td class="descrieri">-abilitati de comunicare</td>
                <td class="descrieri">-abilitati de comunicare</td>
                <td class="descrieri">-cunostinte mecanice</td>
            </tr>
            
             <tr>
                <td class="descrieri">-abilitati de comunicare</td>
                <td class="descrieri">-competente pedagogice</td>
                <td class="descrieri">-executarea de sarcini complexe</td>
                <td class="descrieri">-abilitati de comunicare</td>
            </tr>
            
             <tr>
                <td class="descrieri">-cunostinte avansate in domeniul Software</td>
                <td class="descrieri">-abilitati empatice</td>
                <td class="descrieri">-capacitatea de analiza si sinteza</td>
                <td class="descrieri">-capacitatea de a lucra in echipa</td>
            </tr>
            
            
            <tr>
		<td class="imagini"><img src="IMG/programator.jpg"  alt="imagine"></td>
		<td class="imagini"><img src="IMG/profesor.jpg"   alt="imagine"></td>
		<td class="imagini"><img src="IMG/secretara.jpg"   alt="imagine"></td>
		<td class="imagini"><img src="IMG/mecanic.jpg"  alt="imagine"></td>
            </tr>
            
         
		                  
	</table>
        
	<table>
            <tr>
		<td rowspan="1" class="denumiri"><a href=>Pilot</a></td>
		<td class="denumiri"><a href=>Manager</a></td>
		<td class="denumiri"><a href=>Reporter</a></td>
		<td class="denumiri"><a href=>Avocat</a></td>
            </tr>
            <tr>
                <td class="cerinte">Cerinte:</td>
                <td class="cerinte">Cerinte:</td>
                <td class="cerinte">Cerinte:</td>
                <td class="cerinte">Cerinte:</td>
            </tr>
            <tr>
                <td class="descrieri">-cunostinte in domeniul aviatiei</td>
                <td class="descrieri">-abilitati de comunicare</td>
                <td class="descrieri">-abilitati de comunicare</td>
                <td class="descrieri">-abilitati de comunicare</td>
            </tr>
            
             <tr>
                <td class="descrieri">-autocontrol</td>
                <td class="descrieri">-abilitati oratorice</td>
                <td class="descrieri">-coerenta in vorbire</td>
                <td class="descrieri">-cunostinte juridice</td>
            </tr>
            
             <tr>
                <td class="descrieri">-pasiunea, curajul și rezistența</td>
                <td class="descrieri">-aptitudinile decizionale</td>
                <td class="descrieri">-determinare</td>
                <td class="descrieri">-capacitate analitică</td>
            </tr>
            <tr>
		<td class="imagini"><img src="IMG/pilot.jpg"   alt="imagine"></td>
		<td class="imagini"><img src="IMG/manager.jpg"   alt="imagine"></td>
		<td class="imagini"><img src="IMG/reporter.jpg"   alt="imagine"></td>
                <td class="imagini"><img src="IMG/avocat.jpg"   alt="imagine"></td>
            </tr>
        
	</table>          
        <input class="upload" type="submit" value="UPLOAD" name="upload" />
    </body>
</html>
