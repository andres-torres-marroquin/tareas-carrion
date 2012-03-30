<%-- 
    Document   : send_email
    Created on : 29-mar-2012, 19:18:10
    Author     : atorres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario de contacto</title>
    </head>
    <body>
        <form method="POST" action="send_email">
            <p>Tu Nombre<input type="text" name="name"/></p>
            <p>Tu Email<input type="text" name="email"/></p>
            <p>Asunto<input type="text" name="subject"/></p>
            <p>Mensaje<br/><textarea name="message" cols="50" rows="10"></textarea></p>
            <p><input type="submit"></p>
        </form>
    </body>
</html>
