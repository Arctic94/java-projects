<%-- 
    Document   : modificar1
    Created on : 11-07-2016, 23:17:28
    Author     : Arctic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="modelo.Productos"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <% 
            EntityManagerFactory factory = Persistence.createEntityManagerFactory("PruebaFinalPU", System.getProperties());
            EntityManager em = factory.createEntityManager();
            
            Productos prod=new Productos();
            
            
            //prod.setCodigo(Integer.parseInt(request.getParameter("id")));
            
            prod=em.find(Productos.class,Integer.parseInt(request.getParameter("id")) );
            
            
            
            em.getTransaction().begin();
                       
            //em.remove(prod);
                      
            em.getTransaction().commit();
            em.close();
           // prod.setNombresProducto("asdf");
           
            //response.sendRedirect("index.html");
            if(prod!=null)
            {
                %>
                <form action="modificar2.jsp" method="POST">
                     <table>
                <TR><TD> <TD><input type="hidden" name="id" value="<%=prod.getCodigo() %>">
                <TR><TD>nombre: <TD><input type="text" name="nombre" value="<%=prod.getNombresProducto()%>">
                <TR><TD>ndescripcion: <TD><input type="text" name="descripcion" value="<%=prod.getDescripcion() %>">
                <TR><TD>unidad de medida: <TD><input type="text" name="u_medida" value="<%=prod.getUnidadDeMedida() %>"> 
                <TR><TD>stock: <TD><input type="text" name="stock" value="<%=prod.getStock() %>">
                <TR><TD>precio: <TD><input type="text" name="precio" value="<%=prod.getPrecio() %>">
                <TR><TD>stock minimo: <TD><input type="text" name="stock_min" value="<%=prod.getStockMinimo() %>">
                <TR><TD>stock maximo: <TD><input type="text" name="stock_max" value="<%=prod.getStockMaximo() %>">
                <TR><TD>foto: <TD><input type="text" name="foto" value="<%=prod.getFotoProducto() %>">
                
                <TR><TD>Fecha elaboracion: <TD><input size="5" type="date" name="fecha_e" value="<%=prod.getFechaElavoracion().toLocaleString() %>">
                <TR><TD>fecha vencimiento: <TD><input size="5" type="date" name="fecha_v" value="<%=prod.getFechaVencimiento().toLocaleString() %>">
                <TR><TD><input type="submit" name="opcion" value="Aceptar">
                <TR><TD><A HREF="index.html">Volver</A>        
        </table>
                </form>
                
       <%
                
            }
            else{response.sendRedirect("modificar.jsp");}
            
        %>
        