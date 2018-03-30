<%-- 
    Document   : EmployeeAdd
    Created on : 2 Oct, 2016, 12:29:19 PM
    Author     : Admin
--%>
<%@ page language="java" %>
<%@include file="entete.jsp" %>
        <div id="add">
        <h1> Add Employee </h1>
        <form action="Employee" method="GET">
            <table>
                <tr>
                    <td> Employee Name: </td>
                    <td><input type="text" name="ename"></td>
                </tr>
                <tr>
                    <td> Employee Number: </td>
                    <td><input type="text" name="enumber"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="addEmployee" value="Add"></td>
                    
                </tr>
            </table>
        </form>
        </div>
        <form action="Employee" method="POST">
            <input type="submit" name="showEmployee" value="Show"> &nbsp; &nbsp;<br>
            
            
        </form>
<%@include file="pied.jsp" %>
