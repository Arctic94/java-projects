<%-- 
    Document   : agregar1
    Created on : 11-07-2016, 21:11:31
    Author     : Arctic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="agregar.jsp" method="POST">
            <table>
                
                <TR><TD>nombre: <TD><input type="text" name="nombre">
                <TR><TD>ndescripcion: <TD><input type="text" name="descripcion">
                <TR><TD>unidad de medida: <TD><input type="text" name="u_medida"> 
                <TR><TD>stock: <TD><input type="text" name="stock">
                <TR><TD>precio: <TD><input type="text" name="precio">
                <TR><TD>stock minimo: <TD><input type="text" name="stock_min">
                <TR><TD>stock maximo: <TD><input type="text" name="stock_max">
                <TR><TD>foto: <TD><input type="file" name="foto" accept="image/*">
                
                <TR><TD>Fecha elaboracion: <TD><input type="date" name="fecha_e">
                <TR><TD>fecha vencimiento: <TD><input type="date" name="fecha_v">
                
                <TR><TD><input type="submit" name="opcion" value="Aceptar">
                <TR><TD><A HREF="index.html">Volver</A>
            </table>
        </form>
        
    </body>
</html>
