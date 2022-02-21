package com.cookie.controller;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "home", value = "/")
public class HomeServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        Cookie[] cookies = ((HttpServletRequest) request).getCookies();
        Cookie userCookie = null;
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("userCookie")){
                userCookie = cookie;
            }
        }
        response.addCookie(userCookie);
        this.getServletContext().getRequestDispatcher("/").forward(request, response);

    }

    public void destroy() {
    }
}