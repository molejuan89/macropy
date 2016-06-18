/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.control;

import com.mcpy.control.database.Database;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.mcpy.control.database.ParamDB;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author AGiraldo
 */
public class login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            com.mcpy.control.database.Database conn = new Database("POSTGRESQL", ParamDB.SERVER, ParamDB.DATABASE, ParamDB.USER, ParamDB.PASSWORD);
            conn.conectar();
            request.getSession().setAttribute("conn", conn);
            response.sendRedirect("GrantProfile?perfil=2&action=G");
            
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
