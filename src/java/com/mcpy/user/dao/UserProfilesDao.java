/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.user.dao;

import com.mcpy.control.StringsSql;
import static com.mcpy.control.StringsSql.User;
import com.mcpy.control.database.Database;
import com.mcpy.control.util;
import com.mcpy.user.model.User;
import com.mcpy.user.model.UserProfiles;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author AGiraldo
 */
public class UserProfilesDao {

    public static UserProfiles UserProfilesDao(Database conex, User user, String type) throws SQLException {
        UserProfiles usuario_perfiles = null;

        String[][] perfiles = null;
        try (PreparedStatement pstm = conex.getConexion().prepareStatement(StringsSql.Profile("profil-sel-all"), ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY)) {
            perfiles = util.toMatrizTitle(pstm.executeQuery());
        }

        String[][] permissions = null;
        try (PreparedStatement pstm = conex.getConexion().prepareStatement(StringsSql.UserProfile("user-profile-type"), ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY)) {
            pstm.setString(1, user.getUsername());
            pstm.setString(2, type.toUpperCase());
            System.out.println("pstm=" + pstm.toString());
            permissions = util.toMatriz(pstm.executeQuery());
            System.out.println("Class:UserProfilesDao type=" + type + "length=:" + permissions.length + "\n");
            util.imprimir(permissions);
        }

        usuario_perfiles = new UserProfiles(user, perfiles, permissions, type);
        return usuario_perfiles;
    }
}
