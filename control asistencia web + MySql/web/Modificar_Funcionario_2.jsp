<%-- 
    Document   : Modificar_Funcionario_2
    Created on : 22-06-2016, 1:16:27
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
            <form action="Modificar_Funcionario_3.jsp" method="POST">
                <% 
            String rut = request.getParameter("rut");
            
            SimpleDateFormat sdf= new SimpleDateFormat("yyyy/M/dd");
            //SimpleDateFormat sdf_horas=new SimpleDateFormat("HH:mm:ss");
            
            Funcionario x=FuncionariosControladorDB.buscar(rut);
            
            
                if(rut.equals(x.getRut()))
                {
        %>  
            
            <TR><TD>Rut:<TD><%=x.getRut()%>
            <TR><TD>Nombre:<TD><%=x.getNombre()%>
            <TR><TD>Fecha de nacimiento:<TD><%=sdf.format(x.getFechaNacimiento().getTime())%>
            <TR><TD>Cargo:<TD><%=x.getCargo() %>
            <TR><TD>Sueldo:<TD><%=x.getSueldo()%>
            
                      <%
                }
                else
                {
                    %><TR><TD>Rut no encontrado<TD><%
                }
            
            
            
            
            
                if(rut.equals(x.getRut()))
                {
                    %>
            
                    <TR><TD>===== Modifique campos =====<TD><input type="hidden" value="<%=x.getRut()%>" name="rut">
                    
                    <TR><TD>Nombre:<TD><input type="text" value="<%=x.getNombre()%>" name="nombre">
                    <TR><TD>Fecha de nacimiento: <TD><input type="date" name="fecha">
                    <TR><TD>Cargo:<TD><input type="text" value="<%=x.getCargo()%>" name="cargo">
                    <TR><TD>Sueldo:<TD><input type="text" value="<%=x.getSueldo()%>" name="sueldo">
                                                 <input type="hidden" value="<%=rut%>" name="rut">
                    <tr><td colspan="2" align="center"><input type="submit" name="modificar" value="Guardar cambios">        
                    
                      <%
                }
            
            %>
            
            
            </form>
        
        </table>
            <A HREF="Modificar_Funcionario.jsp">Volver</A>
    </body>
</html>

