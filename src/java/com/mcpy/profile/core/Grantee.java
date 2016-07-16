/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.profile.core;

import com.mcpy.profile.objects.model.ObjetDB;
import com.mcpy.control.database.Database;
import com.mcpy.control.database.ParamDB;
import com.mcpy.profile.model.ProfileObjects;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Iterator;

/**
 *
 * @author AGiraldo
 */
public class Grantee {

    public static void Grantee(ProfileObjects perfil_objeto, Database conn) throws SQLException {

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

}
