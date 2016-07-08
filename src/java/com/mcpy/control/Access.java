/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.control;

import com.mcpy.control.database.Database;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.mcpy.control.database.ParamDB;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;

/**
 *
 * @author AGiraldo
 */
@WebServlet(urlPatterns = {"/Access"})
public class Access extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {

        String user = (String) request.getParameter("txt_user");
        String pass = (String) request.getParameter("txt_pass");
        String bd = (String) request.getParameter("txt_database");

        try {
            Database conex;
            conex = new Database("POSTGRESQL", ParamDB.SERVER, bd, user, pass);

            conex.conectar();
            if (conex.getConexion().isValid(10)) {
                request.getSession().setAttribute("conex", conex);

                String ipAddress = request.getHeader("X-FORWARDED-FOR");
                if (ipAddress == null) {
                    ipAddress = request.getRemoteAddr();
                }

                System.out.println("login accept");
//                PreparedStatement pstm = conex.getConexion().prepareStatement("INSERT INTO TQXC_SESION_LOG (USERNAME, FECHA_SISTEMA, IP_CLIENTE) VALUES ( USER,SYSDATE,? )");
//                pstm.setString(1, ipAddress);
//                pstm.executeUpdate();

                RequestDispatcher dispatcher
                        = getServletContext().getRequestDispatcher("/process?action=dashboard");
                dispatcher.forward(request, response);
                //response.sendRedirect("front.jsp");

            }

        } catch (SQLException e) {
            System.out.println("login deneid: " + e.getMessage());
            //response.sendRedirect("error.jsp?titulo=Access Denied!&msg=Error iniciando sesion. Conexion no valida. \n" + e.toString());
        } catch (Exception e) {
            System.out.println("login deneid: " + e.getMessage());
            //response.sendRedirect("error.jsp?titulo=Access Denied!&msg=Error iniciando sesion. Conexion no valida. \n" + e.toString());
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(Access.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
