<%-- 
    Document   : Agregar_Asistencia_2
    Created on : 21-06-2016, 0:25:47
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
            SimpleDateFormat sdf= new SimpleDateFormat("yyyy/MM/dd");
            SimpleDateFormat sdf_horas=new SimpleDateFormat("HH:mm:ss");
           
            String rut = request.getParameter("rut");
            
            String fecha = request.getParameter("fecha");
            fecha=fecha.replace('-', '/');
            Date date_fecha=sdf.parse(fecha);
            Calendar cal_fecha=Calendar.getInstance();
            cal_fecha.setTime(date_fecha);
            
            
            
            String hora = request.getParameter("hora");
            Date date_hora=sdf_horas.parse(hora);
            Calendar cal_hora=Calendar.getInstance();
            cal_hora.setTime(date_hora);
            
            String tipo = request.getParameter("tipo");
            
            
            if(rut.length()<=10 && hora != null && (tipo.equals("Entrada") || tipo.equals("Salida"))){
            Asistencia x=new Asistencia(rut,cal_fecha,cal_hora,tipo);
            
            
            %>  
            
            
            
                      <%
            
                if(AsistenciaControladorDB.agregar(x)!=0)
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
                    %><TR><TD>Asistencia no agregada<TD><%
                }
                }
else
{
    %><TR><TD>Uno de los campos no se ingresó correctamente<TD><%
}
            
            %>
        </table>
        <br>
        <A HREF="Agregar_Asistencia.jsp">Volver</A>
    </body>
</html>
