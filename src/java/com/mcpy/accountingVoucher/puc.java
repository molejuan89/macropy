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
public class puc {

    int codigo;
    String descripcion;

    public void TypeDocumentCtb(int codigo, String descripcion) {
        this.codigo = codigo;
        this.descripcion = descripcion;
        
    }

    public puc(int codigo, String descripcion) {
        TypeDocumentCtb(codigo, descripcion);
    }

    public puc(String[] a) {
        int n = -1;
        try {
            n = Integer.parseInt(a[0]);
        } catch (NumberFormatException e) {
            n = -1;
        }

        TypeDocumentCtb(n, a[1]);
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

}
