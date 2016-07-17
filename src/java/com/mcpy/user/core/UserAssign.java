/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.user.core;

import com.mcpy.control.Controller;
import com.mcpy.control.StringsSql;
import com.mcpy.control.database.Database;
import com.mcpy.control.util;
import com.mcpy.profile.core.Grantee;
import com.mcpy.user.model.User;
import com.mcpy.user.model.UserProfiles;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
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
@WebServlet(name = "UserAssign", urlPatterns = {"/UserAssign"})
public class UserAssign extends Controller {

    Database conex = null;
    User user = null;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        conex = (Database) request.getSession().getAttribute("conex");
        user = (User) request.getSession().getAttribute("user");

        UserProfiles pview = (UserProfiles) request.getSession().getAttribute("pview");
        UserProfiles pacces = (UserProfiles) request.getSession().getAttribute("pacces");

        pview = asignarUsuario(pview, request, response);
        pacces = asignarUsuario(pacces, request, response);
        Grantee.User(pacces, conex);

    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(UserAssign.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(UserAssign.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    protected UserProfiles asignarUsuario(UserProfiles uPerfiles, HttpServletRequest request, HttpServletResponse response)
            throws SQLException {

        PreparedStatement pstm = null;

        String[][] muPerfiles_request = new String[uPerfiles.getPerfiles().length - 1][2];

        for (int i = 0; i < muPerfiles_request.length; i++) {
            muPerfiles_request[i][0] = uPerfiles.getPerfiles()[i + 1][0];
        }

        for (int i = 0; i < muPerfiles_request.length; i++) {
            String val = request.getParameter("pefil-" + uPerfiles.getType() + "-" + muPerfiles_request[i][0]);
            if (val != null) {
                muPerfiles_request[i][1] = val;
            } else {
                muPerfiles_request[i][1] = "N";
            }
        }

        pstm = conex.getConexion().prepareStatement(StringsSql.UserProfile("user-profile-del-all-type"));
        System.out.println("pstm:" + pstm.toString());
        pstm.setString(1, user.getUsername());
        pstm.setString(2, uPerfiles.getType());
        pstm.execute();

        pstm = conex.getConexion().prepareStatement(StringsSql.UserProfile("user-profile-ins"));
        for (int i = 0; i < muPerfiles_request.length; i++) {
            if (muPerfiles_request[i][1].equals("Y")) {
                pstm.setString(1, user.getUsername());
                pstm.setInt(2, Integer.parseInt(muPerfiles_request[i][0]));
                pstm.setString(3, uPerfiles.getType());
                pstm.execute();
            }

        }

        uPerfiles.setPermissions(muPerfiles_request);

        return uPerfiles;
    }
}
