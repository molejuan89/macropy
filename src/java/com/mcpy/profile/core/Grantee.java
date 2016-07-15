/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.profile.core;

import com.mcpy.profile.model.Profile_objec_OLD;
import com.mcpy.profile.objects.model.ObjetDB;
import com.mcpy.control.database.Database;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Iterator;

/**
 *
 * @author AGiraldo
 */
public class Grantee {

    public static void Grantee(Profile_objec_OLD perfil_objeto, Database conn) throws SQLException {

        PreparedStatement pstm;
        Iterator<ObjetDB> itr = perfil_objeto.getObjetos().iterator();
        while (itr.hasNext()) {
            com.mcpy.profile.objects.model.ObjetDB obj = itr.next();
            pstm = conn.getConexion().prepareStatement("GRANT USAGE ON SCHEMA " + obj.getShema() + " " + perfil_objeto.toGrant());
            pstm.execute();
            pstm.close();

            pstm = conn.getConexion().prepareStatement(obj.grant() + " " + perfil_objeto.toGrant());
            pstm.execute();
            pstm.close();
        }

    }

}
