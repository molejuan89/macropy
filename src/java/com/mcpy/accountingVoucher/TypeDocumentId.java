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
public class TypeDocumentId {

    int codigo;
    String descripcion;
    String nombre_corto;

    public void TypeDocumentId(int codigo, String descripcion, String nombre_corto) {
        this.codigo = codigo;
        this.descripcion = descripcion;
        this.nombre_corto = nombre_corto;
    }

    public TypeDocumentId(int codigo, String descripcion, String nombre_corto) {
        TypeDocumentId(codigo, descripcion, nombre_corto);
    }

    public TypeDocumentId(String[] a) {
        int n = -1;
        try {
            n = Integer.parseInt(a[0]);
        } catch (NumberFormatException e) {
            n = -1;
        }
        TypeDocumentId(n, a[1], a[2]);

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
