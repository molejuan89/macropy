package com.mcpy.menu.model;

import com.google.gson.Gson;

public final class Menu {

    private NodoMenu menu = new NodoMenu();

    public Menu() {
    }

    public Menu(String[][] m, String mRaiz) {
        for (String[] m1 : m) {
            NodoMenu nodoAdd;
            nodoAdd = new NodoMenu(m1[0], Integer.parseInt(m1[1]), m1[2], Integer.parseInt(m1[3]), m1[4], m1[5], m1[6]);
            if (nodoAdd.getFather().equals(mRaiz)) {
                menu = nodoAdd;
            } else {
                addNodo(nodoAdd);
            }
        }
    }

    public void addNodo(NodoMenu a) {

        if (a.getHierarchy() == menu.getHierarchy() + 1) { //hijos de primer nivel
            menu.getSon().add(a);
        } else if (a.getHierarchy() == menu.getHierarchy() + 2) { // hijos de segundo nivel
            for (int i = 0; i < menu.getSon().size(); i++) {
                if (a.getFather().equals(menu.getSon().get(i).getCode())) {
                    menu.getSon().get(i).addSon(a);
                }
            }
        } else if (a.getHierarchy() == menu.getHierarchy() + 3) { // hijos de tercer nivel

            for (int i = 0; i < menu.getSon().size(); i++) {
                for (int j = 0; j < menu.getSon().get(i).getSon().size(); j++) {
                    if (a.getFather().equals(menu.getSon().get(i).getSon().get(j).getCode())) {
                        menu.getSon().get(i).getSon().get(j).addSon(a);
                    }
                }

            }
        }
    }

    public void writeMenu() {
        menu.writeme();
        for (int i = 0; i < menu.getSon().size(); i++) {
            menu.getSon().get(i).writeme();
            for (int j = 0; j < menu.getSon().get(i).getSon().size(); j++) {
                menu.getSon().get(i).getSon().get(j).writeme();
                for (int k = 0; k < menu.getSon().get(i).getSon().get(j).getSon().size(); k++) {
                    menu.getSon().get(i).getSon().get(j).getSon().get(k).writeme();
                }
            }
        }
    }

    public String writeMenuHtmlDashboard() {
        String html = "";

        //Se agregan los hijos de primer nivel en el menú.
        for (int i = 0; i < menu.getSon().size(); i++) {

            html += "<li class=\"dropdown\"><a href=\"" + menu.getSon().get(i).getUrl() + "\" class=\"dropdown-toggle\" data-toggle=\"dropdown\"> <b>" + menu.getSon().get(i).getMessage() + "</b>";

            // Si es menu de primer nivel, se agrega la clase caret para que muestre la flecha hacia abajo.
            if (menu.getSon().get(i).getHierarchy() == 1) {
                html += " <b class=\"caret\"></b>";
            }

            html += "</a> \n";

            //Si el menu de primer nivel tiene hijos, se crea una lista dentro de él <UL> para añadir nivel 2.
            if (menu.getSon().get(i).getSon().size() > 0) {
                html += "<ul class=\"dropdown-menu\"> \n";
            }

            //Se agregan los hijos de segundo nivel en el menú.
            for (int j = 0; j < menu.getSon().get(i).getSon().size(); j++) {

                //Si el menu de segundo nivel tiene hijos, se agrega la clase <dropdown> y <dropdown-submenu> para mostrar flecha hacia la derecha.
                if (menu.getSon().get(i).getSon().get(j).getSon().size() > 0) {
                    html += "<li class=\"dropdown dropdown-submenu\"><a href=\"" + menu.getSon().get(i).getSon().get(j).getUrl() + "\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">" + menu.getSon().get(i).getSon().get(j).getMessage() + "</a> \n";
                } else {
                    html += "<li><a href=\"" + menu.getSon().get(i).getSon().get(j).getUrl() + "\">" + menu.getSon().get(i).getSon().get(j).getMessage() + "</a></li> \n";
                }

                //Si el menu de segundo nivel tiene hijos, se crea una lista dentro de él <UL> para añadir nivel 3.
                if (menu.getSon().get(i).getSon().get(j).getSon().size() > 0) {
                    html += "<ul class=\"dropdown-menu\"> \n";
                }

                //Se agregan los hijos de tercer nivel en el menú.
                for (int k = 0; k < menu.getSon().get(i).getSon().get(j).getSon().size(); k++) {
                    html += "<li><a href=\"" + menu.getSon().get(i).getSon().get(j).getSon().get(k).getUrl() + "\">" + menu.getSon().get(i).getSon().get(j).getSon().get(k).getMessage() + "</a></li> \n";
                }

                if (menu.getSon().get(i).getSon().get(j).getSon().size() > 0) {
                    html += "</ul> \n";
                }

                html += "</li> \n";

            }

            if (menu.getSon().get(i).getSon().size() > 0) {
                html += "</ul> \n";
            }

            html += "</li> \n";
        }

        //System.out.println(" \n" + writeMenuJson());
        System.out.println(escribirJson());
        return html;
    }

    public String writeMenuJson() {

        String html = "[";

        //Se agregan los hijos de primer nivel en el menú.
        for (int i = 0; i < menu.getSon().size(); i++) {
            html += "{\"text\":\"" + menu.getSon().get(i).getMessage() + "\",\"href\":\"" + menu.getSon().get(i).getUrl() + "\", \n";
            //html += "<li class=\"dropdown\"><a href=\"" + menu.getSon().get(i).getUrl() + "\" class=\"dropdown-toggle\" data-toggle=\"dropdown\"> <b>" + menu.getSon().get(i).getMessage() + "</b>";

            // Si es menu de primer nivel, se agrega la clase caret para que muestre la flecha hacia abajo.
//            if (menu.getSon().get(i).getHierarchy() == 1) {
//                html += " <b class=\"caret\"></b>";
//            }
//            html += "</a> \n";
            //Si el menu de primer nivel tiene hijos, se crea una lista dentro de él <UL> para añadir nivel 2.
            if (menu.getSon().get(i).getSon().size() > 0) {
                //html += "<ul class=\"dropdown-menu\"> \n";
                html += "\"nodes\":[";
            }

            //Se agregan los hijos de segundo nivel en el menú.
            for (int j = 0; j < menu.getSon().get(i).getSon().size(); j++) {

                //Si el menu de segundo nivel tiene hijos, se agrega la clase <dropdown> y <dropdown-submenu> para mostrar flecha hacia la derecha.
//                if (menu.getSon().get(i).getSon().get(j).getSon().size() > 0) {
//                    html += "<li class=\"dropdown dropdown-submenu\"><a href=\"" + menu.getSon().get(i).getSon().get(j).getUrl() + "\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">" + menu.getSon().get(i).getSon().get(j).getMessage() + "</a> \n";
//                } else {
//                    html += "<li><a href=\"" + menu.getSon().get(i).getSon().get(j).getUrl() + "\">" + menu.getSon().get(i).getSon().get(j).getMessage() + "</a></li> \n";
//                }
                html += "{\"text\":\"" + menu.getSon().get(i).getSon().get(j).getMessage() + "\",\"href\":\"" + menu.getSon().get(i).getSon().get(j).getUrl() + "\", \n";
                //Si el menu de segundo nivel tiene hijos, se crea una lista dentro de él <UL> para añadir nivel 3.
                if (menu.getSon().get(i).getSon().get(j).getSon().size() > 0) {
                    html += "\"nodes\":[";
                }

                //Se agregan los hijos de tercer nivel en el menú.
                for (int k = 0; k < menu.getSon().get(i).getSon().get(j).getSon().size(); k++) {
                    //html += "<li><a href=\"" + menu.getSon().get(i).getSon().get(j).getSon().get(k).getUrl() + "\">" + menu.getSon().get(i).getSon().get(j).getSon().get(k).getMessage() + "</a></li> \n";
                    html += "{\"text\":\"" + menu.getSon().get(i).getSon().get(j).getSon().get(k).getMessage() + "\",\"href\":\"" + menu.getSon().get(i).getSon().get(j).getSon().get(k).getUrl() + "\", \n";
                }

                if (menu.getSon().get(i).getSon().get(j).getSon().size() > 0) {
                    html += "}]";
                }

                html += "} \n";

            }

            if (menu.getSon().get(i).getSon().size() > 0) {
                //html += "</ul> \n";
                html += "]";
            }
            html += "} \n";
            //html += "</li> \n";
        }

        html += "]";

        return html;
    }

    public String escribirJson() {
        String json = "";
        json += "[" + new Gson().toJson(menu) + "]";
        return json;
    }

    public String escribirJson(String x, String y) {
        String json = escribirJson();
        json = json.replace(x, y);
        return json;
    }

    public String escribirJson(String[] x) {
        String json = escribirJson();
        for (int i = 0; i < x.length; i += 2) {
            json = json.replace(x[i], x[i + 1]);
        }
        return json;
    }

}
