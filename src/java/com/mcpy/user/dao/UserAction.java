/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.user.dao;

import com.mcpy.control.Controller;
import com.mcpy.control.StringsSql;
import com.mcpy.control.database.*;
import com.mcpy.user.model.User;
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
 * @WebServlet(name = "UserAction", urlPatterns = {"/UserAction"}) public class
 * ProfileAction extends Controller {
 */
@WebServlet(name = "UserAction", urlPatterns = {"/UserAction"})
public class UserAction extends Controller {

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
        conex.getConexion().setAutoCommit(false);

        PreparedStatement pstm = null;

        String action = request.getParameter("action");
        String username = request.getParameter("username");
        String nombre = request.getParameter("nombre");
        String apellido1 = request.getParameter("apellido1");
        String apellido2 = request.getParameter("apellido2");
        String telefono = request.getParameter("telefono");
        String email = request.getParameter("email");
        String expira_pass = request.getParameter("expira_pass");
        String password = request.getParameter("password");
        String expira_account = request.getParameter("expira_account");

        int cedula = -1;
        try {
            cedula = Integer.parseInt(request.getParameter("cedula"));
        } catch (Exception e) {
            cedula = -1;
        }

        User user = new User(username, cedula, nombre, apellido1, apellido2, telefono, email, expira_pass, password, expira_account);
        pstm = conex.getConexion().prepareStatement(StringsSql.User(action));
        System.out.println("pstm:\n" + StringsSql.User(action));
        System.out.println(user.getUsername());

        try {
            if (action.equalsIgnoreCase("user-add")) {
                System.out.println("entro en user-add");
                pstm.setString(1, user.getUsername());
                pstm.setInt(2, user.getCedula());
                pstm.setString(3, user.getNombre());
                pstm.setString(4, user.getApellido1());
                pstm.setString(5, user.getApellido2());
                pstm.setString(6, user.getTelefono());
                pstm.setString(7, user.getEmail());
                pstm.setString(8, user.getExpira_pass());
                pstm.setString(9, user.getExpira_account());

                pstm.execute();
                pstm = conex.getConexion().prepareStatement(user.createUser());
                pstm.execute();
               
                /*boolean b1 = pstm.execute();
                if (b1) {
                    System.out.println("ejecuto pstm user table");

                    pstm = conex.getConexion().prepareStatement(user.createUser());
                    System.out.println("create user:" + user.createUser());
                    boolean b2 = pstm.execute();
                    if (b2) {
                        System.out.println("ejecuto pstm user db");
                    }
                }*/

            } else if (action.equalsIgnoreCase("user-upd")) {

                pstm.execute();

            } else if (action.equalsIgnoreCase("user-del")) {

                pstm.execute();
            }

            conex.getConexion().commit();
        } catch (SQLException e) {
            System.out.println("error:" + e.getMessage());
            conex.getConexion().rollback();
        }

    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(UserAction.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(UserAction.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
