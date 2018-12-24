package conductor;
import javax.swing.JOptionPane;


public class Conductor {

    private String rut;
    private String nombre;
    private String sexo;
    private String es_civil;
    private String tipo_m;
    private String edad;
    
    ///////////////////////////////////////////////////////
    
    public static void hombre_soltero_dp(Conductor lista[]){
        
        int cont=0;
        
        for (int i = 0; i < lista.length; i++) {
            
            if(lista[i].sexo.equals("0") && lista[i].es_civil.equals("1") &&
                    lista[i].tipo_m.equals("1")){
                
                cont++;
                
            }
            
        }
        
        JOptionPane.showMessageDialog(null, "hombres solteros disco.p: "+ cont);
  
    }
    
    ///////////////////////////////////////////////
    
    public static void muj_multa_30k(Conductor lista[]){
        
        int cont=0;
        
        for (int i = 0; i < lista.length; i++) {
            
            if(lista[i].sexo.equals("1") && (lista[i].tipo_m.equals("2")) || 
                    lista[i].tipo_m.equals("3") ){
                
                cont++;
                
            }
            
        }
        
        JOptionPane.showMessageDialog(null, "mujeres multa sobre 30k: "+ cont);
        
    }
    
    //////////////////////////////////////////////////////////
    
    public static void muj_solt_30a(Conductor lista[]){
        
        int cont=0;
        
        for (int i = 0; i < lista.length; i++) {
            
            if(lista[i].sexo.equals("1") && lista[i].es_civil.equals("1") && 
                    (lista[i].edad.compareTo("30")<=0) &&
                    lista[i].tipo_m.equals("0") || 
                    lista[i].tipo_m.equals("1") || 
                    lista[i].tipo_m.equals("2") || 
                    lista[i].tipo_m.equals("3")) {
                
                cont++;
                
            }
            
        }
        
        JOptionPane.showMessageDialog(null, "cant mujeres solteras +30 y multa: "+ cont);
        
    }
    
    /////////////////////////////////////////////
    
    public static void monto_total(Conductor lista[], int valores[]){
        
        int suma_h=0;
        int suma_m=0;
        int aux;
        
        for (int i = 0; i <lista.length; i++) {
            
            if(lista[i].sexo.equals(0)){
                
                aux=Integer.parseInt(lista[i].tipo_m);
                suma_h+=valores[aux];
                
            }else{
                
                aux=Integer.parseInt(lista[i].tipo_m);
                suma_m+=valores[aux];
                
            }
 
        }
           
        JOptionPane.showMessageDialog(null,"total hombres: "+ suma_h);
        JOptionPane.showMessageDialog(null, "total mujeres: "+ suma_m);
  
    }
    
    /////////////////////////////////////////////////////////////
    
    public static void multas_luz_roja(Conductor lista[]){
        
        int cont=0;
        
        for (int i = 0; i < lista.length; i++) {
            
            if(lista[i].tipo_m.equals("3")){
                
                cont++;
                
            }
            
        }
        
        JOptionPane.showMessageDialog(null, "total multas luz roja"+ cont);
        
    }
    
    public static boolean val_rut(String rut){
        
      char numchar ; int ind,numero,suma=0,factor=2, resto,DVc=0,DVi=0;
      int largo=rut.length();
      for(ind=largo-3;ind>=0;ind--){
          
        numchar = rut.charAt(ind);
        numero=conver_int(numchar,1);
        suma=suma+(numero*factor);
        factor++;
        
        if(factor==8){
            factor=2;
          }
      }
      
      resto=suma%11;
      DVc=11-resto;
      
      if(rut.charAt(largo-1)=='k'){
          DVi=conver_int(rut.charAt(largo-1),2);
      }
      else{
          DVi=conver_int(rut.charAt(largo-1),1);
       
          if(DVi==0)
       { 
           DVi=11;}
       }
      
      if (DVc==DVi){
          
          return true;
      }
      else{
          
          return false;
           
    }
    }
    
     public static int conver_int (char valor, int id){
         
         int valorINT=0;
         
        if(id==1){
            valorINT=valor-48;
        }
        if(id==2){
            valorINT=valor-97;
        }    
        return valorINT;
    }
    
    
    //////////////////////////////////////////////
    
    public static void main(String[] args) {
 
        int valores[]={25000, 30000, 40000, 35000};
        
        Conductor conductores[]=new Conductor[10];
        
        for (int i = 0; i < conductores.length; i++) {
            
            conductores[i]=new Conductor();
             
        }
        /////////////////////
        String clave="banana azul";
        String clave2="";
        int intentos=0;
        
        while(intentos<3){
            
            clave2=JOptionPane.showInputDialog("ingrese clave");
            
            if(clave2.equals(clave)){
                intentos=3;
                
            }
            if(intentos<3)
            JOptionPane.showMessageDialog(null, "clave incorrecta");
            intentos++;
        }
        //////////////////////////
        
        while(clave2.equals(clave)){
            
            for (int j = 0; j < conductores.length; j++) {
            
                conductores[j].rut=JOptionPane.showInputDialog("ingrese rut "+j);
                while(val_rut(conductores[j].rut)==false){
                    JOptionPane.showMessageDialog(null, "rut invalido");
                    conductores[j].rut=JOptionPane.showInputDialog("ingrese rut "+j);
                }
                        
            conductores[j].nombre=JOptionPane.showInputDialog("ingrese nombre "+j);
            conductores[j].sexo=JOptionPane.showInputDialog("ingrese sexo "+j);
            conductores[j].es_civil=JOptionPane.showInputDialog("ingrese es_civil "+j);
            conductores[j].tipo_m=JOptionPane.showInputDialog("ingrese tipo multa "+j);
            conductores[j].edad=JOptionPane.showInputDialog("ingrese edad "+j);            

             }
            
              while(true){ 
        String opcion=JOptionPane.showInputDialog(null, "1 cuántos hombres solteros tienen multas por Disco Pare \n"+
        "2 cantidad de mujeres que tienen multas sobre los $30.000. \n"+
        "3 cuántas mujeres solteras menores a 30 años tienen multas. \n"+
        "4 monto total que deben pagar los hombres y las mujeres multados\n"+
        "5 cantidad de multas por Luz Roja");
                       
        int opcionint=Integer.parseInt(opcion);
        
        switch(opcionint){
            
            case 1: 
            hombre_soltero_dp(conductores);
                break;
            case 2: muj_multa_30k(conductores);
                break;    
            case 3:  muj_solt_30a(conductores);
                break;     
            case 4: monto_total(conductores,valores);
                break;  
            case 5: multas_luz_roja(conductores);
                break;     
                
     
        }
              }
        }
        
            
            
        
        
        
        
        
        
    }
    
}