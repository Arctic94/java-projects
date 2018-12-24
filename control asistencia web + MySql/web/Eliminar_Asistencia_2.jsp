<%-- 
    Document   : Eliminar_Asistencia_2
    Created on : 21-06-2016, 0:49:44
    Author     : Fabián
--%>

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
        <table border="1">
        <% 
            String cod1 = request.getParameter("codasistencia");
            int cod=Integer.parseInt(cod1);
            
            SimpleDateFormat sdf= new SimpleDateFormat("yyyy/M/dd");
            SimpleDateFormat sdf_horas=new SimpleDateFormat("HH:mm:ss");
            
            
            
            
                if(AsistenciaControladorDB.eliminar(cod)==1)
                {
        %>  
                    <TR><TD>Asistencia  eliminada<%
            
                      
                }
                else
                {
                    %><TR><TD>Asistencia no encontrada/no elmininada<%
                }
            
            %>
        </table>
        <br>
        <A HREF="Eliminar_Asistencia.jsp">Volver</A>
    </body>
</html>