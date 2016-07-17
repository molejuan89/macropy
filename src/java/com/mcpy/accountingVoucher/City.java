/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.accountingVoucher;

/**
 *
 * @author AGiraldo
 */
public class City extends Department {

    int codigo_ciudad;
    String descripcion_ciudad;

    public City(int pais, int depto, int codigo, String descripcion) {
        super(pais, depto);
        this.codigo_ciudad = codigo;
        this.descripcion_ciudad = descripcion;
    }

    public City(String[] a) {
        super(Integer.parseInt(a[0]), Integer.parseInt(a[1]));
        int codigo;
        try {
            codigo = Integer.parseInt(a[2]);
        } catch (NumberFormatException e) {
            codigo = -1;
        }
        this.codigo_ciudad = codigo;
        this.descripcion_ciudad = a[3];
    }

    public int getCodigo_ciudad() {
        return codigo_ciudad;
    }

    public void setCodigo_ciudad(int codigo_ciudad) {
        this.codigo_ciudad = codigo_ciudad;
    }

    public String getDescripcion_ciudad() {
        return descripcion_ciudad;
    }

    public void setDescripcion_ciudad(String descripcion_ciudad) {
        this.descripcion_ciudad = descripcion_ciudad;
    }
    
    

}
