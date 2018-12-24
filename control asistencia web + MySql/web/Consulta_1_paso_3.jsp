<%-- 
    Document   : Consulta_1_paso_3
    Created on : 22-06-2016, 3:04:23
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
            SimpleDateFormat sdf_horas2=new SimpleDateFormat("HH:mm:ss");
            
            String rut = request.getParameter("rut");
            
            String fecha = request.getParameter("fecha");
            fecha=fecha.replace('-', '/');
            Date date_fecha=sdf.parse(fecha);
            Calendar cal_fecha=Calendar.getInstance();
            cal_fecha.setTime(date_fecha);
            
            String entrada= request.getParameter("entrada");
            String salida= request.getParameter("salida");
            
            String hora_entrada = request.getParameter("hora_entrada");
            Date date_hora=sdf_horas.parse(hora_entrada);
            Calendar entrada_hora=Calendar.getInstance();
            entrada_hora.setTime(date_hora);
            
            String hora_salida = request.getParameter("hora_salida");
            Date date_hora2=sdf_horas2.parse(hora_salida);
            Calendar salida_hora=Calendar.getInstance();
            salida_hora.setTime(date_hora2);
            
            
            Asistencia x=new Asistencia(rut,cal_fecha,entrada_hora,entrada);
            Asistencia y=new Asistencia(rut,cal_fecha,salida_hora,salida);
            
            %>  
            
            
            
                      <%
            
                if(AsistenciaControladorDB.agregar(x)!=0 && AsistenciaControladorDB.agregar(y)!=0)
                {
        %>  
            
            <TR><TD>Rut:<TD><%=x.getRut()%>
            <TR><TD>Fecha:<TD><%=sdf.format(x.getFecha().getTime())%>
            <TR><TD>Hora entrada:<TD><%=sdf_horas.format(x.getHora().getTime())%>
            <TR><TD>Tipo registro:<TD><%=x.getTipoRegistro()%>
                    
            <TR><TD>Fecha:<TD><%=sdf.format(y.getFecha().getTime())%>
            <TR><TD>Hora salida:<TD><%=sdf_horas2.format(y.getHora().getTime())%>
            <TR><TD>Tipo registro:<TD><%=y.getTipoRegistro()%>
            
                      <%
                }
                else
                {
                    %><TR><TD>Asistencia no agregada<TD><%
                }
            
            %>
        </table>
        <br>
        <A HREF="Consulta_1.jsp">Volver</A>
    </body>
</html>