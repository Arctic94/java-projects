/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app;
import java.sql.*;
import java.util.*;
import app.Asistencia;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Date;

/**
 *
 * @author alumnossur
 */
public class AsistenciaControladorDB {
    
    private static ArrayList<Asistencia> arrayAsistencia = new ArrayList<Asistencia>(); 
    
    public static ArrayList<Asistencia> listar(){
        try {
           
                      Class.forName("com.mysql.jdbc.Driver").newInstance();
 
                        Connection connection = DriverManager.getConnection
                                               ("jdbc:mysql://localhost:3306/hp","root","sql");
        
                        Statement statement = connection.createStatement();
                   
                        String consultaSQL = "SELECT * from asistencia";
            
                        ResultSet results = statement.executeQuery(consultaSQL);
                        
                            String campo0;
                            String campo1;
                            Calendar campo2=Calendar.getInstance();
                            Calendar campo3=Calendar.getInstance();
                            String campo4;
                            
                            SimpleDateFormat sdf=new SimpleDateFormat("dd/M/yyyy");
                            SimpleDateFormat sdf2=new SimpleDateFormat("HH:mm:ss");
                            
                                java.sql.Date sqldate= java.sql.Date.valueOf(LocalDate.now());
                                java.sql.Time sqltime= java.sql.Time.valueOf(LocalTime.now());
                                
                                
                                
                                campo2.setTimeInMillis(sqldate.getTime());
                                campo3.setTimeInMillis(sqltime.getTime());
                                
                                sdf.format(campo2.getTime());
                                sdf2.format(campo3.getTime());
                                
                                campo2=sdf.getCalendar();
                                campo3=sdf2.getCalendar();
                            
                            arrayAsistencia.removeAll(arrayAsistencia);
                            
                            if(!results.next())
                            {}
                            else{
                                
                                do
                                {
                                
                                   sdf = new SimpleDateFormat("dd/MM/yyyy");
                                   sdf2 = new SimpleDateFormat("HH:mm:ss");
                                
                                
                                campo0 = results.getString("ID_ASISTENCIA");
                                
                                
                                campo1 = results.getString("RUT");
                                //campo2 = results.getDate("fecha");
                                //campo2.setTime(results.getDate("FECHA"));
                                
                                 sqldate= results.getDate("FECHA");
                                 sqltime= results.getTime("HORA");
                                
                                
                                
                                campo2.setTimeInMillis(sqldate.getTime());
                                campo3.setTimeInMillis(sqltime.getTime());
                                
                                sdf.format(campo2.getTime());
                                sdf2.format(campo3.getTime());
                                
                                campo2=sdf.getCalendar();
                                campo3=sdf2.getCalendar();
                                
                                
                                
                                //campo3 = results.getDate("hora");
                                //campo3.setTime(results.getTime("HORA"));
                                
                                /*campo2 = results.getString("fecha");
                                SimpleDateFormat sdf = new SimpleDateFormat("dd/M/yyyy");
                                sdf.parse(campo2);
                                Calendar fechita = sdf.getCalendar();
                                
                                campo3 = results.getString("hora");
                                SimpleDateFormat sdf2 = new SimpleDateFormat("HH:mm:ss");
                                sdf2.parse(campo3);
                                Calendar horita = sdf2.getCalendar();*/
                                
                                campo4 = results.getString("TIPOREGISTRO");
                                
                                
                                
                                arrayAsistencia.add(new Asistencia(Integer.parseInt(campo0),campo1,campo2,campo3,campo4));
                                 
                                 if(campo0.equals("1"))
                                 {System.out.println(campo2.getTime());}
                                    
                                }
                                
                                while (results.next());
                                    
                            }
                            //while (results.next())
                            //{
                                
                                
                                
                               
                                                                 
                           // }
          
            // Fin de conexi�n
                            
                        connection.close();
                
        } //catching excepcion
        catch(java.lang.Exception ex){
            System.out.println("Error: " + ex);
        }   
        
        return arrayAsistencia;
    }
    
    public static int agregar(Asistencia asistencia)
    {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/hp","root","sql");
        
            Statement statement = connection.createStatement();
            
            String  agregarSQL = "INSERT INTO asistencia (RUT, FECHA, HORA, TIPOREGISTRO) VALUES('"+asistencia.getRut() +"','"+asistencia.getFecha()+"','"+asistencia.getHora()+"','"+asistencia.getTipoRegistro()+")";
            
            SimpleDateFormat sdf= new SimpleDateFormat("yyyy/MM/dd");
            String fecha_fix=sdf.format(asistencia.getFecha().getTime());
            fecha_fix=fecha_fix.replace('/', '-');
            
            SimpleDateFormat sdf2 = new SimpleDateFormat("HH:mm:ss");
            String hora_fix=sdf2.format(asistencia.getHora().getTime());
            
            agregarSQL="INSERT INTO asistencia (RUT,FECHA,HORA,TIPOREGISTRO) VALUES('"+asistencia.getRut()+"', '"+fecha_fix+"', '"+hora_fix+"', '"+asistencia.getTipoRegistro()+"')";
            
            int results = statement.executeUpdate(agregarSQL);
            System.out.println(results);

             connection.close();
             return results;   
        } //catching excepcion
     catch(java.lang.Exception ex){
            System.out.println("Error: " + ex);
            return 0;
        }   
    }
    
    public static int eliminar(int id_asistencia)
    {
        try {

            Class.forName("com.mysql.jdbc.Driver").newInstance();
            
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/HP","root","sql");
        
            Statement statement = connection.createStatement();
            
            String  query="DELETE FROM asistencia WHERE id_asistencia='"+id_asistencia+"'";
            
            int results = statement.executeUpdate(query);
            
             connection.close();
              System.out.println("valor---> " + results);
             return results;
                
        } //catching excepcion
        catch(java.lang.Exception ex){
            System.out.println("Error: " + ex);
            return 2;
        }   
    }
    
    public static int modificar(Asistencia asistencia)
    {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/hp","root","sql");
        
            Statement statement = connection.createStatement();
            
            String  agregarSQL = "";

            SimpleDateFormat sdf= new SimpleDateFormat("yyyy/MM/dd");
            String fecha_fix=sdf.format(asistencia.getFecha().getTime());
            fecha_fix=fecha_fix.replace('/', '-');
            
            SimpleDateFormat sdf2 = new SimpleDateFormat("HH:mm:ss");
            String hora_fix=sdf2.format(asistencia.getHora().getTime());
            
            agregarSQL="UPDATE ASISTENCIA SET RUT='"+asistencia.getRut()+"', FECHA='"+fecha_fix+"', HORA='"+hora_fix+"', TIPOREGISTRO='"+asistencia.getTipoRegistro()+"' WHERE ID_ASISTENCIA='"+asistencia.getCodAsistencia()+"'";
            
            int results = statement.executeUpdate(agregarSQL);
            System.out.println(results);

             connection.close();
             return results;   
        } //catching excepcion
     catch(java.lang.Exception ex){
            System.out.println("Error: " + ex);
            return 0;
        }   
    }
    
    public static Asistencia buscar(int id_asistencia){
        Asistencia obj = new Asistencia();
        try {
                      Class.forName("com.mysql.jdbc.Driver").newInstance();

                        Connection connection = DriverManager.getConnection
                                               ("jdbc:mysql://localhost:3306/hp","root","sql");

                        Statement statement = connection.createStatement();

                        String query = "SELECT * from asistencia where ID_ASISTENCIA='"+id_asistencia+"';" ;


                         ResultSet results = statement.executeQuery(query);
                            
                            String campo0;
                            String campo1;
                            Calendar campo2=Calendar.getInstance();
                            Calendar campo3=Calendar.getInstance();
                            String campo4;
                            
                            SimpleDateFormat sdf = new SimpleDateFormat("dd/M/yyyy");
                            SimpleDateFormat sdf2 = new SimpleDateFormat("HH:mm:ss");
                            
                            while (results.next())
                            {
                                campo0 = results.getString("ID_ASISTENCIA");
                                
                                
                                campo1 = results.getString("RUT");
                                //campo2 = results.getDate("fecha");
                                //campo2.setTime(results.getDate("FECHA"));
                                
                                java.sql.Date sqldate= results.getDate("FECHA");
                                java.sql.Time sqltime= results.getTime("HORA");
                                
                                
                                
                                campo2.setTimeInMillis(sqldate.getTime());
                                campo3.setTimeInMillis(sqltime.getTime());
                                
                                sdf.format(campo2.getTime());
                                sdf2.format(campo3.getTime());
                                
                                campo2=sdf.getCalendar();
                                campo3=sdf2.getCalendar();
                                
                                
                                //campo3 = results.getDate("hora");
                                //campo3.setTime(results.getTime("HORA"));
                                
                                /*campo2 = results.getString("fecha");
                                SimpleDateFormat sdf = new SimpleDateFormat("dd/M/yyyy");
                                sdf.parse(campo2);
                                Calendar fechita = sdf.getCalendar();
                                
                                campo3 = results.getString("hora");
                                SimpleDateFormat sdf2 = new SimpleDateFormat("HH:mm:ss");
                                sdf2.parse(campo3);
                                Calendar horita = sdf2.getCalendar();*/
                                
                                campo4 = results.getString("TIPOREGISTRO");
                                
                                if(campo0.equals(String.valueOf(id_asistencia) )){
                                     obj=new Asistencia(Integer.parseInt(campo0),campo1,campo2,campo3,campo4);
                                     
                                     break;
                                }
                                
                                
                            }
                  connection.close();
         }
         catch(java.lang.Exception ex){
            System.out.println("Error: " + ex);
         }
         return obj;
   }
    
   private static ArrayList<Asistencia> mostrarDatos()
    {
        try {
           
                      Class.forName("com.mysql.jdbc.Driver").newInstance();
 
                        Connection connection = DriverManager.getConnection
                                               ("jdbc:mysql://localhost:3306/chile","root","sql");
        
                        Statement statement = connection.createStatement();
                   
                        String consultaSQL = "SELECT * from asistencia";
            
                         ResultSet results = statement.executeQuery(consultaSQL);
                         
                            int campo0 = results.getInt("id_asistencia");
                            
            
                            String campo1;
                            
                            String campo2 = results.getString("fecha");
                                SimpleDateFormat sdf = new SimpleDateFormat("dd/M/yyyy");
                                sdf.parse(campo2);
                                Calendar fechita = sdf.getCalendar();
                                
                            String campo3 = results.getString("hora");
                                SimpleDateFormat sdf2 = new SimpleDateFormat("HH:mm:ss");
                                sdf2.parse(campo3);
                                Calendar horita = sdf2.getCalendar();
                            String campo4;

                            arrayAsistencia.removeAll(arrayAsistencia);
                            while (results.next())
                            {
                                campo1 = results.getString("RUT");
                                campo2 = results.getString("FECHA");
                                campo3 = results.getString("HORA");
                                campo4 = results.getString("TIPOREGISTRO");
                                
                                //System.out.println(campo1 +"   "+campo2 +"\n");
                                arrayAsistencia.add(new Asistencia(campo0,campo1,fechita,horita,campo4));
                            }
          
            // Fin de conexi�n
                            
                        connection.close();
                
        } //catching excepcion
        catch(java.lang.Exception ex){
            System.out.println("Error: " + ex);
        }   
        return arrayAsistencia;  
    }
   
}    


