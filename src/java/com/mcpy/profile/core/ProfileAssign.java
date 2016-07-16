/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.profile.core;

import com.mcpy.control.Controller;
import com.mcpy.control.StringsSql;
import static com.mcpy.control.StringsSql.ProfileNodes;
import com.mcpy.profile.model.Profile;
import com.mcpy.control.database.*;
import com.mcpy.control.util;
import com.mcpy.profile.model.ProfileNodes;
import com.mcpy.profile.model.ProfileObjects;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author AGiraldo
 * @WebServlet(name = "ProfileAction", urlPatterns = {"/ProfileAction"}) public
 * class ProfileAction extends Controller {
 */
@WebServlet(name = "ProfileAssign", urlPatterns = {"/ProfileAssign"})
public class ProfileAssign extends Controller {

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

        Profile profile = (Profile) request.getSession().getAttribute("profile");

        ProfileNodes pnodes = (ProfileNodes) request.getSession().getAttribute("pnodes");
        String[][] mpnodes = pnodes.getMenu().to_ArrayToPermissions();
        for (int i = 0; i < mpnodes.length; i++) {
            String val = request.getParameter(mpnodes[i][0]);
            if (val != null) {
                mpnodes[i][1] = val;
            } else {
                mpnodes[i][1] = "N";
            }
        }

        pstm = conex.getConexion().prepareStatement(StringsSql.ProfileNodes("profil-nodes-del-all"));
        pstm.setInt(1, profile.getCodigo());
        pstm.execute();

        pstm = conex.getConexion().prepareStatement(StringsSql.ProfileNodes("profil-nodes-ins"));
        for (int i = 0; i < mpnodes.length; i++) {
            String val = mpnodes[i][1];
            if (val.equals("Y")) {
                pstm.setInt(1, profile.getCodigo());
                pstm.setString(2, mpnodes[i][0]);
                pstm.execute();
            }
        }

        ProfileObjects pobjects = (ProfileObjects) request.getSession().getAttribute("pobjects");
        System.out.println("pobjects:");
        util.imprimir(pobjects.getObjects());
        String[][] mpobjects = pobjects.getObjects();

        for (int i = 0; i < mpobjects.length; i++) {
            for (int j = 3; j < mpobjects[i].length; j++) {
                String val = request.getParameter(mpobjects[i][0] + "-" + mpobjects[i][1] + "-col" + j);

                if (val != null) {
                    mpobjects[i][j] = val;
                } else {
                    mpobjects[i][j] = "N";
                }
            }
        }

        pstm = conex.getConexion().prepareStatement(StringsSql.ProfilObjects("profil-objects-del-all"));
        pstm.setInt(1, profile.getCodigo());
        pstm.execute();

        pstm = conex.getConexion().prepareStatement(StringsSql.ProfilObjects("profil-objects-ins"));
        for (int i = 0; i < mpobjects.length; i++) {
            pstm.setInt(1, profile.getCodigo());
            pstm.setString(2, mpobjects[i][0]);
            pstm.setString(3, mpobjects[i][1]);
            pstm.setString(4, mpobjects[i][3]);
            pstm.setString(5, mpobjects[i][4]);
            pstm.setString(6, mpobjects[i][5]);
            pstm.setString(7, mpobjects[i][6]);
            pstm.setString(8, mpobjects[i][7]);
            pstm.execute();
        }
        pobjects.setObjects(mpobjects);
        Grantee.Grantee(pobjects, conex);

    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ProfileAssign.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ProfileAssign.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
