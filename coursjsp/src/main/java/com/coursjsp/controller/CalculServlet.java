package com.coursjsp.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalculServlet", value = "/calcul")
public class CalculServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/calcul/calcul.jsp").forward(request, response);

        /*int a = Integer.parseInt(request.getParameter("a"));
        int b = Integer.parseInt(request.getParameter("b"));
        int resultat = 0;
        String operateur = request.getParameter("o");

        if (operateur.equals("addition")) {
            resultat = (a + b);
        } else if (operateur.equals("soustraction")) {
            resultat = (a - b);
        } else if (operateur.equals("produit")) {
            resultat = (a * b);
        } else if (operateur.equals("division")) {
            resultat = (a / b);
        }

        response.getWriter().print(operateur + " de " + a + " et de " + b + " = " + resultat);*/
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
