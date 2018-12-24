/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Date;
import java.text.SimpleDateFormat;

public class Funcionario {
    
    private String rut;
    private String nombre;
    private Calendar fechaNacimiento;
    private String cargo;
    private double sueldo;
    
    public String getRut(){
        return rut;
    }
    public void setRut(String rut){
            this.rut = rut;
    }
    
    public String getNombre(){
        return nombre;
    }
    public void setNombre(String nombre){
            this.nombre = nombre;
    }
    
    public Calendar getFechaNacimiento(){
        return fechaNacimiento;
    }
    public void setFechaNacimiento(Calendar fechaNacimiento){
            this.fechaNacimiento = fechaNacimiento;
    }
    
    public String getCargo(){
        return cargo;
    }
    public void setCargo(String cargo){
            this.cargo = cargo;
    }
    
    public double getSueldo(){
        return sueldo;
    }
    public void setSueldo(double sueldo){
        this.sueldo = sueldo;
    }
    
    public Funcionario(String rut, String nombre, Calendar fechaNacimiento, String cargo, double sueldo){
        this.rut = rut;
        this.nombre = nombre;
        this.fechaNacimiento = fechaNacimiento;
        this.cargo = cargo;
        this.sueldo = sueldo;
        
        
    }
    public Funcionario(){}
}
