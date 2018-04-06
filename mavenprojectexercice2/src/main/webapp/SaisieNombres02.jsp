<%-- 
    Document   : SaisieNombres02
    Created on : 5 avr. 2018, 11:48:07
    Author     : Formation
--%>
<%@page language="java" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulaire Dynamique de Saisie(s)</title>
    </head>
    <body>
        <%
            int inbvaleur = 0;
            if(session.getAttribute("NbValeur")!=null)
            {
                inbvaleur = (int) 
                        session.getAttribute("NbValeur");
                
            }
        %>
        <form action="Traitement02" method="post">
            <%
                for(int i=0;i<inbvaleur;i++)
                {
            %>
            <label>Saisie du nombre <%=i%> : </label>
            <input type="text" name="sval<%=i%>" required/><br/>
            <%}%>
            <input type="submit" value="Valider" />
        </form> 
    </body>
</html>
