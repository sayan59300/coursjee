package org.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CalculServlet", value = "/calcul")
public class CalculServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int a = Integer.parseInt(request.getParameter("a"));
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

        response.getWriter().print(operateur + " de " + a + " et de " + b + " = " + resultat);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
