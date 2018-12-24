<%-- 
    Document   : pruebasCalendar
    Created on : 19-06-2016, 20:58:32
    Author     : Arctic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <h1>Hello World!</h1>
        
        <%
            
            SimpleDateFormat sdf= new SimpleDateFormat("yyyy/M/dd");
            SimpleDateFormat sdf_horas=new SimpleDateFormat("HH:mm:ss");
            Calendar c1= GregorianCalendar.getInstance();
           
            c1.set(2016, 06, 10, 22, 15, 50);
           
            Date fecha=new Date("12/11/2012");
            
            
            Calendar fecha1=new GregorianCalendar(2004,05,28);
            Calendar fecha2=new GregorianCalendar(2004,05,30);
            
            Calendar hora1=new GregorianCalendar(0,0,0,7,56,34);
            Calendar hora2=new GregorianCalendar(0,0,0,18,5,23);
            Date hora1aux=hora1.getTime();
            Date hora2aux=hora2.getTime();
            long diff=hora2aux.getTime()-hora1aux.getTime();
           
        %>
        <%=diff/(24*60*60) %><br>
        <%=sdf_horas.format(hora1.getTime()) %><br>
        <%=sdf_horas.format(hora2.getTime()) %><br>
        <%=sdf.format(fecha) %><br>
        <%=sdf.format(fecha1.getTime()) %><br>
        <%=fecha1.get(Calendar.DAY_OF_MONTH) %><br>
        
        
    </body>
</html>
