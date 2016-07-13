/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.profile.dao;

import com.google.gson.Gson;
import com.mcpy.control.StringsSql;
import com.mcpy.control.database.Database;
import com.mcpy.control.util;
import com.mcpy.menu.dao.MenuApp;
import com.mcpy.menu.model.Menu;
import com.mcpy.profile.model.Profile;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
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
 *
 */
@WebServlet(name = "ProfilesApp", urlPatterns = {"/ProfilesApp"})
public class ProfilesApp extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Database conex = (Database) request.getSession().getAttribute("conex");
        String[][] a = null;
        ArrayList<Profile> ps = new ArrayList<Profile>();

        try {
            try (PreparedStatement pstm = conex.getConexion().prepareStatement(StringsSql.Profile("profiles-app"), ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY)) {
                a = util.toMatriz(pstm.executeQuery());

                for (int i = 0; i < a.length; i++) {
                    Profile e = new Profile(a[i]);
                    ps.add(e);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(MenuApp.class.getName()).log(Level.SEVERE, null, ex);
        }

        Gson gson = new Gson();
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(gson.toJson(ps));
    }

}
