/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.profile.model;

import com.mcpy.control.util;

/**
 *
 * @author AGiraldo
 */
public final class Profile {

    int codigo;
    String descripcion;
    String admin;
    String name_rol;

    public Profile() {
    }

    public void Perfil(int codigo, String descripcion, String admin) {
        this.codigo = codigo;
        this.descripcion = util.capitalizeString(descripcion);
        this.admin = admin.toUpperCase();
        builNameRol();
    }

    public Profile(String[] a) {
        Perfil(Integer.parseInt(a[0]), a[1], a[2]);
    }

    public Profile(int codigo, String descripcion) {
        Perfil(codigo, descripcion, "N");
    }

    public Profile(int codigo, String descripcion, String admin) {
        Perfil(codigo, descripcion, admin);
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

    public String href(String iframe, String page) {
        String param
                = "?codigo=" + codigo
                + "&descripcion=" + descripcion
                + "&admin=" + admin
                + "&rol=" + name_rol;

        String ref = "<a href=\"javascript:modiframe('" + iframe + "','" + page + ".jsp<param>');void 0\">" + codigo + ". " + descripcion + "</a>";

        String href = ref.replace("<param>", param);
        System.out.println("Class:Profile.href(String iframe, String page) " + href);
        return href;
    }

    public String hrefEdit(String iframe, String page, String otherParam) {
        String param
                = "?codigo=" + codigo
                + "&descripcion=" + descripcion
                + "&admin=" + admin
                + "&rol=" + name_rol
                + otherParam;

        String ref = "<a href=\"javascript:modiframe('" + iframe + "','" + page + ".jsp<param>');void 0\"> <span class=\"glyphicon glyphicon-pencil\"></span> </a>";

        String href = ref.replace("<param>", param);
        System.out.println("Class:Profile.hrefEdit(String iframe, String page, String otherParam) :" + href);
        return href;
    }
}
