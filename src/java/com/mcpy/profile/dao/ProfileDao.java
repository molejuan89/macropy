/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.profile.dao;

import com.mcpy.control.StringsSql;
import com.mcpy.control.database.Database;
import com.mcpy.control.util;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author AGiraldo
 */
public class ProfileDao {

    public static String[][] AllProfiles(Database conex) throws SQLException {

        //System.out.println(StringsSql.SqlMenu("menu-user"));
        String[][] a = null;

        try (PreparedStatement pstm = conex.getConexion().prepareStatement(StringsSql.Profile("profil-sel-all"), ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY)) {
            a = util.toMatriz(pstm.executeQuery());
        }

        return a;
    }
}
