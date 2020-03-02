/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author DAW206
 */
public class Prestamo {
    private double cantidad;
    private double interes;
    private int tiempo;
    private double importePrestamo;

    public Prestamo(double cantidad, double interes, int tiempo) {
        this.cantidad = cantidad;
        this.interes = interes;
        this.tiempo = tiempo;
        this.importePrestamo = cantidad + cantidad * interes * tiempo / 1200;
    }

    public double getCantidad() {
        return cantidad;
    }

    public void setCantidad(double cantidad) {
        this.cantidad = cantidad;
    }

    public double getInteres() {
        return interes;
    }

    public void setInteres(double interes) {
        this.interes = interes;
    }

    public int getTiempo() {
        return tiempo;
    }

    public void setTiempo(int tiempo) {
        this.tiempo = tiempo;
    }

    public double getImportePrestamo() {
        return importePrestamo;
    }

    public void setImportePrestamo(double importePrestamo) {
        this.importePrestamo = importePrestamo;
    }
    
    
    
}
