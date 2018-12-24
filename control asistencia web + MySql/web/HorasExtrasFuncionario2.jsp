<%-- 
    Document   : HorasExtrasFuncionario2
    Created on : 21-06-2016, 3:29:02
    Author     : Arctic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="app.FuncionariosControladorDB"%>
<%@page import="app.AsistenciaControladorDB"%>
<%@page import="app.Funcionario"%>
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
            
        
        <%
            String rut = request.getParameter("rut");
            
            SimpleDateFormat sdf= new SimpleDateFormat("yyyy/MM/dd");
            SimpleDateFormat sdf_horas=new SimpleDateFormat("HH:mm:ss");
            SimpleDateFormat sdf_horas2=new SimpleDateFormat("dd HH:mm:ss");
            SimpleDateFormat extras = new SimpleDateFormat("HH:mm:ss");
            
            Calendar hora1=new GregorianCalendar(0,0,0,0,0,0);
            Calendar hora2=new GregorianCalendar(0,0,0,19,0,0);
            Calendar hora3=new GregorianCalendar(0,0,0,9,0,0);
            long diff=0;
            Funcionario x=FuncionariosControladorDB.buscar(rut);
            
            String sueldo;
            double sueld;
            
                if(rut.equals(x.getRut()))
                {
                    
                    sueld = x.getSueldo();
                    sueldo = Double.toString(sueld);
                %>  
                
                <TR><TD>Rut:<TD><%=x.getRut()%>
                <TR><TD>Nombre:<TD><%=x.getNombre()%>
                <TR><TD>Fecha de nacimiento:<TD><%=sdf.format(x.getFechaNacimiento().getTime())%>
                <TR><TD>Cargo:<TD><%=x.getCargo()%>
                <TR><TD>Sueldo:<TD><%=sueldo%>  
                <tr><br>
                <TR><TD>===== Registro asistencia =====<br>
                <TR><TD>Id asistencia<TD>Rut<TD>Fecha<TD>Hora<TD>Tipo registro</td></tr>
            
            
                    <%
                    
                    for(Asistencia x1:AsistenciaControladorDB.listar())
                    {
                        if(x1.getRut().equals(rut))
                        {
                            
                            %>                        
                            <TR><TD><%=x1.getCodAsistencia()%>
                            <TD><%=x1.getRut()%>
                            <TD><%=sdf.format(x1.getFecha().getTime())%>
                            <TD><%=sdf_horas.format(x1.getHora().getTime())%>
                            <TD><%=x1.getTipoRegistro()%>
                            <%
                            
                            hora1.add(Calendar.HOUR_OF_DAY, x1.getHora().get(Calendar.HOUR_OF_DAY));
                            hora1.add(Calendar.MINUTE, x1.getHora().get(Calendar.MINUTE));
                            hora1.add(Calendar.SECOND, x1.getHora().get(Calendar.SECOND));
                            
                            if(x1.getTipoRegistro().equals("Salida"))
                            {
                                if((hora2.getTimeInMillis()-x1.getHora().getTimeInMillis())<0)
                                {
                                    diff=x1.getHora().getTimeInMillis()-hora2.getTimeInMillis();
                                    
                                    extras.format(new Date(diff));
                                    
                                }
                            }
                            if(x1.getTipoRegistro().equals("Entrada"))
                            {
                                if((hora3.getTimeInMillis()-x1.getHora().getTimeInMillis())<0)
                                {
                                    diff=x1.getHora().getTimeInMillis()-hora3.getTimeInMillis();
                                    
                                    extras.format(new Date(diff));
                                    
                                }
                            }
                            
                            
                        
                        }
                
                    
                
                    }
                            %><tr><td>Horas trabajadas: <%=sdf_horas2.format(hora1.getTime()) %><br><%
                            %><tr><td>Horas extras: <%=extras.format(new Date(diff)) %><br><%
                      
                      
                      
                }
                else
                {
                    %><TR><TD>Rut no encontrado<TD><%
                }
            
            %>
            </table>
            <A HREF="Menu_Consultas.jsp">Volver</A>
    </body>
</html>
