<%-- 
    Document   : login
    Created on : 30 mars 2018, 14:28:38
    Author     : Formation
--%>

<%@ page language="java" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="entete.jsp" %>
<h1> Identifiez-vous SVP </h1>

<form action="" method="post" >
    <label>Nom :</label> <input type="text" name="loginname" ><br/>
    <label>Mot de Passe :</label> <input type="password" name="loginpwd" ><br/>
    
     <br/>
     <hr/>
     <input type="submit" value ="Valider" >
     <hr/>
      
</form>


 <%@include file="pied.jsp" %>
