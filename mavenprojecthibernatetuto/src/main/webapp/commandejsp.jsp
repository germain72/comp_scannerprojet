<%--
    Document   : commandejsp
    Created on : 23 mars 2018, 15:55:12
    Author     : Formation
--%>

<%@include file="entete.jsp" %>
<%@ page language="java" %>
<%@page import="ch.conceptforge.mavenprojecthibernatetuto.*" %>
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
 <%@include file="pied.jsp" %>
