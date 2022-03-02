package com.heritage.controller;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "PersonneServlet", value = "/personne/liste")
public class PersonneServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/personne/listePersonne.jsp").forward(request,response);
    }

    public void destroy() {
    }
}