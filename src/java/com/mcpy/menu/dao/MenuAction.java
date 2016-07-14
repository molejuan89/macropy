/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.menu.dao;

import com.mcpy.control.Controller;
import com.mcpy.control.StringsSql;
import com.mcpy.control.database.Database;
import com.mcpy.menu.model.NodoMenu;
import java.io.IOException;
import java.sql.PreparedStatement;
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
 */
@WebServlet(name = "MenuAction", urlPatterns = {"/MenuAction"})
public class MenuAction extends Controller {

    @Override
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {

        Database conn = (Database) request.getSession().getAttribute("conex");
        PreparedStatement pstm = null;

        String action = request.getParameter("action");
        String mensaje = request.getParameter("message");
        String codigo = request.getParameter("code");
        String padre = request.getParameter("father");
        String tipo = request.getParameter("type");
        String link = request.getParameter("link");
        int orden = Integer.parseInt(request.getParameter("order"));
        int nivel = Integer.parseInt(request.getParameter("level"));

        NodoMenu nodo = new NodoMenu(codigo, nivel, padre, orden, mensaje, link, tipo);

        //System.out.println(StringsSql.Menu(action));
        //System.out.println("ac:" + action);

        pstm = conn.getConexion().prepareStatement(StringsSql.Menu(action));
        if (action.equals("menu-add")) {
            pstm.setString(1, nodo.getCode());
            pstm.setInt(2, nodo.getLevel());
            pstm.setString(3, padre);
            pstm.setInt(4, orden);
            pstm.setString(5, mensaje);
            pstm.setString(6, link);
            pstm.setString(7, tipo);
        } else if (action.equals("menu-del")) {
            pstm.setString(1, nodo.getCode());
        } else if (action.equals("menu-upd")) {
            pstm.setInt(1, nodo.getLevel());
            pstm.setString(2, padre);
            pstm.setInt(3, orden);
            pstm.setString(4, mensaje);
            pstm.setString(5, link);
            pstm.setString(6, tipo);
            pstm.setString(7, nodo.getCode());
        }

        pstm.execute();

    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(MenuAction.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
