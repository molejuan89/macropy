/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.profile.model;

import com.mcpy.profile.objects.model.ObjetDB;
import java.util.ArrayList;
import java.util.Iterator;

/**
 *
 * @author AGiraldo
 */
public class Profile_objec_OLD {

    Profile perfil;
    ArrayList<ObjetDB> objetos;

    public Profile_objec_OLD() {
        this.perfil = new Profile();
        ArrayList<ObjetDB> objetos = new ArrayList<ObjetDB>();
    }

    public Profile_objec_OLD(Profile perfil, ArrayList<ObjetDB> objetos) {
        this.perfil = perfil;
        this.objetos = objetos;
    }

    public Profile getPerfil() {
        return perfil;
    }

    public void setPerfil(Profile perfil) {
        this.perfil = perfil;
    }

    public ArrayList<ObjetDB> getObjetos() {
        return objetos;
    }

    public void setObjetos(ArrayList<ObjetDB> objetos) {
        this.objetos = objetos;
    }

    public String toGrant() {
        return "TO " + perfil.getName_rol();
    }

    public String toRevoke() {
        return "FROM " + perfil.getName_rol();
    }

}
