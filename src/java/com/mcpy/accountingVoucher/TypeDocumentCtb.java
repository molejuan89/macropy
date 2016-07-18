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
public class TypeDocumentCtb {

    int codigo;
    String descripcion;
    String nombre_corto;

    public void TypeDocumentCtb(int codigo, String descripcion, String nombre_corto) {
        this.codigo = codigo;
        this.descripcion = descripcion;
        this.nombre_corto = nombre_corto;
    }

    public TypeDocumentCtb(int codigo, String descripcion, String nombre_corto) {
        TypeDocumentCtb(codigo, descripcion, nombre_corto);
    }

    public TypeDocumentCtb(String[] a) {
        int codigo_tmp = -1;
        try {
            codigo_tmp = Integer.parseInt(a[0]);
        } catch (NumberFormatException e) {
            codigo_tmp = -1;
        }

        TypeDocumentCtb(codigo_tmp, descripcion, nombre_corto);
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getNombre_corto() {
        return nombre_corto;
    }

    public void setNombre_corto(String nombre_corto) {
        this.nombre_corto = nombre_corto;
    }

}
