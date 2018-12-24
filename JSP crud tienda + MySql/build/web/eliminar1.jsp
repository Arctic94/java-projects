<%-- 
    Document   : eliminar1
    Created on : 11-07-2016, 22:20:01
    Author     : Arctic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
            
            
            em.remove(prod);
            
            
            em.getTransaction().commit();
            em.close();
            
            response.sendRedirect("index.html");
            
            
            
        %>
        
    </body>
</html>
