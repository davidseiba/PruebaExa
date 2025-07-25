<%-- 
    Document   : conexion
    Created on : 7/07/2025, 12:35:00 PM
    Author     : Students
--%>

<%@page language="java" import="java.sql.*" %>
<%
    Connection conexion = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/nomina_mata", "root", "");
    } catch (Exception e) {
        out.println("Error en conexión: " + e.getMessage());
    }
%>

