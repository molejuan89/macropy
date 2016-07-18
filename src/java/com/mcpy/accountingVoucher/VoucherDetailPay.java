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
public class VoucherDetailPay {
    String comprobante;
    int id_detalle;
    int forma_pago;
    int valor ;

    public void VoucherDetailPayment(String comprobante, int id_detalle, int forma_pago, int valor) {
        this.comprobante = comprobante;
        this.id_detalle = id_detalle;
        this.forma_pago = forma_pago;
        this.valor = valor;
    }

    public VoucherDetailPay(String comprobante, int id_detalle, int forma_pago, int valor) {
        VoucherDetailPayment(comprobante,id_detalle, forma_pago,valor);
    }
    
     public VoucherDetailPay(String[] a) {
        int id_detalle_tmp = -1;
        int forma_pago_tmp = -1;
        int valor_tmp = -1;
        try {
            id_detalle_tmp = Integer.parseInt(a[1]);
        } catch (NumberFormatException e) {
            id_detalle_tmp = -1;
        }
        try {
            forma_pago_tmp = Integer.parseInt(a[2]);
        } catch (NumberFormatException e) {
            forma_pago_tmp = -1;
        }
        try {
            valor_tmp = Integer.parseInt(a[3]);
        } catch (NumberFormatException e) {
            valor_tmp = -1;
        }
        VoucherDetailPayment(comprobante,id_detalle_tmp,forma_pago_tmp,valor_tmp);
    }
    
    public String getComprobante() {
        return comprobante;
    }

    public void setComprobante(String comprobante) {
        this.comprobante = comprobante;
    }

    public int getId_detalle() {
        return id_detalle;
    }

    public void setId_detalle(int id_detalle) {
        this.id_detalle = id_detalle;
    }

    public int getForma_pago() {
        return forma_pago;
    }

    public void setForma_pago(int forma_pago) {
        this.forma_pago = forma_pago;
    }

    public int getValor() {
        return valor;
    }

    public void setValor(int valor) {
        this.valor = valor;
    }
    
 }
