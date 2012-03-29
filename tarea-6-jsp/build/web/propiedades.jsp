<%-- 
    Document   : index
    Created on : 29/03/2012, 08:55:32 AM
    Author     : andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int value = Integer.parseInt(request.getParameter("programa"));
    String propiedad = "";
    String valor = "";
    switch(value){
        case 1: 
            propiedad = "Sistema Operativo";
            valor = System.getProperty("os.name");
            break;
        case 2:
            propiedad = "Versión del Sistema Operativo";
            valor = System.getProperty("os.version");
            break;
        case 3:
            propiedad = "Arquitectura del Sistema Operativo";
            valor = System.getProperty("os.arch");
            break;
        case 4:
            propiedad = "Nombre del Usuario";
            valor = System.getProperty("user.name");
            break;
        case 5:
            propiedad = "Directorio del Usuario";
            valor = System.getProperty("user.home");
            break;
        case 6:
            propiedad = "Versión de java";
            valor = System.getProperty("java.version");
            break;
        case 7:
            propiedad = "Proveedor de Java";
            valor = System.getProperty("java.vendor");
            break;
        case 8:
            propiedad = "Directorio de Java";
            valor = System.getProperty("java.home");
            break;
                               
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
       <table>
            <tr>
                <td colspan="2"><h1>Datos</h1></td>
            </tr>
            <tr>
                <td><b>Propiedad:</b></td>
                <td><%= propiedad %></td>
            </tr>
            <tr>
                <td><b>Valor</b></td>
                <td><%= valor %></td>
            </tr>
        </table>
            <a href="index.jsp">Regresar</a>
    </body>
</html>
