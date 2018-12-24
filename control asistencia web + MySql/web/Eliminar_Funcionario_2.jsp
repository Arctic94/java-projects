<%-- 
    Document   : Eliminar_Funcionario_2
    Created on : 22-06-2016, 0:54:44
    Author     : Fabián
--%>

<%@page import="app.FuncionariosControladorDB"%>
<%@page import="app.Funcionario"%>
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
        <table border="1">
        <% 
            String rut = request.getParameter("rut");
            
            SimpleDateFormat sdf= new SimpleDateFormat("yyyy/M/dd");
            
            
            
            
                if(FuncionariosControladorDB.eliminar(rut)==1)
                {
        %>  
                    <TR><TD>Funcionario eliminado<%
            
                      
                }
                else
                {
                    %><TR><TD>Funcionario no eliminado/no encontrado<%
                }
            
            %>
        </table>
        <br>
        <A HREF="Eliminar_Funcionario.jsp">Volver</A>
    </body>
</html>
