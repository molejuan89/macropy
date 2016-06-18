/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.core.rol;

import com.mcpy.model.rol.Perfil_objeto;
import com.mcpy.model.objects.Objeto;
import com.mcpy.control.database.Database;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Iterator;

/**
 *
 * @author AGiraldo
 */
public class Revoke {

    public static void Revoke(Perfil_objeto perfil_objeto, Database conn) throws SQLException {

        PreparedStatement pstm;
        Iterator<Objeto> itr = perfil_objeto.getObjetos().iterator();
        while (itr.hasNext()) {
            com.mcpy.model.objects.Objeto obj = itr.next();
            pstm = conn.getConexion().prepareStatement(obj.revoke() + " " + perfil_objeto.toRevoke());
            pstm.execute();
        }

    }

}
