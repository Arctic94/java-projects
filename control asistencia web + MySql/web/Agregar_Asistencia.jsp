<%-- 
    Document   : Agregar_Asistencia
    Created on : 21-06-2016, 0:22:58
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
        <form action="Agregar_Asistencia_2.jsp" method="POST">
            <table>
                
                <TR><TD>Rut del funcionario: <TD><input type="text" name="rut">
                <TR><TD>Fecha: <TD><input type="date" name="fecha">
                <TR><TD>Hora: <TD><input type="time" name="hora" step="1">
                <TR><TD>Tipo de registro: <TD><input type="text" name="tipo">
                <TR><TD><input type="submit" name="opcion" value="Aceptar">
                <TR><TD><A HREF="index.jsp">Volver</A>
            </table>
        </form>
    </body>
</html>
