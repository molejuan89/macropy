/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.accountingVoucher;

/**
 *
 * @author JuanDavid
 */
public class VoucherDetail {
        String comprobante;
        int id;
        int cuenta;
        String concepto;
        String naturaleza;
        int valor_total;

    public void VoucherDetail(String comprobante, int id, int cuenta, String concepto, String naturaleza, int valor_total) {
        this.comprobante = comprobante;
        this.id = id;
        this.cuenta = cuenta;
        this.concepto = concepto;
        this.naturaleza = naturaleza;
        this.valor_total = valor_total;
    }

    public VoucherDetail(String comprobante, int id, int cuenta, String concepto, String naturaleza, int valor_total) {
       VoucherDetail (comprobante,id,cuenta,concepto,naturaleza,valor_total);
    }
    
    public VoucherDetail(String[] a) {
        int id_tmp = -1;
        int cuenta_tmp = -1;
        int valor_total_tmp = -1;
        try {
            id_tmp = Integer.parseInt(a[1]);
        } catch (NumberFormatException e) {
           id_tmp = -1;
          }
        try {
            cuenta_tmp = Integer.parseInt(a[2]);
          } catch (NumberFormatException e) {
            cuenta_tmp = -1;
        }
        try {
            valor_total_tmp = Integer.parseInt(a[5]);
        } catch (NumberFormatException e) {
            valor_total_tmp = -1;
        }

        VoucherDetail(comprobante,id_tmp,cuenta_tmp,concepto,naturaleza,valor_total_tmp);
    }
        
        
    public String getComprobante() {
        return comprobante;
    }

    public void setComprobante(String comprobante) {
        this.comprobante = comprobante;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCuenta() {
        return cuenta;
    }

    public void setCuenta(int cuenta) {
        this.cuenta = cuenta;
    }

    public String getConcepto() {
        return concepto;
    }

    public void setConcepto(String concepto) {
        this.concepto = concepto;
    }

    public String getNaturaleza() {
        return naturaleza;
    }

    public void setNaturaleza(String naturaleza) {
        this.naturaleza = naturaleza;
    }

    public int getValor_total() {
        return valor_total;
    }

    public void setValor_total(int valor_total) {
        this.valor_total = valor_total;
    }
}
