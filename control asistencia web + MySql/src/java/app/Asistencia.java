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
/**
 *
 * @author alumnossur
 */
public class Asistencia {
    private int cod_asistencia;
    private String rut;
    private Calendar fecha;
    private Calendar hora;
    private String tipoRegistro;
    
    public int getCodAsistencia(){
        return cod_asistencia;
    }
    public void setCodAsistencia(int cod_asistencia){
            this.cod_asistencia = cod_asistencia;
    }
    
    public String getRut(){
        return rut;
    }
    public void setRut(String rut){
            this.rut = rut;
    }
    
    public Calendar getFecha(){
        return fecha;
    }
    public void setFecha(Calendar fecha){
            this.fecha = fecha;
    }
    
    public Calendar getHora(){
        return hora;
    }
    public void setHora(Calendar hora){
            this.hora = hora;
    }
    
    public String getTipoRegistro(){
        return tipoRegistro;
    }
    public void setTipoRegistro(String tipoRegistro){
            this.tipoRegistro = tipoRegistro;
    }
    
    public Asistencia(int codAsistencia, String rut, Calendar fecha, Calendar hora, String tipoRegistro){
        this.cod_asistencia = codAsistencia;
        this.rut = rut;
        this.fecha = fecha;
        this.hora = hora;
        this.tipoRegistro = tipoRegistro;
        

    }
    public Asistencia(){}
    public Asistencia(String rut, Calendar fecha, Calendar hora, String tipoRegistro){
        
        this.rut = rut;
        this.fecha = fecha;
        this.hora = hora;
        this.tipoRegistro = tipoRegistro;
    }
    
}
