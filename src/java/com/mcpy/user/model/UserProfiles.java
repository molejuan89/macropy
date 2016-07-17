/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.user.model;

import com.mcpy.control.util;
import java.util.Map;
import org.apache.commons.lang3.ArrayUtils;

/**
 *
 * @author AGiraldo
 */
public class UserProfiles {

    User user;
    String[][] perfiles;
    Map permissions;
    String type;

    public UserProfiles(User user, String[][] perfiles, String[][] permissions, String type) {
        this.user = user;
        this.perfiles = perfiles;
        this.permissions = ArrayUtils.toMap(permissions);
        this.type = type;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Map getPermissions() {
        return permissions;
    }

    public void setPermissions(Map permissions) {
        this.permissions = permissions;
    }

    public void setPermissions(String[][] permissions) {
        this.permissions = ArrayUtils.toMap(permissions);
    }

    public String[][] getPerfiles() {
        return perfiles;
    }

    public void setPerfiles(String[][] perfiles) {
        this.perfiles = perfiles;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String[][] toArray() {
        String[][] a = perfiles;
        String[][] b = new String[a.length - 1][3];
        util.imprimir(a);

        for (int i = 1; i < a.length; i++) {

            String checked = "";
            System.out.println("" + permissions.get(util.SearchMariz(a, "codigo", 0, i)));

            if (permissions.get(util.SearchMariz(a, "codigo", 0, i)) != null) {
                if (permissions.get(util.SearchMariz(a, "codigo", 0, i)).equals("Y")) {
                    checked = "checked";
                }
            }

            b[i - 1][0] = a[i][0];
            b[i - 1][1] = a[i][1];
            b[i - 1][2] = " <input id=\"pefil-" + type + "-" + b[i - 1][0] + "\" name=\"pefil-" + type + "-" + b[i - 1][0] + "\" value=\"Y\" type=\"checkbox\" " + checked + " >";
        }

        return b;
    }

    public String[][] toArrayToPermissions() {
        String[][] a = perfiles;
        String[][] b = new String[a.length - 1][2];

        for (int i = 1; i < a.length; i++) {

            b[i - 1][0] = a[i][0];

            if (permissions.get(util.SearchMariz(a, "codigo", 0, i)) != null) {
                if (permissions.get(util.SearchMariz(a, "codigo", 0, i)).equals("Y")) {
                    b[i - 1][1] = "Y";
                }
            } else {
                b[i - 1][1] = "N";
            }
        }

        return b;
    }

}
