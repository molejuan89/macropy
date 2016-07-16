/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.profile.dao;

import com.mcpy.control.StringsSql;
import com.mcpy.control.database.Database;
import com.mcpy.control.util;
import com.mcpy.menu.model.Menu;
import com.mcpy.profile.model.Profile;
import com.mcpy.profile.model.ProfileNodes;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author AGiraldo
 */
public class ProfileNodesDao {

    public static ProfileNodes ProfileNodesDao(Database conex, Profile profile) throws SQLException {
        ProfileNodes pnodes = null;
        Menu menu = null;

        //System.out.println(StringsSql.Menu("menu-user"));
        String[][] a = null;
        try (PreparedStatement pstm = conex.getConexion().prepareStatement(StringsSql.Menu("menu-app"), ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY)) {
            a = util.toMatriz(pstm.executeQuery());
        }

        if (a != null) {
            menu = new Menu(a, "RAIZ");
        }

        String[][] permissions = null;
        try (PreparedStatement pstm = conex.getConexion().prepareStatement(StringsSql.ProfileNodes("profil-nodes"), ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY)) {
            pstm.setInt(1, profile.getCodigo());
            permissions = util.toMatriz(pstm.executeQuery());
        }

        pnodes = new ProfileNodes(profile, menu, permissions);
        return pnodes;
    }

}
