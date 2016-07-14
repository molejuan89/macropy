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
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author AGiraldo
 */
@WebServlet(name = "MenuApp", urlPatterns = {"/MenuApp"})
public class MenuApp extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Database conex = (Database) request.getSession().getAttribute("conex");
        Menu menu = null;
        String[][] a = null;

        try {
            try (PreparedStatement pstm = conex.getConexion().prepareStatement(StringsSql.Menu("menu-app"), ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY)) {
                a = util.toMatriz(pstm.executeQuery());
            }

            if (a != null) {
                menu = new Menu(a, "RAIZ");
            }

        } catch (SQLException ex) {
            Logger.getLogger(MenuApp.class.getName()).log(Level.SEVERE, null, ex);
        }

        String[] x = {"code", "id", "son", "children"};
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(menu.escribirJson(x));
    }
}
