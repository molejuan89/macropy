/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author AGiraldo
 */
@WebServlet(name = "process", urlPatterns = {"/process"})
public class Process extends Controller {

    @Override
    protected void processRequest(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");
        System.out.println("Class:Process proxy-action:" + action);

        if (action == null) {
            gotoURL(initForm, request, response);
        } else if (action.equals("errorForm")) {
            gotoNamedResource(errorForm, request, response);
        } else if (action.equals("access")) {
            gotoURL(access, request, response);
        } else if (action.equals("dashboard")) {
            gotoURL(dashboard, request, response);
        } else if (action.equals("menu-add")) {
            gotoURL(menuAction, request, response);
        } else if (action.equals("menu-del")) {
            gotoURL(menuAction, request, response);
        } else if (action.equals("menu-upd")) {
            gotoURL(menuAction, request, response);
        } else if (action.equals("profile-add")) {
            gotoURL(profileAction, request, response);
        } else if (action.equals("profile-del")) {
            gotoURL(profileAction, request, response);
        } else if (action.equals("profile-upd")) {
            gotoURL(profileAction, request, response);
        } else {
            gotoURL(errorForm, request, response);
        }
    }

}
