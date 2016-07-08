/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.menu.dao;

import com.mcpy.control.StringsSql;
import com.mcpy.control.database.Database;
import com.mcpy.control.util;
import com.mcpy.menu.model.Menu;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author AGiraldo
 */
public class MenuDao {

    public static Menu MenuUserDao(Database conex) throws SQLException {
        Menu menu = null;

        //System.out.println(StringsSql.SqlMenu("menu-user"));
        String[][] a = null;
        try (PreparedStatement pstm = conex.getConexion().prepareStatement(StringsSql.SqlMenu("menu-user"), ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY)) {
            a = util.toMatriz(pstm.executeQuery());
        }

        if (a != null) {
            menu = new Menu(a, "RAIZ");
        }

        return menu;
    }
}
