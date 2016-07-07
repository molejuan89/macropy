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

        String form = request.getParameter("form");
        System.out.println("form:" + form);

        if (form == null) {
            gotoURL(errorForm, request, response);
        } else if (form.equals("errorForm")) {
            gotoNamedResource(errorForm, request, response);
        } else if (form.equals("front")) {
            gotoURL(front, request, response);
        } else if (form.equals("UserActivation")) {
            gotoNamedResource(activate, request, response);
        } else if (form.equals("updateServlet")) {
            gotoNamedResource(update, request, response);
        } else if (form.equals("deleteServlet")) {
            gotoNamedResource(delete, request, response);
        } else if (form.equals("readServlet")) {
            gotoNamedResource(read, request, response);
        } else {
            gotoURL(errorForm, request, response);
        }
    }

}
