<%-- 
    Document   : Modificar_Asistencia_2
    Created on : 21-06-2016, 1:01:04
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
            <form action="Modificar_Asistencia_3.jsp" method="POST">
                <% 
            String cod1 = request.getParameter("codasistencia");
            int cod=Integer.parseInt(cod1);
            
            SimpleDateFormat sdf= new SimpleDateFormat("yyyy/M/dd");
            SimpleDateFormat sdf_horas=new SimpleDateFormat("HH:mm:ss");
            
            Asistencia x=AsistenciaControladorDB.buscar(cod);
            
            
                if(x.getCodAsistencia()==cod)
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
            
            
            
            
            
                if(cod == x.getCodAsistencia())
                {
                    %>
            
                    <TR><TD>===== Modifique campos =====<TD>
                    <TR><TD>Rut:<TD><input type="text" value="<%=x.getRut()%>" name="rut">
                    <TR><TD>Fecha: <TD><input type="date" name="fecha">
                    <TR><TD>Hora: <TD><input type="time" name="hora" step="1">
                    <TR><TD>Tipo de registro:<TD><input type="text" value="<%=x.getTipoRegistro()%>" name="tipo">
                                                 <input type="hidden" value="<%=cod%>" name="id_asistencia">
                    <tr><td colspan="2" align="center"><input type="submit" name="modificar" value="Guardar cambios">        
                    
                      <%
                }
            
            %>
            
            
            </form>
        
        </table>
            <A HREF="Modificar_Asistencia.jsp">Volver</A>
    </body>
</html>
