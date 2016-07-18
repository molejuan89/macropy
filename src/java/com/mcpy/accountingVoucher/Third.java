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
public class Third {
    
    int codigo ;
    int tipo_documento;
    int numero_documento;
    String nombre;
    String razon_social;
    String direccion;
    int telefono;
    String e_mail;
    int pais;
    int departamento;
    int ciudad;
    int tipo_tercero;
    int actividad_economica_dian;
    int actividad_economica_ica;
    String observacion;

    public void Third(int codigo, int tipo_documento, int numero_documento, String nombre, String razon_social, String direccion, int telefono, String e_mail, int pais, int departamento, int ciudad, int tipo_tercero, int actividad_economica_dian, int actividad_economica_ica, String observacion) {
        this.codigo = codigo;
        this.tipo_documento = tipo_documento;
        this.numero_documento = numero_documento;
        this.nombre = nombre;
        this.razon_social = razon_social;
        this.direccion = direccion;
        this.telefono = telefono;
        this.e_mail = e_mail;
        this.pais = pais;
        this.departamento = departamento;
        this.ciudad = ciudad;
        this.tipo_tercero = tipo_tercero;
        this.actividad_economica_dian = actividad_economica_dian;
        this.actividad_economica_ica = actividad_economica_ica;
        this.observacion = observacion;
    }
    
       public Third(int codigo, int tipo_documento, int numero_documento, String nombre, String razon_social, String direccion, int telefono, String e_mail, int pais, int departamento, int ciudad, int tipo_tercero, int actividad_economica_dian, int actividad_economica_ica, String observacion) {
        Third( codigo, tipo_documento, numero_documento,  nombre, razon_social,  direccion,  telefono, e_mail,  pais,  departamento, ciudad,tipo_tercero,actividad_economica_dian, actividad_economica_ica, observacion);
    
       }
    public Third(String[] a) {
        int codigo_temp = -1;
        int tipo_documento_temp = -1;
        int numero_documento_temp = -1;
        int telefono_temp = -1;
        int pais_temp = -1;
        int departamento_temp = -1;
        int ciudad_temp = -1;
        int tipo_tercero_temp = -1;
        int actividad_economica_dian_temp = -1;
        int actividad_economica_ica_temp = -1;
        
        try {
            codigo_temp = Integer.parseInt(a[0]);

        } catch (NumberFormatException e) {
            codigo_temp = -1;
        }
        try {
            tipo_documento_temp= Integer.parseInt(a[1]);
        } catch (NumberFormatException e) {
            tipo_documento_temp = -1;           
        }
        try {
            numero_documento_temp= Integer.parseInt(a[2]);
        } catch (NumberFormatException e) {
            numero_documento_temp = -1;           
        }
        try {
            telefono_temp= Integer.parseInt(a[6]);
        } catch (NumberFormatException e) {
            telefono_temp = -1;           
        }
        try {
            pais_temp= Integer.parseInt(a[8]);
        } catch (NumberFormatException e) {
            pais_temp = -1;
            
        }
        try {
            departamento_temp= Integer.parseInt(a[9]);
        } catch (NumberFormatException e) {
            departamento_temp = -1;           
        }
        try {
            ciudad_temp= Integer.parseInt(a[10]);
        } catch (NumberFormatException e) {
            ciudad_temp = -1;

        }
        try {
            tipo_tercero_temp= Integer.parseInt(a[11]);
        } catch (NumberFormatException e) {
            tipo_tercero_temp = -1;
            
        }
        try {
            actividad_economica_dian_temp= Integer.parseInt(a[12]);
        } catch (NumberFormatException e) {
            actividad_economica_dian_temp = -1;
            
        }
        try {
            actividad_economica_ica_temp= Integer.parseInt(a[13]);
        } catch (NumberFormatException e) {

            actividad_economica_ica_temp = -1;           
        }
        
        Third(ciudad_temp, tipo_documento_temp, numero_documento_temp,a[3],a[4],a[5],telefono_temp,a[7],pais_temp,departamento_temp,ciudad_temp,tipo_tercero_temp,actividad_economica_dian_temp,actividad_economica_ica_temp,a[14]);
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public int getTipo_documento() {
        return tipo_documento;
    }

    public void setTipo_documento(int tipo_documento) {
        this.tipo_documento = tipo_documento;
    }

    public int getNumero_documento() {
        return numero_documento;
    }

    public void setNumero_documento(int numero_documento) {
        this.numero_documento = numero_documento;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getRazon_social() {
        return razon_social;
    }

    public void setRazon_social(String razon_social) {
        this.razon_social = razon_social;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public String getE_mail() {
        return e_mail;
    }

    public void setE_mail(String e_mail) {
        this.e_mail = e_mail;
    }

    public int getPais() {
        return pais;
    }

    public void setPais(int pais) {
        this.pais = pais;
    }

    public int getDepartamento() {
        return departamento;
    }

    public void setDepartamento(int departamento) {
        this.departamento = departamento;
    }

    public int getCiudad() {
        return ciudad;
    }

    public void setCiudad(int ciudad) {
        this.ciudad = ciudad;
    }

    public int getTipo_tercero() {
        return tipo_tercero;
    }

    public void setTipo_tercero(int tipo_tercero) {
        this.tipo_tercero = tipo_tercero;
    }

    public int getActividad_economica_dian() {
        return actividad_economica_dian;
    }

    public void setActividad_economica_dian(int actividad_economica_dian) {
        this.actividad_economica_dian = actividad_economica_dian;
    }

    public int getActividad_economica_ica() {
        return actividad_economica_ica;
    }

    public void setActividad_economica_ica(int actividad_economica_ica) {
        this.actividad_economica_ica = actividad_economica_ica;
    }

    public String getObservacion() {
        return observacion;
    }

    public void setObservacion(String observacion) {
        this.observacion = observacion;
    }
    
    
    
    
}
