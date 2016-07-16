/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.profile.model;

import java.util.ArrayList;
import com.mcpy.profile.objects.model.*;

/**
 *
 * @author AGiraldo
 */
public class ProfileObjects {

    Profile profile;
    String[][] objects;
    ArrayList<ObjetDB> objectsAL = new ArrayList<ObjetDB>();

    public ProfileObjects(Profile perfil, String[][] obj) {
        this.profile = perfil;
        this.objects = obj;
        objectsArrayList();
    }

    protected void objectsArrayList() {
        for (String[] object : objects) {
            ObjetDB o = new ObjetDB(object);
            objectsAL.add(o);
        }
    }

    public String[][] toArray() {
        String[][] b = new String[objects.length][objects[0].length];
        for (int i = 0; i < objects.length; i++) {
            for (int j = 0; j < objects[i].length; j++) {
                String checked = "";
                String disabled = "";
                if (j < 3) {
                    b[i][j] = objects[i][j];
                } else {
                    if (objects[i][j].equals("Y")) {
                        checked = "checked";
                    }
                    if (objects[i][j].equals("X")) {
                        disabled = "disabled";
                    }
                    b[i][j] = " <input id=\"" + b[i][0] + "-" + b[i][1] + "-col" + j + "\" name=\"" + b[i][0] + "-" + b[i][1] + "-col" + j + "\" value=\"Y\" type=\"checkbox\" " + checked + " " + disabled + " >";
                }
            }
        }

        return b;
    }

    public Profile getProfile() {
        return profile;
    }

    public void setProfile(Profile profile) {
        this.profile = profile;
    }

    public String[][] getObjects() {
        return objects;
    }

    public void setObjects(String[][] objects) {
        this.objects = objects;
        objectsArrayList();
    }

    public ArrayList<ObjetDB> getObjectsAL() {
        return objectsAL;
    }

    public void setObjectsAL(ArrayList<ObjetDB> objectsAL) {
        this.objectsAL = objectsAL;
    }

    public String toGrant() {
        return "TO " + profile.getName_rol();
    }

    public String toRevoke() {
        return "FROM " + profile.getName_rol();
    }
}
