package com.kinalitosclothes.modelo;

public class Productos {
    private int codigoProducto;
    private String nombreProducto;
    private int stock;
    private Double precio;
    private int codigoProveedor;

    public Productos() {
    }

    public Productos(int codigoProducto, String nombreProducto, int stock, Double precio, int codigoProveedor) {
        this.codigoProducto = codigoProducto;
        this.nombreProducto = nombreProducto;
        this.stock = stock;
        this.precio = precio;
        this.codigoProveedor = codigoProveedor;
    }

    public int getCodigoProducto() {
        return codigoProducto;
    }

    public void setCodigoProducto(int codigoProducto) {
        this.codigoProducto = codigoProducto;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public int getCodigoProveedor() {
        return codigoProveedor;
    }

    public void setCodigoProveedor(int codigoProveedor) {
        this.codigoProveedor = codigoProveedor;
    }
}
