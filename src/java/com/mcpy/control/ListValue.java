/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.control;

import javax.servlet.annotation.WebServlet;
import com.google.gson.Gson;
import com.mcpy.control.database.Database;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedHashMap;
import java.util.Map;
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
@WebServlet(name = "ListValue", urlPatterns = {"/ListValue"})
public class ListValue extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {

        String lista = (String) request.getParameter("list");
        String param1 = (String) request.getParameter("p1");
        Database conex = (Database) request.getSession().getAttribute("conex");
        PreparedStatement pstm = null;

        System.out.println("param1:" + param1);
        if (param1 != null && param1.length() > 0) {
            pstm = conex.getConexion().prepareStatement(StringsSql.Lists(lista), ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            pstm.setString(1, param1);
        } else {
            pstm = conex.getConexion().prepareStatement(StringsSql.Lists(lista), ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        }

        String json = new Gson().toJson(util.arrayToMap(util.toMatriz(pstm.executeQuery())));
        pstm.close();
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(json);

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ListValue.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ListValue.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
