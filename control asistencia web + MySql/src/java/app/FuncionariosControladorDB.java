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
import app.Funcionario;

/**
 *
 * @author alumnossur
 */
public class FuncionariosControladorDB {
    
    private static ArrayList<Funcionario> arrayFuncionario = new ArrayList<Funcionario>(); 
    
    public static ArrayList<Funcionario> listar(){
        try {
           
                      Class.forName("com.mysql.jdbc.Driver").newInstance();
 
                        Connection connection = DriverManager.getConnection
                                               ("jdbc:mysql://localhost:3306/hp","root","sql");
        
                        Statement statement = connection.createStatement();
                   
                        String consultaSQL = "SELECT * from funcionario";
            
                        ResultSet results = statement.executeQuery(consultaSQL);
                        
                            String campo0;
                            String campo1;
                            Calendar campo2=Calendar.getInstance();
                            String campo3;
                            String campo4;
                            
                            SimpleDateFormat sdf = new SimpleDateFormat("dd/M/yyyy");
                            //SimpleDateFormat sdf2 = new SimpleDateFormat("HH:mm:ss");
                            
                            java.sql.Date sqldate= java.sql.Date.valueOf(LocalDate.now());
                                //java.sql.Time sqltime= results.getTime("HORA");
                                
                                
                                
                                campo2.setTimeInMillis(sqldate.getTime());
               
                                
                                sdf.format(campo2.getTime());
       
                                
                                campo2=sdf.getCalendar();
                                
                            
                            arrayFuncionario.removeAll(arrayFuncionario);
                            
                            if(!results.next())
                            {}
                            else{
                                
                                do
                                {
                                
                                sdf = new SimpleDateFormat("dd/MM/yyyy");
                                
                                //sdf2 = new SimpleDateFormat("HH:mm:ss");
                                
                                campo0 = results.getString("RUT");
                                
                                
                                campo1 = results.getString("NOMBRE");
                                //campo2 = results.getDate("fecha");
                                //campo2.setTime(results.getDate("FECHA"));
                                
                                sqldate= results.getDate("FECHANACIMIENTO");
                                //java.sql.Time sqltime= results.getTime("HORA");
                                
                                
                                
                                campo2.setTimeInMillis(sqldate.getTime());
               
                                
                                sdf.format(campo2.getTime());
       
                                
                                campo2=sdf.getCalendar();

                                
                                
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
                                campo3 = results.getString("CARGO");
                                campo4 = results.getString("SUELDO");
                                double sueldo = Double.parseDouble(campo4);
                                
                                
                                
                                arrayFuncionario.add(new Funcionario(campo0,campo1,campo2,campo3,sueldo));
                                
                             }
                                
                                while (results.next());
                                    
                            }  
                                                                 
                            
          
            // Fin de conexi�n
                            
                        connection.close();
                
        } //catching excepcion
        catch(java.lang.Exception ex){
            System.out.println("Error: " + ex);
        }   
        
        return arrayFuncionario;
    }
    
    public static int agregar(Funcionario funcionario)
    {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/hp","root","sql");
        
            Statement statement = connection.createStatement();
            
            String  agregarSQL = "";
            
            SimpleDateFormat sdf= new SimpleDateFormat("yyyy/MM/dd");
            String fecha_fix=sdf.format(funcionario.getFechaNacimiento().getTime());
            fecha_fix=fecha_fix.replace('/', '-');
            
            double sueld = funcionario.getSueldo();
            String sueldo = Double.toString(sueld);

            agregarSQL = "insert into funcionario (RUT, NOMBRE, FECHANACIMIENTO, CARGO, SUELDO) values ('"+funcionario.getRut()+"','"+funcionario.getNombre()+"','"+fecha_fix+"','"+funcionario.getCargo()+"','"+sueldo+"')";
            
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
    
    public static int eliminar(String rut)
    {
        try {

            Class.forName("com.mysql.jdbc.Driver").newInstance();
            
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/HP","root","sql");
        
            Statement statement = connection.createStatement();
            
            String  query="DELETE FROM funcionario WHERE rut='"+rut+"'";
            
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
    
    public static int modificar(Funcionario funcionario)
    {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/hp","root","sql");
        
            Statement statement = connection.createStatement();
            
            String  agregarSQL = "";
            
            SimpleDateFormat sdf= new SimpleDateFormat("yyyy/MM/dd");
            String fecha_fix=sdf.format(funcionario.getFechaNacimiento().getTime());
            fecha_fix=fecha_fix.replace('/', '-');
            
            double sueld = funcionario.getSueldo();
            String sueldo = Double.toString(sueld);

            agregarSQL="UPDATE funcionario SET NOMBRE='"+funcionario.getNombre()+"', FECHANACIMIENTO='"+fecha_fix+"', CARGO='"+funcionario.getCargo()+"', SUELDO='"+sueldo+"'";
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
    
    public static Funcionario buscar(String rut){
        Funcionario obj =null;
        try {
                      Class.forName("com.mysql.jdbc.Driver").newInstance();

                        Connection connection = DriverManager.getConnection
                                               ("jdbc:mysql://localhost:3306/HP","root","sql");

                        Statement statement = connection.createStatement();

                        String query = "SELECT * from FUNCIONARIO where RUT='"+rut+"';" ;


                         ResultSet results = statement.executeQuery(query);

                            String campo1;
                            String campo2;
                            Calendar campo6=Calendar.getInstance();
                            String campo3;
                            String campo4;
                            double campo5;
                            
                            SimpleDateFormat sdf = new SimpleDateFormat("dd/M/yyyy");
                            
                            while (results.next())
                            {
                                campo1 = results.getString("RUT");
                                campo2 = results.getString("NOMBRE");
                                java.sql.Date sqldate= results.getDate("FECHANACIMIENTO");
                                
                                campo6.setTimeInMillis(sqldate.getTime());
                                
                                sdf.format(campo6.getTime());
                                
                                campo6=sdf.getCalendar();
                                
                                campo4 = results.getString("CARGO");
                                
                                campo5 = results.getDouble("SUELDO");
                                
                                
                                if(campo1.equals(String.valueOf(rut) )){
                                     obj=new Funcionario(campo1,campo2,campo6,campo4,campo5);
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
}
