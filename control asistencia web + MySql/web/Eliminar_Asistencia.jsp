<%-- 
    Document   : Eliminar_Asistencia
    Created on : 21-06-2016, 0:48:52
    Author     : Fabián
--%>

<%@page import="app.AsistenciaControladorDB"%>
<%@page import="app.Asistencia"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Eliminar_Asistencia_2.jsp" method="POST">
            <table>
                <TR><TD>Codigo de asistencia: <TD><input type="text" name="codasistencia">
                <TR><TD><input type="submit" name="opcion" value="Aceptar">
                <TR><TD><A HREF="index.jsp">Volver</A>
            </table>
        </form>
    </body>
</html>
