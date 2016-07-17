/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.user.model;

import com.mcpy.control.database.ParamDB;

/**
 *
 * @author AGiraldo
 */
public final class User {

    String username;
    int cedula;
    String nombre;
    String apellido1;
    String apellido2;
    String telefono;
    String email;
    String expira_pass;
    String password;
    String expira_account;

    protected void User(String username, int cedula, String nombre, String apellido1, String apellido2, String telefono, String email, String expira_pass) {
        this.username = username.toLowerCase();
        this.cedula = cedula;
        this.nombre = nombre.toLowerCase();
        this.apellido1 = apellido1.toUpperCase();
        this.apellido2 = apellido2.toUpperCase();
        this.telefono = telefono;
        this.email = email.toLowerCase();
        this.expira_pass = expira_pass;
    }

    protected void User(String username, int cedula, String nombre, String apellido1, String apellido2, String telefono, String email, String expira_pass, String password) {
        this.username = username;
        this.cedula = cedula;
        this.nombre = nombre;
        this.apellido1 = apellido1;
        this.apellido2 = apellido2;
        this.telefono = telefono;
        this.email = email;
        this.expira_pass = expira_pass;
        this.password = password;
    }

    protected void User(String username, int cedula, String nombre, String apellido1, String apellido2, String telefono, String email, String expira_pass, String password, String expira_account) {
        this.username = username;
        this.cedula = cedula;
        this.nombre = nombre;
        this.apellido1 = apellido1;
        this.apellido2 = apellido2;
        this.telefono = telefono;
        this.email = email;
        this.expira_pass = expira_pass;
        this.password = password;
        this.expira_account = expira_account;
    }

    public User(String[] a) {
        int c = 0;
        try {
            c = Integer.parseInt(a[1]);
        } catch (Exception e) {
            c = -1;
        }
        if (a.length == 8) {
            User(a[0], c, a[2], a[3], a[4], a[5], a[6], a[7]);
        } else if (a.length == 9) {
            User(a[0], c, a[2], a[3], a[4], a[5], a[6], a[7], a[8]);
        } else if (a.length == 10) {
            User(a[0], c, a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9]);
        }
    }

    public User(String username, int cedula, String nombre, String apellido1, String apellido2, String telefono, String email, String expira_pass) {
        User(username, cedula, nombre, apellido1, apellido2, telefono, email, expira_pass);
    }

    public User(String username, int cedula, String nombre, String apellido1, String apellido2, String telefono, String email, String expira_pass, String password) {
        User(username, cedula, nombre, apellido1, apellido2, telefono, email, expira_pass, password);
    }

    public User(String username, int cedula, String nombre, String apellido1, String apellido2, String telefono, String email, String expira_pass, String password, String expira_account) {
        User(username, cedula, nombre, apellido1, apellido2, telefono, email, expira_pass, password, expira_account);
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getCedula() {
        return cedula;
    }

    public void setCedula(int cedula) {
        this.cedula = cedula;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido1() {
        return apellido1;
    }

    public void setApellido1(String apellido1) {
        this.apellido1 = apellido1;
    }

    public String getApellido2() {
        return apellido2;
    }

    public void setApellido2(String apellido2) {
        this.apellido2 = apellido2;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getExpira_pass() {
        return expira_pass;
    }

    public void setExpira_pass(String expira_pass) {
        this.expira_pass = expira_pass;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getExpira_account() {
        return expira_account;
    }

    public void setExpira_account(String expira_account) {
        this.expira_account = expira_account;
    }

    public String createUser() {
        return "CREATE USER " + username + " LOGIN PASSWORD '" + password + "' VALID UNTIL '" + expira_account + "'";
    }

    public String href(String iframe, String page) {
        String param
                = "?username=" + username
                + "&cedula=" + cedula
                + "&nombre=" + nombre
                + "&apellido1=" + apellido1
                + "&apellido2=" + apellido2
                + "&telefono=" + telefono
                + "&email=" + email
                + "&expira_pass=" + expira_pass
                + "&expira_account=" + expira_account;

        String ref = "<a href=\"javascript:modiframe('" + iframe + "','" + page + ".jsp<param>');void 0\">" + username + "</a>";

        String href = ref.replace("<param>", param);
        return href;
    }

    public String hrefEdit(String iframe, String page, String otherParam) {
        String param
                = "?username=" + username
                + "&cedula=" + cedula
                + "&nombre=" + nombre
                + "&apellido1=" + apellido1
                + "&apellido2=" + apellido2
                + "&telefono=" + telefono
                + "&email=" + email
                + "&expira_pass=" + expira_pass
                + "&expira_account=" + expira_account
                + otherParam;

        String ref = "<a href=\"javascript:modiframe('" + iframe + "','" + page + ".jsp<param>');void 0\"> <span class=\"glyphicon glyphicon-pencil\">  </span>Editar</a>";

        String href = ref.replace("<param>", param);

        return href;
    }

}
