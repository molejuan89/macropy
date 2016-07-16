/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.profile.model;

import com.mcpy.control.util;
import com.mcpy.menu.model.Menu;
import java.util.Map;
import org.apache.commons.lang3.ArrayUtils;

/**
 *
 * @author AGiraldo
 */
public class ProfileNodes {

    Profile profile;
    Menu menu;
    Map permissions;

    public ProfileNodes(Profile perfil, Menu menu, String[][] permissions) {
        this.profile = perfil;
        this.menu = menu;
        this.permissions = ArrayUtils.toMap(permissions);
    }

    public Profile getProfile() {
        return profile;
    }

    public void setProfile(Profile profile) {
        this.profile = profile;
    }

    public Menu getMenu() {
        return menu;
    }

    public void setMenu(Menu menu) {
        this.menu = menu;
    }

    public Map getPermissions() {
        return permissions;
    }

    public void setPermissions(Map permissions) {
        this.permissions = permissions;
    }

    /* public String[][] toArray() {
     String[][] a = menu.to_Array();
     String[][] b = new String[a.length][6];

     b[0] = new String[]{menu.getMenu().getMessage(), menu.getMenu().getCode()};

     for (int i = 1; i < a.length; i++) {

     String checked = "";

     if (permissions.get(util.SearchMariz(a, "CODE", 0, i)) != null) {
     if (permissions.get(util.SearchMariz(a, "CODE", 0, i)).equals("Y")) {
     checked = "checked";
     }
     }
     int colIni = Integer.parseInt(util.SearchMariz(a, "LEVEL", 0, i));
     b[i][colIni] = util.SearchMariz(a, "MESSAGE", 0, i);
     b[i][colIni + 1] = util.SearchMariz(a, "CODE", 0, i);
     b[i][b[i].length - 1] = " <input type=\"checkbox\" " + checked + " >";
     }

     return b;
     }*/
    public String[][] toArray() {
        String[][] a = menu.to_Array();
        String[][] b = new String[a.length][3];
        String checkedApl = "";

        if (permissions.get(menu.getMenu().getCode()) != null) {
            if (permissions.get(menu.getMenu().getCode()).equals("Y")) {
                checkedApl = "checked";
            }
        }

        b[0] = new String[]{menu.getMenu().getMessage(), menu.getMenu().getCode(), " <input id=\"" + menu.getMenu().getCode() + "\" name=\"" + menu.getMenu().getCode() + "\" value=\"Y\" type=\"checkbox\" " + checkedApl + " >"};

        for (int i = 1; i < a.length; i++) {

            String checked = "";
            String[][] spaces = new String[][]{{"0", "1", "2", "3"}, {"", "&nbsp;&nbsp;&nbsp;&nbsp;", "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;", "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"}};

            if (permissions.get(util.SearchMariz(a, "CODE", 0, i)) != null) {
                if (permissions.get(util.SearchMariz(a, "CODE", 0, i)).equals("Y")) {
                    checked = "checked";
                }
            }

            b[i][0] = util.SearchMariz(spaces, util.SearchMariz(a, "LEVEL", 0, i)) + " " + util.SearchMariz(a, "MESSAGE", 0, i);
            b[i][1] = util.SearchMariz(a, "CODE", 0, i);
            b[i][2] = " <input id=\"" + b[i][1] + "\" name=\"" + b[i][1] + "\" value=\"Y\" type=\"checkbox\" " + checked + " >";
        }

        return b;
    }
}
