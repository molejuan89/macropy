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
@WebServlet(name = "Action", urlPatterns = {"/Action"})
public class Action extends Controller {

    @Override
    protected void processRequest(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");
        System.out.println("action:" + action);

        if (action == null) {
            gotoURL(errorForm, request, response);
        } else if (action.equals("errorForm")) {
            gotoNamedResource(errorForm, request, response);
        } else if (action.equals("front")) {
            System.out.println("antes del reenvio");
            gotoURL(front, request, response);
            System.out.println("despues del reenvio");
        } else if (action.equals("UserActivation")) {
            gotoNamedResource(activate, request, response);
        } else if (action.equals("updateServlet")) {
            gotoNamedResource(update, request, response);
        } else if (action.equals("deleteServlet")) {
            gotoNamedResource(delete, request, response);
        } else if (action.equals("readServlet")) {
            gotoNamedResource(read, request, response);
        } else {
            gotoURL(errorForm, request, response);
        }
    }

}
