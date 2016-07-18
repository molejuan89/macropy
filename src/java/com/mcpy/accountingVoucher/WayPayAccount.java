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
public class WayPayAccount {
    
    int forma_pago;
    int cuenta;

    public void ShapePaymentAccountCtb(int forma_pago, int cuenta) {
        this.forma_pago = forma_pago;
        this.cuenta = cuenta;
    }

    public WayPayAccount(int forma_pago, int cuenta) {
        ShapePaymentAccountCtb(forma_pago, cuenta);
    }

    public WayPayAccount(String[] a) {
        int forma_pago_temp = -1;
        int cuenta_temp = -1;
        try {
            forma_pago_temp = Integer.parseInt(a[0]);
        } catch (NumberFormatException e) {
            forma_pago_temp = -1;
        }
        try {
            cuenta_temp = Integer.parseInt(a[1]);
        } catch (NumberFormatException e) {
            cuenta_temp = -1;
        }
        ShapePaymentAccountCtb(forma_pago_temp,cuenta_temp);
    }
    
    public int getForma_pago() {
        return forma_pago;
    }

    public void setForma_pago(int forma_pago) {
        this.forma_pago = forma_pago;
    }

    public int getCuenta() {
        return cuenta;
    }

    public void setCuenta(int cuenta) {
        this.cuenta = cuenta;
    }
   
}
