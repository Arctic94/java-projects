<%-- 
    Document   : Buscar_Funcionario
    Created on : 22-06-2016, 0:58:16
    Author     : Fabián
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
        <form action="Buscar_Funcionario_2.jsp" method="POST">
            <table>
                <TR><TD>Rut: <TD><input type="text" name="rut">
                <TR><TD><input type="submit" name="opcion" value="Aceptar">
                <TR><TD><A HREF="index.jsp">Volver</A>
            </table>
        </form>
    </body>
</html>
