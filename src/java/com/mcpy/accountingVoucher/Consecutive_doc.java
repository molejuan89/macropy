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
public class Consecutive_doc {

    int tipo_documento_ctb;
    String prefijo;
    int ultimo;
    String estado;

    public void Consecutive_doc(int tipo_documento_ctb, String prefijo, int ultimo, String estado) {
        this.tipo_documento_ctb = tipo_documento_ctb;
        this.prefijo = prefijo;
        this.ultimo = ultimo;
        this.estado = estado;
    }

    public Consecutive_doc(int tipo_documento_ctb, String prefijo, int ultimo, String estado) {
            Consecutive_doc(tipo_documento_ctb, prefijo, ultimo, estado);
    }
    
    public Consecutive_doc(String[] a) {
        int tipo_documento_ctb_temp = -1;
        int ultimo_temp = -1;
        
        try {
            tipo_documento_ctb_temp = Integer.parseInt(a[0]);
        } catch (NumberFormatException e) {
            tipo_documento_ctb_temp = -1;
        }
        try {
            ultimo_temp = Integer.parseInt(a[2]);
        } catch (NumberFormatException e) {
            ultimo_temp = -1;
        }

        Consecutive_doc(tipo_documento_ctb_temp, a[1],ultimo_temp,a[3]);
    }
    
    
    
    
    
    
    

    public int getTipo_documento_ctb() {
        return tipo_documento_ctb;
    }

    public void setTipo_documento_ctb(int tipo_documento_ctb) {
        this.tipo_documento_ctb = tipo_documento_ctb;
    }

    public String getPrefijo() {
        return prefijo;
    }

    public void setPrefijo(String prefijo) {
        this.prefijo = prefijo;
    }

    public int getUltimo() {
        return ultimo;
    }

    public void setUltimo(int ultimo) {
        this.ultimo = ultimo;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    

}
