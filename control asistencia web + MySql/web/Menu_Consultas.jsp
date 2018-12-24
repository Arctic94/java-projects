<%-- 
    Document   : Menu_Consultas
    Created on : 14-06-2016, 9:49:41
    Author     : alumnossur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultas</title>
    </head>
    <body>
        <body>
        <form action="index.jsp" method="POST">
            <table align="center">
                <TR><TD><h1><b>Escoja una opción:</b></h1><BR>
                <TR><TD><BR>
                <TR><TD><A HREF="Consulta_1.jsp"> 1.	Registrar fecha, hora de entrada y salida del funcionario.</A>
                <TR><TD><br>                        
                <TR><TD><A HREF="Consulta_2.jsp">2.	Ver reporte de atrasos de un funcionario específico, indicando fechas y total de horas que adeuda.</A>
                <TR><TD><br>                
                <TR><TD><A HREF="Consulta_3.jsp">3.	Ver reporte de atrasos para una fecha específica. Debe mostrar fecha, rut, nombre, hora de llegada y otras de atraso. </A>
                <TR><TD><br>                
                <TR><TD><A HREF="Consulta_4.jsp">4.	Ver reporte de funcionario con mayor cantidad de horas de atraso.</A>
                <TR><TD><br>                
                <TR><TD><A HREF="HorasExtrasFuncionario.jsp">5.	Total de horas extras por funcionario específico. Debe mostrar fecha, hora de entrada, hora de salida, total trabajado, horas extras.  Al finalizar el listado debe mostrar el  total de horas extras.</A>
                <TR><TD><br>                
                <TR><TD><A HREF="Consulta_6.jsp">6.	Reporte general de horas extras para un mes específico. Debe mostrar fecha, hora de entrada, hora de salida, total trabajado, horas extras.  Al finalizar el listado debe mostrar el  total de horas extras.</A>
                <TR><TD><br>
                <TR><TD><br>
                <TR><TD><br>
                <TR><TD><br>
                <TR><TD><A HREF="index.jsp">Volver</A>
        </form>
    </body>
</html>
