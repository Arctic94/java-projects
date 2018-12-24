<%-- 
    Document   : Buscar_Asistencia
    Created on : 16-06-2016, 16:28:28
    Author     : alumnossur
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
        <form action="Buscar_Asistencia_2.jsp" method="POST">
            <table>
                <TR><TD>ID asistencia: <TD><input type="text" name="id_asistencia">
                <TR><TD><input type="submit" name="opcion" value="Aceptar">
                <TR><TD><A HREF="index.jsp">Volver</A>
            </table>
        </form>
    </body>
</html>
