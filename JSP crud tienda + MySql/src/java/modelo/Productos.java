/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Arctic
 */
@Entity
@Table(name = "productos")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Productos.findAll", query = "SELECT p FROM Productos p"),
    @NamedQuery(name = "Productos.findByCodigo", query = "SELECT p FROM Productos p WHERE p.codigo = :codigo"),
    @NamedQuery(name = "Productos.findByNombresProducto", query = "SELECT p FROM Productos p WHERE p.nombresProducto = :nombresProducto"),
    @NamedQuery(name = "Productos.findByDescripcion", query = "SELECT p FROM Productos p WHERE p.descripcion = :descripcion"),
    @NamedQuery(name = "Productos.findByUnidadDeMedida", query = "SELECT p FROM Productos p WHERE p.unidadDeMedida = :unidadDeMedida"),
    @NamedQuery(name = "Productos.findByStock", query = "SELECT p FROM Productos p WHERE p.stock = :stock"),
    @NamedQuery(name = "Productos.findByPrecio", query = "SELECT p FROM Productos p WHERE p.precio = :precio"),
    @NamedQuery(name = "Productos.findByStockMinimo", query = "SELECT p FROM Productos p WHERE p.stockMinimo = :stockMinimo"),
    @NamedQuery(name = "Productos.findByStockMaximo", query = "SELECT p FROM Productos p WHERE p.stockMaximo = :stockMaximo"),
    @NamedQuery(name = "Productos.findByFechaElavoracion", query = "SELECT p FROM Productos p WHERE p.fechaElavoracion = :fechaElavoracion"),
    @NamedQuery(name = "Productos.findByFechaVencimiento", query = "SELECT p FROM Productos p WHERE p.fechaVencimiento = :fechaVencimiento"),
    @NamedQuery(name = "Productos.findByFotoProducto", query = "SELECT p FROM Productos p WHERE p.fotoProducto = :fotoProducto")})
public class Productos implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "codigo")
    private Integer codigo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "nombresProducto")
    private String nombresProducto;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 40)
    @Column(name = "descripcion")
    private String descripcion;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "unidadDeMedida")
    private String unidadDeMedida;
    @Basic(optional = false)
    @NotNull
    @Column(name = "stock")
    private int stock;
    @Basic(optional = false)
    @NotNull
    @Column(name = "precio")
    private int precio;
    @Basic(optional = false)
    @NotNull
    @Column(name = "stockMinimo")
    private int stockMinimo;
    @Basic(optional = false)
    @NotNull
    @Column(name = "stockMaximo")
    private int stockMaximo;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fechaElavoracion")
    @Temporal(TemporalType.DATE)
    private Date fechaElavoracion;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fechaVencimiento")
    @Temporal(TemporalType.DATE)
    private Date fechaVencimiento;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "fotoProducto")
    private String fotoProducto;

    public Productos() {
    }

    public Productos(Integer codigo) {
        this.codigo = codigo;
    }

    public Productos(Integer codigo, String nombresProducto, String descripcion, String unidadDeMedida, int stock, int precio, int stockMinimo, int stockMaximo, Date fechaElavoracion, Date fechaVencimiento, String fotoProducto) {
        this.codigo = codigo;
        this.nombresProducto = nombresProducto;
        this.descripcion = descripcion;
        this.unidadDeMedida = unidadDeMedida;
        this.stock = stock;
        this.precio = precio;
        this.stockMinimo = stockMinimo;
        this.stockMaximo = stockMaximo;
        this.fechaElavoracion = fechaElavoracion;
        this.fechaVencimiento = fechaVencimiento;
        this.fotoProducto = fotoProducto;
    }

    public Integer getCodigo() {
        return codigo;
    }

    public void setCodigo(Integer codigo) {
        this.codigo = codigo;
    }

    public String getNombresProducto() {
        return nombresProducto;
    }

    public void setNombresProducto(String nombresProducto) {
        this.nombresProducto = nombresProducto;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getUnidadDeMedida() {
        return unidadDeMedida;
    }

    public void setUnidadDeMedida(String unidadDeMedida) {
        this.unidadDeMedida = unidadDeMedida;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public int getStockMinimo() {
        return stockMinimo;
    }

    public void setStockMinimo(int stockMinimo) {
        this.stockMinimo = stockMinimo;
    }

    public int getStockMaximo() {
        return stockMaximo;
    }

    public void setStockMaximo(int stockMaximo) {
        this.stockMaximo = stockMaximo;
    }

    public Date getFechaElavoracion() {
        return fechaElavoracion;
    }

    public void setFechaElavoracion(Date fechaElavoracion) {
        this.fechaElavoracion = fechaElavoracion;
    }

    public Date getFechaVencimiento() {
        return fechaVencimiento;
    }

    public void setFechaVencimiento(Date fechaVencimiento) {
        this.fechaVencimiento = fechaVencimiento;
    }

    public String getFotoProducto() {
        return fotoProducto;
    }

    public void setFotoProducto(String fotoProducto) {
        this.fotoProducto = fotoProducto;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codigo != null ? codigo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Productos)) {
            return false;
        }
        Productos other = (Productos) object;
        if ((this.codigo == null && other.codigo != null) || (this.codigo != null && !this.codigo.equals(other.codigo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Productos[ codigo=" + codigo + " ]";
    }
    
}
