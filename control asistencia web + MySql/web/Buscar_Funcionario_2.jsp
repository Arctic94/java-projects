<%-- 
    Document   : Buscar_Funcionario_2
    Created on : 22-06-2016, 0:59:15
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
            
            SimpleDateFormat sdf= new SimpleDateFormat("yyyy/MM/dd");
            //SimpleDateFormat sdf_horas=new SimpleDateFormat("HH:mm:ss");
            
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
            
            
                      <%
                }
                else
                {
                    %><TR><TD>Rut no encontrado<TD><%
                }
            
            %>
        </table>
        <br>
        <A HREF="Buscar_Funcionario.jsp">Volver</A>
    </body>
</html>
