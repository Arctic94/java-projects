<%-- 
    Document   : Agregar_Funcionario_2
    Created on : 22-06-2016, 0:34:45
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
            SimpleDateFormat sdf= new SimpleDateFormat("yyyy/MM/dd");
            //SimpleDateFormat sdf_horas=new SimpleDateFormat("HH:mm:ss");
           
            String rut = request.getParameter("rut");
            String nombre = request.getParameter("nombre");
            
            String fecha = request.getParameter("fecha");
            fecha=fecha.replace('-', '/');
            Date date_fecha=sdf.parse(fecha);
            Calendar cal_fecha=Calendar.getInstance();
            cal_fecha.setTime(date_fecha);
            
            
            
            String cargo = request.getParameter("cargo");
            //Date date_hora=sdf_horas.parse(hora);
            //Calendar cal_hora=Calendar.getInstance();
            //cal_hora.setTime(date_hora);
            
            String sueldo = request.getParameter("sueldo");
            double sueld = Double.parseDouble(sueldo);
            
            
            if(rut.length()<=10 && (nombre.length()>=5 && nombre.length()<=30) && cargo.length()>0 && (sueld >= 400000 && sueld <= 2000000)){
            Funcionario x=new Funcionario(rut,nombre,cal_fecha,cargo,sueld);
            
            
            %>  
            
            
            
                      <%
            
                if(FuncionariosControladorDB.agregar(x)!=0)
                {
        %>  
            
            <TR><TD>Rut:<TD><%=x.getRut()%>
            <TR><TD>Nombre:<TD><%=x.getNombre()%>
            <TR><TD>Fecha:<TD><%=sdf.format(x.getFechaNacimiento().getTime())%>
            <TR><TD>Cargo:<TD><%=x.getCargo() %>
            <TR><TD>Sueldo:<TD><%=x.getSueldo()%>
            
                      <%
                }
                else
                {
                    %><TR><TD>Funcionario no agregado<TD><%
                }
                }
else
{
    %><TR><TD>Uno de los campos no se ingresó correctamente<TD><%
}
            
            %>
        </table>
        <br>
        <A HREF="Agregar_Funcionario.jsp">Volver</A>
    </body>
</html>
