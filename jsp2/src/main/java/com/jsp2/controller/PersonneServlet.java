package com.jsp2.controller;

import com.jsp2.model.Personne;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "PersonneServlet", value = "/personne")
public class PersonneServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Personne personne = new Personne();
        Personne personne2 = new Personne();
        ArrayList<Personne> liste = new ArrayList<>();
        personne.setNom("Robert");
        personne2.setNom("Sylvanus");
        liste.add(personne);
        liste.add(personne2);
        request.setAttribute("liste", liste);
        this.getServletContext().getRequestDispatcher("/WEB-INF/personne/personne.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
