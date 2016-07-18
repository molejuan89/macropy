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
public class Voucher {
    
    int tipo_docuemnto_ctb;
    String consecutivo;
    int tercero;
    String fecha;
    int valor_total;
    String username;
    int pais;
    int depto;
    int ciudad;

    public void voucher(int tipo_docuemnto_ctb, String consecutivo, int tercero, String fecha, int valor_total, String username, int pais, int depto, int ciudad) {
        this.tipo_docuemnto_ctb = tipo_docuemnto_ctb;
        this.consecutivo = consecutivo;
        this.tercero = tercero;
        this.fecha = fecha;
        this.valor_total = valor_total;
        this.username = username;
        this.pais = pais;
        this.depto = depto;
        this.ciudad = ciudad;
    }

    public Voucher(int tipo_docuemnto_ctb, String consecutivo, int tercero, String fecha, int valor_total, String username, int pais, int depto, int ciudad) {
        voucher(tipo_docuemnto_ctb, consecutivo, tercero, fecha, valor_total, username, pais, depto, ciudad);
    }
    
    public Voucher(String[] a) {
        int tipo_documento_temp = -1;
        int tercero_temp = -1;
        int valor_total_temp = -1;
        int pais_temp = -1;
        int depto_temp = -1;
        int ciudad_temp = -1;
        try {
            tipo_documento_temp= Integer.parseInt(a[0]);
        } catch (NumberFormatException e) {
            tipo_documento_temp = -1;          
        }
        try {
            tercero_temp= Integer.parseInt(a[2]);

        } catch (NumberFormatException e) {
            tercero_temp= -1;           
        }
        try {
            valor_total_temp= Integer.parseInt(a[4]);
        } catch (NumberFormatException e) {
            valor_total_temp= -1;          
        }
        try {
            pais_temp= Integer.parseInt(a[6]);
        } catch (NumberFormatException e) {
            pais_temp = -1;          
        }
        try {
            depto_temp= Integer.parseInt(a[7]);
        } catch (NumberFormatException e) {
            depto_temp = -1;
            
        }
        try {
            ciudad_temp= Integer.parseInt(a[8]);
        } catch (NumberFormatException e) {
            ciudad_temp = -1;      
        }
        voucher(tipo_documento_temp, a[1], tercero_temp, a[3],valor_total_temp, a[5], pais_temp, depto_temp, ciudad_temp);

    }
    
    

    public int getTipo_docuemnto_ctb() {
        return tipo_docuemnto_ctb;
    }

    public void setTipo_docuemnto_ctb(int tipo_docuemnto_ctb) {
        this.tipo_docuemnto_ctb = tipo_docuemnto_ctb;
    }

    public String getConsecutivo() {
        return consecutivo;
    }

    public void setConsecutivo(String consecutivo) {
        this.consecutivo = consecutivo;
    }

    public int getTercero() {
        return tercero;
    }

    public void setTercero(int tercero) {
        this.tercero = tercero;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public double getValor_total() {
        return valor_total;
    }

    public void setValor_total(int valor_total) {
        this.valor_total = valor_total;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getPais() {
        return pais;
    }

    public void setPais(int pais) {
        this.pais = pais;
    }

    public int getDepto() {
        return depto;
    }

    public void setDepto(int depto) {
        this.depto = depto;
    }

    public int getCiudad() {
        return ciudad;
    }

    public void setCiudad(int ciudad) {
        this.ciudad = ciudad;
    }
    
    
    
    
}
