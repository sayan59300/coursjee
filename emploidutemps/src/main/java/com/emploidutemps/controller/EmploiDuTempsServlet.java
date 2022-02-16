package com.emploidutemps.controller;

import com.emplodutemps.model.Creneau;
import com.emplodutemps.model.EmploiDuTemps;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "emploiDuTemps", value = "/emploi-du-temps")
public class EmploiDuTempsServlet extends HttpServlet {
    private static final String FILE_NAME = "C:\\Users\\sayan593\\Documents\\semaine.txt";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EmploiDuTemps planning = new EmploiDuTemps();
        //Creneau c = new Creneau("Lundi", 1, 2, "JEE");
        //planning.ajouterCreneau(c);
        request.setAttribute("liste", planning.getSemaine());
        this.getServletContext().getRequestDispatcher("/WEB-INF/semaine/semaine.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EmploiDuTemps planning = new EmploiDuTemps();
        Creneau creneau = new Creneau((String) request.getParameter("jour"),
                Integer.parseInt(request.getParameter("heure-debut")),
                Integer.parseInt(request.getParameter("heure-fin")),
                (String) request.getParameter("matiere")
        );
        planning.ajouterCreneau(creneau);
        this.getServletContext().getRequestDispatcher("/").forward(request, response);
    }
}