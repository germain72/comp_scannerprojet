<%--
    Document   : commandejsp
    Created on : 23 mars 2018, 15:55:12
    Author     : Formation
--%>
<%@ page language="java" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ch.conceptforge.mavenprojecthibernatetuto.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/cgestyle.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listes des clients</h1>
        <% for(Client oc: GestionClient.getAllClient())
            { %>
            <hr/>
            <div class='datarow'>Id : <%= oc.getId() %> <br/>
            Nom : <%= oc.getNom() %> <br/>
            Prenom : <%= oc.getPrenom() %> 
            <br/><hr/></div>
        <% } %>
    </body>
</html>
