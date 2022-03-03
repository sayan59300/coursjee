package com.heritage.controller;

import com.heritage.model.Enseignant;
import com.heritage.model.Etudiant;
import com.heritage.model.Personne;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AjoutPersonneServlet", value = "/personne/ajouter")
public class AjoutPersonneServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/personne/ajoutPersonne.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String type = request.getParameter("type");

        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        if (type.equals("pers")) {
            Personne personne = new Personne(nom, prenom);
            session.persist(personne);
        } else if (type.equals("etu")) {
            Etudiant personne = new Etudiant();
            String niveau = request.getParameter("niveau");
            personne.withNiveau(niveau).withNom(nom).withPrenom(prenom);
            session.persist(personne);
        } else if (type.equals("ens")) {
            Enseignant personne = new Enseignant();
            int salaire = Integer.parseInt(request.getParameter("salaire"));
            personne.withSalaire(salaire).withNom(nom).withPrenom(prenom);
            session.persist(personne);
        } else {
            transaction.commit();
            session.close();
            sessionFactory.close();
            response.sendRedirect(request.getContextPath() + "/personne/ajouter");
        }
        transaction.commit();
        session.close();
        sessionFactory.close();
        response.sendRedirect(request.getContextPath() + "/personne/liste");
    }
}
