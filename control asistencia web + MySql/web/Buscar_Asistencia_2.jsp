<%-- 
    Document   : Buscar_Asistencia_2
    Created on : 16-06-2016, 16:29:32
    Author     : alumnossur
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
            String id_asistencia_string = request.getParameter("id_asistencia");
            int id_asistencia=Integer.parseInt(id_asistencia_string);
            
            SimpleDateFormat sdf= new SimpleDateFormat("yyyy/M/dd");
            SimpleDateFormat sdf_horas=new SimpleDateFormat("HH:mm:ss");
            
            Asistencia x=AsistenciaControladorDB.buscar(id_asistencia);
            
            
                if(x.getCodAsistencia()==id_asistencia)
                {
        %>  
            
            <TR><TD>Rut:<TD><%=x.getRut()%>
            <TR><TD>Fecha:<TD><%=sdf.format(x.getFecha().getTime())%>
            <TR><TD>Hora:<TD><%=sdf_horas.format(x.getHora().getTime())%>
            <TR><TD>Tipo registro:<TD><%=x.getTipoRegistro()%>
            
                      <%
                }
                else
                {
                    %><TR><TD>ID no encontrada<TD><%
                }
            
            %>
        </table>
        <br>
        <A HREF="Buscar_Asistencia.jsp">Volver</A>
    </body>
</html>
