/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.control;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author AGiraldo
 */
@WebServlet(name = "Controller", urlPatterns = {"/Controller"})
public abstract class Controller extends HttpServlet {

    protected String initForm = null;
    protected String errorForm = null;
    protected String successForm = null;

    protected String access = null;
    protected String dashboard = null;

    protected String menuAction = null;
    protected String profileAction = null;

    protected abstract void processRequest(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException, SQLException, MessagingException;

    protected void gotoNamedResource(String address,
            HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        RequestDispatcher dispatcher
                = getServletContext().getNamedDispatcher(address);
        dispatcher.forward(request, response);
    }

    protected void gotoURL(String address, HttpServletRequest request,
            HttpServletResponse response) throws ServletException,
            IOException {
        System.out.println("Class:Controller gotoURL:" + address);
        RequestDispatcher dispatcher
                = getServletContext().getRequestDispatcher(address);
        dispatcher.forward(request, response);
    }

    @Override
    public void init() {
        ServletConfig config = getServletConfig();
        ServletContext context = config.getServletContext();

        initForm = "/index.jsp";
        errorForm = "/message.jsp";
        successForm = "/message.jsp";

        access = "/Access";
        dashboard = "/dashboard.jsp";

        menuAction = "/MenuAction";
        profileAction = "/ProfileAction";

    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
        } catch (MessagingException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
        } catch (MessagingException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void endTransactionSuccess(HttpServletRequest request, HttpServletResponse response, String tittle, String message)
            throws ServletException, IOException {
        request.getSession().setAttribute("type", "success");
        request.getSession().setAttribute("tittle", tittle);
        request.getSession().setAttribute("message", message);
        gotoURL(successForm, request, response);
    }

    public void endTransactionError(HttpServletRequest request, HttpServletResponse response, String tittle, String message)
            throws ServletException, IOException {
        request.getSession().setAttribute("type", "danger");
        request.getSession().setAttribute("tittle", tittle);
        request.getSession().setAttribute("message", message);
        gotoURL(errorForm, request, response);
    }

    public void endTransactionSuccess(HttpServletRequest request, HttpServletResponse response, String tittle, String message, String link_btn, String txt_btn)
            throws ServletException, IOException {
        request.getSession().setAttribute("type", "success");
        request.getSession().setAttribute("tittle", tittle);
        request.getSession().setAttribute("message", message);
        request.getSession().setAttribute("link-btn", link_btn);
        request.getSession().setAttribute("txt-btn", txt_btn);
        gotoURL(successForm, request, response);
    }

    public void endTransactionError(HttpServletRequest request, HttpServletResponse response, String tittle, String message, String link_btn, String txt_btn)
            throws ServletException, IOException {
        request.getSession().setAttribute("type", "danger");
        request.getSession().setAttribute("tittle", tittle);
        request.getSession().setAttribute("message", message);
        request.getSession().setAttribute("link-btn", link_btn);
        request.getSession().setAttribute("txt-btn", txt_btn);
        gotoURL(errorForm, request, response);
    }
}
