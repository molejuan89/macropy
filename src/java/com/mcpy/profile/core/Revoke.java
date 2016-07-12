/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.profile.core;

import com.mcpy.profile.model.Profile_objec;
import com.mcpy.profile.objects.model.Objeto;
import com.mcpy.control.database.Database;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Iterator;

/**
 *
 * @author AGiraldo
 */
public class Revoke {

    public static void Revoke(Profile_objec perfil_objeto, Database conn) throws SQLException {

        PreparedStatement pstm;
        Iterator<Objeto> itr = perfil_objeto.getObjetos().iterator();
        while (itr.hasNext()) {
            com.mcpy.profile.objects.model.Objeto obj = itr.next();
            pstm = conn.getConexion().prepareStatement(obj.revoke() + " " + perfil_objeto.toRevoke());
            pstm.execute();
        }

    }

}
