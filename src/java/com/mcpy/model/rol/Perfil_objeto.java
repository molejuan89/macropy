/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.model.rol;

import com.mcpy.model.objects.Objeto;
import java.util.ArrayList;
import java.util.Iterator;

/**
 *
 * @author AGiraldo
 */
public class Perfil_objeto {

    Perfil perfil;
    ArrayList<Objeto> objetos;

    public Perfil_objeto() {
        this.perfil = new Perfil();
        ArrayList<Objeto> objetos = new ArrayList<Objeto>();
    }

    public Perfil_objeto(Perfil perfil, ArrayList<Objeto> objetos) {
        this.perfil = perfil;
        this.objetos = objetos;
    }

    public Perfil getPerfil() {
        return perfil;
    }

    public void setPerfil(Perfil perfil) {
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
