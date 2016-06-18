/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.dao;

import com.mcpy.control.database.Database;
import com.mcpy.control.util;
import com.mcpy.core.rol.Grantee;
import com.mcpy.core.rol.Revoke;
import com.mcpy.control.SQLStrings;
import com.mcpy.model.objects.Objeto;
import com.mcpy.model.rol.Perfil;
import com.mcpy.model.rol.Perfil_objeto;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author AGiraldo
 */
public class Perfil_objeto_DAO extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {

        int p = Integer.parseInt(request.getParameter("perfil"));
        String action = request.getParameter("action");

        Database conn = (Database) request.getSession().getAttribute("conn");

        PreparedStatement pstm = conn.getConexion().prepareStatement(SQLStrings.SELECT_PERFIL_X, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        pstm.setInt(1, p);
        String[] a = util.toArray(pstm.executeQuery());
        pstm.close();
        Perfil_objeto perfil = new Perfil_objeto();
        perfil.getPerfil().setCodigo(Integer.parseInt(a[0]));
        perfil.getPerfil().setDescripcion(a[1]);
        perfil.getPerfil().builNameRol();

        pstm = conn.getConexion().prepareStatement(SQLStrings.OBJETOS_PERFIL_X, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        pstm.setInt(1, p);
        String[][] b = util.toMatriz(pstm.executeQuery());
        pstm.close();

        ArrayList<Objeto> obs = new ArrayList<Objeto>();
        for (int i = 0; i < b.length; i++) {
            Objeto obj = new Objeto(b[i][0], b[i][1], b[i][2], b[i][3], b[i][4], b[i][5], b[i][6], b[i][7]);
            obs.add(obj);
        }

        perfil.setObjetos(obs);

        if (action.equalsIgnoreCase("G")) {
            Revoke.Revoke(perfil, conn);
            Grantee.Grantee(perfil, conn);
        } else {
            Revoke.Revoke(perfil, conn);
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Perfil_objeto_DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Perfil_objeto_DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
