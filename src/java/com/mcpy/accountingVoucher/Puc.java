/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.accountingVoucher;

/**
 *
 * @author Andres
 */
public class Puc {
    
    int codigo;
    String descripcion;

    public void Puc(int codigo, String descripcion) {
        this.codigo = codigo;
        this.descripcion = descripcion;
    }

    public Puc(int codigo, String descripcion) {
            Puc(codigo, descripcion);
    }
    
     public Puc(String[] a) {
        int codigo_tmp = -1;
        try {
            codigo_tmp = Integer.parseInt(a[0]);
        } catch (NumberFormatException e) {
            codigo_tmp = -1;
        }

        Puc(codigo_tmp, a[1]);
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
