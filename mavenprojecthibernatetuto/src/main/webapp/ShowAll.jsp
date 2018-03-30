<%-- 
    Document   : Success
    Created on : 2 Oct, 2016, 12:39:19 PM
    Author     : Admin
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
--%>
<%@ page language="java" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="entete.jsp" %>
        <link href="css/cgestyle.css" rel="stylesheet" type="text/css"/>
        <script>
$(document).ready(function(){
    $("#deleteEmployee").hide();
     $("#updateEmployee").hide();
    
    $("#update").click(function(){
        $("#updateEmployee").show();
        $("#deleteEmployee").hide();
    });
    $("#delete").click(function(){
        $("#deleteEmployee").show();
         $("#updateEmployee").hide();
    });
});
</script>
    </head>
    <body>
        All Employees: <br> 
        <c:forEach var="emp" items="${employeeList}">
            Employee ID: ${emp.id} <br>
            Employee Name: ${emp.ename} <br>
            Employee Number: ${emp.enumber}<br>
            -------------------------------------<br>
        </c:forEach>
        
        <form action="Employee" method="POST">
            Update: <input type="checkbox" id="update"> Delete: <input type="checkbox" id="delete" onclick="document.getElementById('ename').disabled=this.checked;document.getElementById('enumberupdate').disabled=this.checked;"><br><br>
            <select name="id">
                <c:forEach items="${employeeList}" var="employee">
                <option value="${employee.id}">${employee.id}</option>
                 </c:forEach>
            </select>
            
            <br>
            Update Name: <input id="ename" type="text" name="ename"><br>
            Update Number: <input id="enumberupdate" type="text" name="enumberupdate"> <br><br>
            <button type="submit" id="updateEmployee" name="updateEmployee"> Update</button> <br> <br>
            <button type="submit" id="deleteEmployee" name="deleteEmployee"> Delete </button>
            
            
               
       
        </form>

            <p>   <a href="EmployeeAdd.jsp">Retour Add</a></p>
 <%@include file="pied.jsp" %>