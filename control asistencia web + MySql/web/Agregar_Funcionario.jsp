<%-- 
    Document   : Agregar_Funcionario
    Created on : 16-06-2016, 16:04:34
    Author     : alumnossur
--%>

<%@page import="app.FuncionariosControladorDB"%>
<%@page import="app.Funcionario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Agregar_Funcionario_2.jsp" method="POST">
            <table>
                
                <TR><TD>Rut del funcionario: <TD><input type="text" name="rut">
                <TR><TD>Nombre: <TD><input type="text" name="nombre">
                <TR><TD>Fecha de nacimiento: <TD><input type="date" name="fecha">
                <TR><TD>Cargo: <TD><input type="text" name="cargo">
                <TR><TD>Sueldo: <TD><input type="text" name="sueldo">
                <TR><TD><input type="submit" name="opcion" value="Aceptar">
                <TR><TD><A HREF="index.jsp">Volver</A>
            </table>
        </form>
    </body>
</html>
