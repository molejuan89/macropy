/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.profile.objects.model;

/**
 *
 * @author AGiraldo
 */
public class ObjetDB {

    String shema, name, type;
    boolean isSelect, isInsert, isUpdate, isDelete, isExecute;

    public ObjetDB() {
    }

    public ObjetDB(String shema, String name, String type) {
        this.shema = shema;
        this.name = name;
        this.type = type;
    }

    public ObjetDB(String shema, String name, String type, boolean isSelect, boolean isInsert, boolean isUpdate, boolean isDelete, boolean isExecute) {
        this.shema = shema;
        this.name = name;
        this.type = type;
        this.isSelect = isSelect;
        this.isInsert = isInsert;
        this.isUpdate = isUpdate;
        this.isDelete = isDelete;
        this.isExecute = isExecute;
    }

    public ObjetDB(String[] obj) {
        ObjetDB(obj[0], obj[1], obj[2], obj[3], obj[4], obj[5], obj[6], obj[7]);
    }

    public ObjetDB(String shema, String name, String type, String Sel, String Ins, String Upd, String Del, String Exe) {
        ObjetDB(shema, name, type, Sel, Ins, Upd, Del, Exe);
    }

    public void ObjetDB(String shema, String name, String type, String Sel, String Ins, String Upd, String Del, String Exe) {
        this.shema = shema;
        this.name = name;
        this.type = type;
        this.isSelect = "Y".equals(Sel);
        this.isInsert = "Y".equals(Ins);
        this.isUpdate = "Y".equals(Upd);
        this.isDelete = "Y".equals(Del);
        this.isExecute = "Y".equals(Exe);
    }

    public String grant() {
        String g = "";
        if (grants().length() > 0) {
            g = "GRANT " + grants() + " ON " + this.shema + "." + this.name;
        }
        return g;
    }

    public String revoke() {
        return "REVOKE ALL ON " + this.shema + "." + this.name;
    }

    public String getShema() {
        return shema;
    }

    private String grants() {
        int k = 0;
        String grant = "";
        String[] grants = new String[5];

        if (isSelect) {
            grants[k] = "SELECT, REFERENCES";
            k++;
        }
        if (isInsert) {
            grants[k] = "INSERT";
            k++;
        }
        if (isUpdate) {
            grants[k] = "UPDATE";
            k++;
        }
        if (isDelete) {
            grants[k] = "DELETE";
            k++;
        }
        if (isExecute) {
            grants[k] = "SELECT, UPDATE";
            k++;
        }

        for (int i = 0; i < grants.length; i++) {
            if (!(grants[i] == null)) {
                if (i == 0) {
                    grant += grants[i];
                } else {
                    grant += "," + grants[i];
                }
            }
        }
        System.out.println(grant);
        return grant;
    }

}
