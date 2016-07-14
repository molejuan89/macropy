/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.profile.dao;

import com.mcpy.control.Controller;
import com.mcpy.control.StringsSql;
import com.mcpy.profile.model.Profile;
import com.mcpy.control.database.*;
import com.mcpy.control.util;
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
 * @WebServlet(name = "ProfileAction", urlPatterns = {"/ProfileAction"}) public
 * class ProfileAction extends Controller {
 */
@WebServlet(name = "ProfileAction", urlPatterns = {"/ProfileAction"})
public class ProfileAction extends Controller {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {

        Database conex = (Database) request.getSession().getAttribute("conex");
        PreparedStatement pstm = null;
        PreparedStatement pstm2 = null;

        String action = request.getParameter("action");
        String descripcion = request.getParameter("descripcion");
        String admin = request.getParameter("admin");

        int codigo = -1;
        try {
            codigo = Integer.parseInt(request.getParameter("codigo"));
        } catch (Exception e) {
            codigo = -1;
        }

        pstm2 = conex.getConexion().prepareStatement(StringsSql.Profile("next"), ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        int next = Integer.parseInt(util.toArray(pstm2.executeQuery())[0]);
        pstm2.close();
        System.out.println("next:" + StringsSql.Profile("next"));
        System.out.println("next=" + next);

        Profile perfil = new Profile(codigo, descripcion, admin);
        pstm = conex.getConexion().prepareStatement(StringsSql.Profile(action));

        if (action.equalsIgnoreCase("profile-add")) {
            perfil.setCodigo(next);
            pstm.setInt(1, perfil.getCodigo());
            pstm.setString(2, perfil.getDescripcion());
            pstm.setString(3, perfil.getAdmin());
            pstm.execute();
        } else if (action.equalsIgnoreCase("profile-upd")) {
            pstm.setString(1, perfil.getDescripcion());
            pstm.setString(2, perfil.getAdmin());
            pstm.setInt(3, perfil.getCodigo());
            pstm.execute();
        } else if (action.equalsIgnoreCase("profile-del")) {
            pstm.setString(1, perfil.getDescripcion());
            pstm.execute();
        }

    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ProfileAction.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ProfileAction.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
