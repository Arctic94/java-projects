package javaapplication1;
import javax.swing.JOptionPane;

public class JavaApplication1 {
    public static int abonar(int saldo1){
        
        String abono=JOptionPane.showInputDialog(null,"ingrese monto a abonar");
        int abono_int=Integer.parseInt(abono);
        saldo1+=abono_int;
        return saldo1;
 
    }
    
    public static int retirar(int saldo){
        
        String menu_retiro=JOptionPane.showInputDialog(null," a 5000 \n b 10000 \n c 20000 \n d 50000 \n e 100000 \n f ingrese valor");
                        switch(menu_retiro){
                            
                            case "a":
                                if(saldo>=5000)
                                saldo-=5000;
                                else JOptionPane.showMessageDialog(null,"exede saldo");
                                break;
                            case "b":
                                if(saldo>=10000)
                                saldo-=10000;
                                else JOptionPane.showMessageDialog(null,"exede saldo");
                                break;
                            case "c":
                                if(saldo>=20000)
                                saldo-=20000;
                                else JOptionPane.showMessageDialog(null,"exede saldo");
                                break;
                            case "d":
                                if(saldo>=50000)
                                saldo-=50000;
                                else JOptionPane.showMessageDialog(null,"exede saldo");
                                break;
                            case "e":
                                if(saldo>=10000)
                                saldo-=100000;
                                else JOptionPane.showMessageDialog(null,"exede saldo");
                                break;
                            case "f":
                                String retiro=JOptionPane.showInputDialog(null,"ingrese monto retiro");
                                int retiro1=Integer.parseInt(retiro);
                                if(saldo>=retiro1)
                                saldo-=retiro1;
                                else JOptionPane.showMessageDialog(null,"exede saldo");
                                break;
                        }
                        return saldo;
        
    }
    
    public static String val_new_clave(String clave){
        
        while(clave.length()<7){
            
            if(clave.length()<3){
                
                clave=JOptionPane.showInputDialog(null,"cambie clave, seg. bajo nivel");
                
            }
            
            else{
                
                if(clave.length()<7){

            clave=JOptionPane.showInputDialog(null,"cambie clave, seg. media");
            
                }
             }    

        }
            
        JOptionPane.showMessageDialog(null,"clave alto nivel segugirad");
        return clave;
     
    }
    
    
    public static void main(String[] args) {
        int err=0;
        int saldo=1000;
        String verf_clave="ACI221";
        int flag=0;
        
        while(err<3){
            
            String clave= JOptionPane.showInputDialog(null, "ingrese clave");
            
            if(clave.equals(verf_clave)){
                
                err=3;
                
                while(flag==0){
                    
                String menu=" 1 saldo \n 2 abonar \n 3 retirar \n 4 cam clave \n 5 salir";
                String menu1=JOptionPane.showInputDialog(null, menu);
                
                    switch(menu1){
                    
                
                    case "1":
                        JOptionPane.showMessageDialog(null,saldo);
                        break;
                        
                    case "2":
                        saldo=abonar(saldo);
                        break;
                        
                                       
                    case "3":
                        saldo=retirar(saldo);
                        break;
                        
                    case "4":
                        
                        String clave_new=JOptionPane.showInputDialog(null,"ingrese nueva clave");
                        
                        String aux=val_new_clave(clave_new);
                        String aux2="clave anterior: "+verf_clave+" clave actual: "+aux;
                        
                        JOptionPane.showMessageDialog(null,aux2);
                        verf_clave=aux;
                        break;
                        
                    case "5":
                        flag=1;
                        break;
                                             
                   }
                }
            }
                else{
                
                err++;
                JOptionPane.showMessageDialog(null,"clave no valida");
                        }
            
            }
   
        }
        
    }
        
    
    

