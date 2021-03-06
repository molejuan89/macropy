/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.profile.core;

import com.mcpy.profile.objects.model.ObjetDB;
import com.mcpy.control.database.Database;
import com.mcpy.profile.model.ProfileObjects;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Iterator;

/**
 *
 * @author AGiraldo
 */
public class Revoke {

    public static void Revoke(ProfileObjects perfil_objeto, Database conn) throws SQLException {

        PreparedStatement pstm;
        Iterator<ObjetDB> itr = perfil_objeto.getObjectsAL().iterator();
        while (itr.hasNext()) {
            com.mcpy.profile.objects.model.ObjetDB obj = itr.next();
            pstm = conn.getConexion().prepareStatement(obj.revoke() + " " + perfil_objeto.toRevoke());
            pstm.execute();
        }

    }

}
