package com.mcpy.menu.model;

import java.util.ArrayList;

public class NodoMenu {

    private String code;
    int hierarchy;
    private String father;
    private int order;
    private String message;
    private String url;
    private String tipo;
    private ArrayList<NodoMenu> son;

    public NodoMenu() {

    }

    public NodoMenu(String code, int hierarchy, String father, int order, String message, String url, String tipo, ArrayList<NodoMenu> son) {
        this.code = code;
        this.hierarchy = hierarchy;
        this.father = father;
        this.order = order;
        this.message = message;
        this.url = url;
        this.tipo = tipo;
        this.son = son;
    }

    public NodoMenu(String code, int hierarchy, String father, int order, String message, String url, String tipo) {
        this.code = code;
        this.hierarchy = hierarchy;
        this.father = father;
        this.order = order;
        this.message = message;
        this.url = url;
        this.tipo = tipo;
        this.son = new ArrayList<>();
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getFather() {
        return father;
    }

    public void setFather(String father) {
        this.father = father;
    }

    public int getOrder() {
        return order;
    }

    public void setOrder(int order) {
        this.order = order;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public ArrayList<NodoMenu> getSon() {
        return son;
    }

    public void setSon(ArrayList<NodoMenu> son) {
        this.son = son;
    }

    public int getHierarchy() {
        return hierarchy;
    }

    public void setHierarchy(int hierarchy) {
        this.hierarchy = hierarchy;
    }

    public void addSon(NodoMenu a) {
        son.add(a);
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public void writeme() {
        String a = "";
        for (int i = 0; i <= hierarchy; i++) {
            a += ".";
        }
        a += message;
    }

}
