<%-- 
    Document   : modificar2
    Created on : 11-07-2016, 23:19:06
    Author     : Arctic
--%>

<%@page import="java.sql.Date"%>
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
            
            prod=em.find(Productos.class,Integer.parseInt(request.getParameter("id")) );
            
            em.getTransaction().begin();
            
            prod.setNombresProducto(request.getParameter("nombre"));
            prod.setDescripcion(request.getParameter("descripcion"));
            prod.setPrecio(Integer.parseInt(request.getParameter("precio")));
            prod.setStock(Integer.parseInt(request.getParameter("stock")));
            prod.setStockMaximo(Integer.parseInt(request.getParameter("stock_max")));
            prod.setStockMinimo(Integer.parseInt(request.getParameter("stock_min")));
            prod.setFotoProducto(request.getParameter("foto"));
            prod.setUnidadDeMedida(request.getParameter("u_medida"));
            prod.setFechaElavoracion(Date.valueOf(request.getParameter("fecha_e")));
            prod.setFechaVencimiento(Date.valueOf(request.getParameter("fecha_v")));
            
            //prod.setCodigo(Integer.parseInt(request.getParameter("id")));
            
            
            
            
            
            
                       
            //em.merge(t)
                      
            em.getTransaction().commit();
            em.close();
           // prod.setNombresProducto("asdf");
           
            //response.sendRedirect("index.html");
            
            
        %>
        