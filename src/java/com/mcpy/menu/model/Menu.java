package com.mcpy.menu.model;

public final class Menu {

    private NodoMenu menu = new NodoMenu();

    public Menu() {
    }

    public Menu(String[][] m, String mRaiz) {
        for (String[] m1 : m) {
            NodoMenu nodoAdd;
            nodoAdd = new NodoMenu(m1[0], Integer.parseInt(m1[1]), m1[2], Integer.parseInt(m1[3]), m1[4], m1[5]);
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

    public String writeMenuHtml() {
        String html = "";
        for (int i = 0; i < menu.getSon().size(); i++) {

            html += "<li class=\"dropdown\"><a href=\"" + menu.getSon().get(i).getUrl() + "\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">" + menu.getSon().get(i).getMessage();
            if (menu.getSon().get(i).getHierarchy() == 1) {
                html += " <b class=\"caret\"></b>";
            }
            html += "</a> \n";

            if (menu.getSon().get(i).getSon().size() > 0) {
                html += "<ul class=\"dropdown-menu\"> \n";
            }
            for (int j = 0; j < menu.getSon().get(i).getSon().size(); j++) {

                //menu.getSon().get(i).getSon().get(j).writeme();
                if (menu.getSon().get(i).getSon().size() > 0) {
                    html += "<li class=\"dropdown dropdown-submenu\"><a href=\"" + menu.getSon().get(i).getSon().get(j).getUrl() + "\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">" + menu.getSon().get(i).getSon().get(j).getMessage() + "</a> \n";
                } else {
                    html += "<li><a href=\"" + menu.getSon().get(i).getSon().get(j).getUrl() + "\">" + menu.getSon().get(i).getSon().get(j).getMessage() + "</a></li> \n";
                }

                if (menu.getSon().get(i).getSon().get(j).getSon().size() > 0) {
                    html += "<ul class=\"dropdown-menu\"> \n";
                }

                for (int k = 0; k < menu.getSon().get(i).getSon().get(j).getSon().size(); k++) {
                    menu.getSon().get(i).getSon().get(j).getSon().get(k).writeme();
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

        return html;
    }

}
