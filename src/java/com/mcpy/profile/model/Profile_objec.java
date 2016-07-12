/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.profile.model;

import com.mcpy.profile.objects.model.Objeto;
import java.util.ArrayList;
import java.util.Iterator;

/**
 *
 * @author AGiraldo
 */
public class Profile_objec {

    Profile perfil;
    ArrayList<Objeto> objetos;

    public Profile_objec() {
        this.perfil = new Profile();
        ArrayList<Objeto> objetos = new ArrayList<Objeto>();
    }

    public Profile_objec(Profile perfil, ArrayList<Objeto> objetos) {
        this.perfil = perfil;
        this.objetos = objetos;
    }

    public Profile getPerfil() {
        return perfil;
    }

    public void setPerfil(Profile perfil) {
        this.perfil = perfil;
    }

    public ArrayList<Objeto> getObjetos() {
        return objetos;
    }

    public void setObjetos(ArrayList<Objeto> objetos) {
        this.objetos = objetos;
    }

    public String toGrant() {
        return "TO " + perfil.getName_rol();
    }

    public String toRevoke() {
        return "FROM " + perfil.getName_rol();
    }

}
