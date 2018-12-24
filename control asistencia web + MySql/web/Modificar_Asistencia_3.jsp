<%-- 
    Document   : Modificar_Asistencia_3
    Created on : 21-06-2016, 1:09:41
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
            
            String id_asistencia1=request.getParameter("id_asistencia");
            int id_asistencia=Integer.parseInt(id_asistencia1);
            
            if(rut.length()<=10 && hora != null && (tipo.equals("Entrada") || tipo.equals("Salida"))){
            Asistencia x = new Asistencia(id_asistencia,rut,cal_fecha,cal_hora,tipo);
            
           
            
            if(AsistenciaControladorDB.modificar(x)!=0)
            {
                %>Usuario modificado <%
            }
            else
            {
               %>Usuario no modificado <% 
            }
            }
else
{
    %><TR><TD>Uno de los campos no se ingresó correctamente<TD><%
}
        %>
        <br><A HREF="Modificar_Asistencia.jsp">Volver</A>
    </body>
</html>
