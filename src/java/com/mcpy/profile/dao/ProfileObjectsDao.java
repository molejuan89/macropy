/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.profile.dao;

import com.mcpy.control.StringsSql;
import com.mcpy.control.database.Database;
import com.mcpy.control.util;
import com.mcpy.profile.model.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author AGiraldo
 */
public class ProfileObjectsDao {

    public static ProfileObjects ProfileObjectsDao(Database conex, Profile profile) throws SQLException {
        ProfileObjects pobjects = null;

        String[][] a = null;
        try (PreparedStatement pstm = conex.getConexion().prepareStatement(StringsSql.ProfilObjects("profil-obj-all"), ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY)) {
            pstm.setInt(1, profile.getCodigo());
            a = util.toMatriz(pstm.executeQuery());
        }

        pobjects = new ProfileObjects(profile, a);

        return pobjects;
    }
}
