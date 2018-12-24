<%-- 
    Document   : Listar_Asistencia
    Created on : 20-06-2016, 23:14:40
    Author     : Arctic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="app.AsistenciaControladorDB"%>
<%@page import="app.Asistencia"%>
<%@page import="java.util.Calendar" %>
<%@page import="java.util.GregorianCalendar " %>
<%@page import="java.util.Date " %>
<%@page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <TR><TD>Id asistencia<TD>Rut<TD>Fecha<TD>Hora<TD>Tipo registro</td></tr>
            
        
        <%
            SimpleDateFormat sdf= new SimpleDateFormat("yyyy/MM/dd");
            SimpleDateFormat sdf_horas=new SimpleDateFormat("HH:mm:ss");
            
            String fecha="";
           String hora="";
            
            for(Asistencia x:AsistenciaControladorDB.listar())
            {
               
                        
                
                %>
                
                <%
                sdf=new SimpleDateFormat("yyyy/MM/dd");
                sdf_horas=new SimpleDateFormat("HH:mm:ss");
                
                fecha=sdf.format(x.getFecha().getTime());
                hora=sdf_horas.format(x.getHora().getTime());
                
                
            }
            fecha=sdf.format(AsistenciaControladorDB.listar().get(1).getFecha().getTime());
            hora=sdf_horas.format(AsistenciaControladorDB.listar().get(1).getHora().getTime());
            for(int i=0;i<AsistenciaControladorDB.listar().size();i++)
            {
                
                
               
                
                %>
                <TR><TD><%=AsistenciaControladorDB.listar().get(i).getCodAsistencia()%>
                <TD><%=AsistenciaControladorDB.listar().get(i).getRut()%>
                <TD><%=fecha %>
                <TD><%=hora %>
                <TD><%=AsistenciaControladorDB.listar().get(i).getTipoRegistro()%>
                <%
                 sdf=new SimpleDateFormat("yyyy/MM/dd");
                sdf_horas=new SimpleDateFormat("HH:mm:ss");
                
                fecha=sdf.format(AsistenciaControladorDB.listar().get(i).getFecha().getTime());
                hora=sdf_horas.format(AsistenciaControladorDB.listar().get(i).getHora().getTime());
            }
        %>
        
        </table>
        <A HREF="Menu_Asistencia.jsp">Volver</A>
    </body>
</html>
