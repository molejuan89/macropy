/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.profile.model;

/**
 *
 * @author AGiraldo
 */
public class Perfil {

    int codigo;
    String descripcion;
    String admin;
    String name_rol;

    public Perfil() {
    }

    public Perfil(int codigo, String descripcion, String admin) {
        this.codigo = codigo;
        this.descripcion = descripcion;
        this.admin = admin;
    }

    public Perfil(int codigo, String descripcion) {
        this.codigo = codigo;
        this.descripcion = descripcion;
        this.admin = "N";
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

    public String getAdmin() {
        return admin;
    }

    public void setAdmin(String admin) {
        this.admin = admin;
    }

    public String getName_rol() {
        return name_rol;
    }

    public void setName_rol(String name_rol) {
        this.name_rol = name_rol;
    }

    public void builNameRol() {
        this.name_rol = "rol_" + String.format("%04d", Integer.parseInt("" + codigo));
    }
   
}
