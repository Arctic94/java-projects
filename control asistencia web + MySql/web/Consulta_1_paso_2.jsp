<%-- 
    Document   : Consulta_1_paso_2
    Created on : 22-06-2016, 2:52:51
    Author     : Fabián
--%>
<%@page import="app.FuncionariosControladorDB"%>
<%@page import="app.Funcionario"%>
<%@page import="app.AsistenciaControladorDB"%>
<%@page import="app.Asistencia"%>
<%@page import="java.util.Calendar" %>
<%@page import="java.util.GregorianCalendar " %>
<%@page import="java.util.Date " %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Consulta_1_paso_3.jsp" method="POST">
            <table>
                <%            
            String rut = request.getParameter("rut");
            Funcionario x=FuncionariosControladorDB.buscar(rut);
            if(rut.equals(x.getRut()))
                {
                %>
                
                <TR><TD>Fecha: <TD><input type="date" name="fecha">
                <TR><TD>Hora entrada: <TD><input type="time" name="hora_entrada" step="1">
                <TR><TD>Hora salida: <TD><input type="time" name="hora_salida" step="1">
                <TR><TD><input type="hidden" name="rut" value="<%=rut%>">
                <TR><TD><input type="hidden" name="entrada" value="Entrada">
                <TR><TD><input type="hidden" name="salida" value="Salida">
                <TR><TD><input type="submit" name="opcion" value="Aceptar">
                <TR><TD><A HREF="Consulta_1.jsp">Volver</A>
              <%
                }
                else
                {
                    %><TR><TD>Rut no encontrado<TD><%
                }
            
            %>
            </table>
        </form>
    </body>
</html>