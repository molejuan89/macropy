/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.dao;

import com.mcpy.control.database.*;
import com.mcpy.model.rol.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jboss.logging.Param;

/**
 *
 * @author AGiraldo
 */
public class Perfil_DAO extends HttpServlet {

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

        Perfil perfil = (com.mcpy.model.rol.Perfil) request.getAttribute("perfil");
        String action = request.getParameter("action");;
        Database conn = (Database) request.getSession().getAttribute("conexion");

        if (action.equalsIgnoreCase("create")) {
            PreparedStatement pstm = conn.getConexion().prepareStatement(com.mcpy.control.SQLStrings.CREATE_PERFIL);
            pstm.setInt(1, perfil.getCodigo());
            pstm.setString(2, perfil.getDescripcion());
            pstm.setString(3, perfil.getAdmin());
            pstm.execute();
        } else if (action.equalsIgnoreCase("update")) {
            PreparedStatement pstm = conn.getConexion().prepareStatement(com.mcpy.control.SQLStrings.UPDATE_PERFIL);
            pstm.setString(1, perfil.getDescripcion());
            pstm.setString(2, perfil.getAdmin());
            pstm.setInt(3, perfil.getCodigo());
            pstm.execute();
        } else if (action.equalsIgnoreCase("delete")) {
            PreparedStatement pstm = conn.getConexion().prepareStatement(com.mcpy.control.SQLStrings.DELETE_PERFIL);
            pstm.setString(1, perfil.getDescripcion());
            pstm.execute();
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Perfil_DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Perfil_DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
