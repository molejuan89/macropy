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
public class Department extends Country {

    int codigo_depto;
    String descripcion_depto;
    String nombre_corto_depto;

    public Department(String[] a) {
        super(Integer.parseInt(a[0]));

        int codigo;
        try {
            codigo = Integer.parseInt(a[1]);
        } catch (NumberFormatException e) {
            codigo = -1;
        }

        this.codigo_depto = codigo;
        this.descripcion_depto = a[2];
        this.nombre_corto_depto = a[3];
    }

    public Department(int pais, int codigo, String descripcion, String nombre_corto) {
        super(pais);
        this.codigo_depto = codigo;
        this.descripcion_depto = descripcion;
        this.nombre_corto_depto = nombre_corto;
    }

    public Department(int pais, int codigo) {
        super(pais);
        this.codigo_depto = codigo;
        this.descripcion_depto = "";
        this.nombre_corto_depto = "";
    }

    public int getCodigo_depto() {
        return codigo_depto;
    }

    public void setCodigo_depto(int codigo_depto) {
        this.codigo_depto = codigo_depto;
    }

    public String getDescripcion_depto() {
        return descripcion_depto;
    }

    public void setDescripcion_depto(String descripcion_depto) {
        this.descripcion_depto = descripcion_depto;
    }

    public String getNombre_corto_depto() {
        return nombre_corto_depto;
    }

    public void setNombre_corto_depto(String nombre_corto_depto) {
        this.nombre_corto_depto = nombre_corto_depto;
    }

    public int getCodigo_pais() {
        return codigo_pais;
    }

    public void setCodigo_pais(int codigo_pais) {
        this.codigo_pais = codigo_pais;
    }

    public String getDescripcion_pais() {
        return descripcion_pais;
    }

    public void setDescripcion_pais(String descripcion_pais) {
        this.descripcion_pais = descripcion_pais;
    }

    public String getNombre_corto_pais() {
        return nombre_corto_pais;
    }

    public void setNombre_corto_pais(String nombre_corto_pais) {
        this.nombre_corto_pais = nombre_corto_pais;
    }

}
