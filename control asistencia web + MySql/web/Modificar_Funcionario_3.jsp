<%-- 
    Document   : Modificar_Funcionario_3
    Created on : 22-06-2016, 1:23:25
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
            
            String sueldo=request.getParameter("sueldo");
            double sueld = Double.parseDouble(sueldo);
            
            if(rut.length()<=10 && (nombre.length()>=5 && nombre.length()<=30) && cargo.length()>0 && (sueld >= 400000 && sueld <= 2000000)){
            Funcionario x = new Funcionario(rut,nombre,cal_fecha,cargo,sueld);
            
           
            
            if(FuncionariosControladorDB.modificar(x)!=0)
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
        <br><A HREF="Modificar_Funcionario.jsp">Volver</A>
    </body>
</html>