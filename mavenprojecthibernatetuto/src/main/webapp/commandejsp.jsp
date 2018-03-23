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
        <h1>Listes des Commandes</h1>
        <% for(Commande oc: GestionCommande.getAllCommande())
            { %>
            <hr/>
            <div class='datarow'>Id : <%= oc.getId() %> <br/>
            Nom : <%= oc.getNomcde()%> <br/>
            Date : <%= oc.getDatecde()%> 
            <br/></div>
            <% Client ocl = oc.getClient(); %>
            <div class='datarow'>Id client : <%= ocl.getId() %> <br/>
            Nom client : <%= ocl.getNom() %> <br/>
            Prénom : <%= ocl.getPrenom() %> 
            <br/><hr/></div>
        <% } %>
    </body>
</html>
