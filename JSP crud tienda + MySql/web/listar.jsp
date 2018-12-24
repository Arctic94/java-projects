<%-- 
    Document   : listar
    Created on : 11-07-2016, 22:43:01
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
        
         <%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core"%>
        <%@ taglib prefix="sql"   uri="http://java.sun.com/jstl/sql" %>

        
         <sql:setDataSource
                   driver="com.mysql.jdbc.Driver"
                      url="jdbc:mysql://localhost:3306/script_empresa"
                     user="root"
                    password="sql"/>
        
         
         
         
         
        <sql:query var="productos">
                    SELECT * FROM productos
       </sql:query>
                    <table border="1">
                     <TR><TD>ID<TD>Nombre<TD>Descripcion<TD>unidad de medida<TD>stock<TD>precio<TD>stock minimo<TD>stock maximo<TD>fecha elaboracion<TD>fecha vencimiento<TD>foto  
                    
            
            <c:forEach var="row" items="${productos.rows}">
                
                <TR><TD>${row.codigo}
                     <TD>${row.nombresProducto}   
                <TD>${row.descripcion}
                    
                        <TD>${row.unidadDeMedida}
                            <TD>${row.stock}
                                <TD>${row.precio}
                                    <TD>${row.stockMinimo}
                                        <TD>${row.stockMaximo}
                                            <TD>${row.fechaElavoracion}
                                                <TD>${row.fechaVencimiento}
                                                    <TD><IMG SRC='fotoProductos/${row.fotoProducto}' height="150" >
                                        

  
            </c:forEach>
           
                        
                        </table>
        <TR><TD><A HREF="index.html">Volver</A>
    </body>
</html>
