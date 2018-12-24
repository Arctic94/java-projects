package modelo;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-07-12T00:34:13")
@StaticMetamodel(Productos.class)
public class Productos_ { 

    public static volatile SingularAttribute<Productos, String> descripcion;
    public static volatile SingularAttribute<Productos, Integer> stockMinimo;
    public static volatile SingularAttribute<Productos, Integer> codigo;
    public static volatile SingularAttribute<Productos, Integer> precio;
    public static volatile SingularAttribute<Productos, Date> fechaElavoracion;
    public static volatile SingularAttribute<Productos, String> unidadDeMedida;
    public static volatile SingularAttribute<Productos, Date> fechaVencimiento;
    public static volatile SingularAttribute<Productos, String> nombresProducto;
    public static volatile SingularAttribute<Productos, Integer> stock;
    public static volatile SingularAttribute<Productos, Integer> stockMaximo;
    public static volatile SingularAttribute<Productos, String> fotoProducto;

}