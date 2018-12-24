<%-- 
    Document   : Listar_Funcionario
    Created on : 22-06-2016, 1:35:14
    Author     : Fabián
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="app.FuncionariosControladorDB"%>
<%@page import="app.Funcionario"%>
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
        <table border="1">
            <TR><TD>Rut<TD>Nombre<TD>Fecha nacimiento<TD>Cargo<TD>Sueldo
            
        
        <%
            SimpleDateFormat sdf= new SimpleDateFormat("yyyy/M/dd");
            //SimpleDateFormat sdf_horas=new SimpleDateFormat("HH:mm:ss");
            
            String fecha="";
          
            
            for(Funcionario x:FuncionariosControladorDB.listar())
            {
                
                %>
                
                <%
                sdf=new SimpleDateFormat("yyyy/M/dd");
                //sdf_horas=new SimpleDateFormat("HH:mm:ss");
                
                fecha=sdf.format(x.getFechaNacimiento().getTime());
                //hora=sdf_horas.format(x.getHora().getTime());
                
            }
            Funcionario f=FuncionariosControladorDB.listar().get(0);
            sdf=new SimpleDateFormat("yyyy/M/dd");
            Funcionario f1=FuncionariosControladorDB.buscar(f.getRut());
           fecha=sdf.format(f1.getFechaNacimiento().getTime());
           
           
               
            for(int i=0;i<FuncionariosControladorDB.listar().size();i++)
            {
               // sdf=new SimpleDateFormat("yyyy/MM/dd");
                //fecha=sdf.format(FuncionariosControladorDB.listar().get(i).getFechaNacimiento().getTime());
                %>
                <TR><TD><%=FuncionariosControladorDB.listar().get(i).getRut()%>
                <TD><%=FuncionariosControladorDB.listar().get(i).getNombre()%>
                    
                <TD><%=fecha%>
                    
                <TD><%=FuncionariosControladorDB.listar().get(i).getCargo()%>
                <TD><%=FuncionariosControladorDB.listar().get(i).getSueldo()%>
                <%
                
                sdf=new SimpleDateFormat("yyyy/MM/dd");
                fecha=sdf.format(FuncionariosControladorDB.listar().get(i).getFechaNacimiento().getTime());
                
            }
                
                
        %>
        
        </table>
        <A HREF="Menu_Funcionario.jsp">Volver</A>
    </body>
</html>
