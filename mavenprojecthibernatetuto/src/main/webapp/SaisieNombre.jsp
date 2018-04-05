<%-- 
    Document   : SaisieNombre
    Created on : 5 avr. 2018, 10:07:13
    Author     : Formation
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nombre de Saisie de Chiffres</title>
    </head>
    <body>
        <h1>Saisie du nombre de nombres à saisir :) </h1>
        <form action="Traitement01" method="post">
            <label>Saisie le nombre :</label>
            <input type="text" name="NbValeur" required/><br/>
            <input type="submit" value="Valider" />
        </form>
    </body>
</html>
