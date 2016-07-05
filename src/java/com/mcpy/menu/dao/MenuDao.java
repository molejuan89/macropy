/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.menu.dao;

import com.mcpy.control.database.Database;
import com.mcpy.control.database.ParamDB;
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

    public static Menu MenuDao(Database conex) throws SQLException {
        Menu menu = null;
        String SQL_MENU = "select * \n"
                + "from {schema}.nodos n\n"
                + "where exists(select 1\n"
                + "		from {schema}.perfil_nodos pf, {schema}.usuario_perfiles up\n"
                + "		where pf.perfil=up.perfil\n"
                + "		and up.username=user\n"
                + "		and up.tipo='O' \n"
                + "		and n.codigo=pf.nodo_cod\n"
                + "		)"
                + "order by gerarquia,orden";

        String SQL_MENU_FINAL = SQL_MENU.replace("{schema}", ParamDB.SCHEMA);
        String[][] a = null;
        try (PreparedStatement pstm = conex.getConexion().prepareStatement(SQL_MENU_FINAL, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY)) {
            a = util.toMatriz(pstm.executeQuery());
        }

        if (a != null) {
            menu = new Menu(a, "RAIZ");
        }

        return menu;
    }

}
