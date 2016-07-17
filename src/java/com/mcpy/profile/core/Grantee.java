/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.profile.core;

import com.mcpy.profile.objects.model.ObjetDB;
import com.mcpy.control.database.Database;
import com.mcpy.control.database.ParamDB;
import com.mcpy.control.util;
import com.mcpy.profile.model.Profile;
import com.mcpy.profile.model.ProfileObjects;
import com.mcpy.user.model.UserProfiles;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Iterator;

/**
 *
 * @author AGiraldo
 */
public class Grantee {

    public static void Profile(ProfileObjects perfil_objeto, Database conn) throws SQLException {

        PreparedStatement pstm;

        String REVOKE_TABLES = "REVOKE ALL ON ALL TABLES IN SCHEMA " + ParamDB.SCHEMA + " FROM " + perfil_objeto.getProfile().getName_rol();
        String REVOKE_SEQUENCES = "REVOKE ALL ON ALL SEQUENCES IN SCHEMA " + ParamDB.SCHEMA + " FROM " + perfil_objeto.getProfile().getName_rol();
        String REVOKE_FUNCTIONS = "REVOKE ALL ON ALL FUNCTIONS IN SCHEMA " + ParamDB.SCHEMA + " FROM " + perfil_objeto.getProfile().getName_rol();

        String[] revoke = new String[]{REVOKE_TABLES, REVOKE_SEQUENCES, REVOKE_FUNCTIONS};
        for (String revoke1 : revoke) {
            pstm = conn.getConexion().prepareStatement(revoke1);
            pstm.execute();
            pstm.close();
        }

        Iterator<ObjetDB> itr = perfil_objeto.getObjectsAL().iterator();
        while (itr.hasNext()) {
            ObjetDB obj = itr.next();
            if (obj.grant().length() > 0) {
                System.out.println("grant: " + "GRANT USAGE ON SCHEMA " + obj.getShema() + " " + perfil_objeto.toGrant());
                pstm = conn.getConexion().prepareStatement("GRANT USAGE ON SCHEMA " + obj.getShema() + " " + perfil_objeto.toGrant());
                pstm.execute();
                pstm.close();

                System.out.println("grant2: " + obj.grant() + " " + perfil_objeto.toGrant());
                pstm = conn.getConexion().prepareStatement(obj.grant() + " " + perfil_objeto.toGrant());
                pstm.execute();
                pstm.close();
            }
        }

    }

    public static void User(UserProfiles user_p, Database conn) throws SQLException {

        PreparedStatement pstm;

        System.out.println("grantee:\n");
        util.imprimir(user_p.getPerfiles());

        System.out.println("permissions:\n");
        util.imprimir(user_p.toArrayToPermissions());

        for (int i = 1; i < user_p.getPerfiles().length; i++) {
            System.out.println("ciclo: " + i);
            Profile p = new Profile(Integer.parseInt(user_p.getPerfiles()[i][0]), "temp");
            pstm = conn.getConexion().prepareStatement("REVOKE " + p.getName_rol() + " FROM " + user_p.getUser().getUsername());
            pstm.execute();
            System.out.println("execute:" + pstm.toString());

            String val = val = user_p.toArrayToPermissions()[i - 1][1];
            if (val != null) {
                if (val.equals("Y")) {
                    pstm = conn.getConexion().prepareStatement("GRANT " + p.getName_rol() + " TO " + user_p.getUser().getUsername());
                    pstm.execute();
                    System.out.println("execute:" + pstm.toString());
                }
            }
        }
    }

}
