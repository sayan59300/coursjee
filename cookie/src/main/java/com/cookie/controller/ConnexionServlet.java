package com.cookie.controller;

import com.cookie.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Servlet implementation class ConnexionServlet
 */
@WebServlet(name = "connexion", value = "/connexion")
public class ConnexionServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        int userId = 0;
        String userPseudo;

        userId = Integer.parseInt(request.getParameter("login"));
        userPseudo = request.getParameter("password");

        session.setAttribute("userid", userId);
        session.setAttribute("userpseudo", userPseudo);

        User connectedUser = new User(userId, userPseudo);

        session.setAttribute("user", connectedUser);
        this.getServletContext().getRequestDispatcher("/").forward(request, response);
    }
}
