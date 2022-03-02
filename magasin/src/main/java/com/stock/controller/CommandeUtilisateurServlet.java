package com.stock.controller;

import com.stock.model.Commande;
import com.stock.model.Utilisateur;
import org.hibernate.SQLQuery;
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
import java.util.List;

@WebServlet(name = "CommandeUtilisateurServlet", value = "/utilisateur/commandes")
public class CommandeUtilisateurServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Utilisateur utilisateur = (Utilisateur) request.getSession().getAttribute("user");
        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        String sqlRequest = "SELECT * FROM commande WHERE utilisateur_id = :id";
        SQLQuery query = session.createSQLQuery(sqlRequest);
        query.addEntity(Commande.class);
        query.setParameter("id", utilisateur.getId());
        List<Commande> commandes = (List<Commande>) query.list();
        transaction.commit();
        request.setAttribute("liste", commandes);
        session.close();
        sessionFactory.close();

        this.getServletContext().getRequestDispatcher("/WEB-INF/utilisateur/commandesUtilisateur.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
