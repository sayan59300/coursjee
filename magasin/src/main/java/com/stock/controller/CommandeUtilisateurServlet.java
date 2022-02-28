package com.stock.controller;

import com.stock.model.Commande;
import com.stock.model.Utilisateur;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

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
        Criteria criteria = session.createCriteria(Commande.class);
        List<Commande> commandes = (List<Commande>) criteria.list();
        criteria.add(Restrictions.eq("utilisateur", utilisateur));
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
