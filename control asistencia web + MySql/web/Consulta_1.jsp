<%-- 
    Document   : Consulta_1
    Created on : 22-06-2016, 2:51:28
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
        <form action="Consulta_1_paso_2.jsp" method="POST">
            <table>
                <TR><TD>Rut: <TD><input type="text" name="rut">
                <TR><TD><input type="submit" name="opcion" value="Aceptar">
                <TR><TD><A HREF="Menu_Consultas.jsp">Volver</A>
            </table>
        </form>
    </body>
</html>
