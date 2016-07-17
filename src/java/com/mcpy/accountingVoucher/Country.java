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
public class Country {

    int codigo_pais;
    String descripcion_pais;
    String nombre_corto_pais;

    public void Country(int codigo_pais, String descripcion_pais, String nombre_corto_pais) {
        this.codigo_pais = codigo_pais;
        this.descripcion_pais = descripcion_pais;
        this.nombre_corto_pais = nombre_corto_pais;
    }

    public Country(int codigo_pais, String descripcion_pais, String nombre_corto_pais) {
        Country(codigo_pais, descripcion_pais, nombre_corto_pais);
    }

    public Country(int codigo_pais) {
        Country(codigo_pais, "", "");
    }

    public Country(String[] a) {
        int n = -1;
        try {
            n = Integer.parseInt(a[0]);
        } catch (NumberFormatException e) {
            n = -1;
        }

        Country(n, a[1], a[2]);
    }

    public int getCodigo() {
        return codigo_pais;
    }

    public void setCodigo(int codigo_pais) {
        this.codigo_pais = codigo_pais;
    }

    public String getDescripcion() {
        return descripcion_pais;
    }

    public void setDescripcion(String descripcion_pais) {
        this.descripcion_pais = descripcion_pais;
    }

    public String getNombre_corto() {
        return nombre_corto_pais;
    }

    public void setNombre_corto(String nombre_corto_pais) {
        this.nombre_corto_pais = nombre_corto_pais;
    }

}
