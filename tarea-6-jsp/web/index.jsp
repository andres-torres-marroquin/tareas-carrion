<%-- 
    Document   : index
    Created on : 29/03/2012, 08:50:23 AM
    Author     : andres
--%>

<%@page import="org.omg.CORBA.PUBLIC_MEMBER"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Tarea</title>
    </head>
    <body>
        <h1>Propiedades del Servidor</h1>
        <form action="propiedades.jsp">
            <p><input type="radio" name="programa" value="1"> Sistema Operativo</p>
            <p><input type="radio" name="programa" value="2"> Versión del Sistema Operativo</p>
            <p><input type="radio" name="programa" value="3"> Arquitectura del Sistema Operativo</p>
            <p><input type="radio" name="programa" value="4"> Nombre del Usuario</p>
            <p><input type="radio" name="programa" value="5"> Directorio del Usuario</p>
            <p><input type="radio" name="programa" value="6"> Versión de java</p>
            <p><input type="radio" name="programa" value="7"> Proveedor de Java</p>
            <p><input type="radio" name="programa" value="8"> Directorio de Java</p>
            <button type="submit">Ir</button>
        </form>
        <br>
        
    </body>
</html>
