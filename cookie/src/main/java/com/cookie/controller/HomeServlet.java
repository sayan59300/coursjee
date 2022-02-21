package com.cookie.controller;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "home", value = "/")
public class HomeServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        this.getServletContext().getRequestDispatcher("/").forward(request, response);

    }

    public void destroy() {
    }
}