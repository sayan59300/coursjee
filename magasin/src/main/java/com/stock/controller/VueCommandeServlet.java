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

@WebServlet(name = "VueCommandeServlet", value = "/commande")
public class VueCommandeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Utilisateur utilisateur = (Utilisateur) request.getSession().getAttribute("user");
        int id = Integer.parseInt(request.getParameter("id"));
        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        String sqlRequest = "SELECT * FROM commande WHERE id = :id";
        SQLQuery query = session.createSQLQuery(sqlRequest);
        query.addEntity(Commande.class);
        query.setParameter("id", id);
        List<Commande> commandes = (List<Commande>) query.list();
        transaction.commit();
        session.close();
        sessionFactory.close();
        if (commandes.get(0).getUtilisateur().getId() == utilisateur.getId()) {
            request.setAttribute("commande", commandes.get(0));
            this.getServletContext().getRequestDispatcher("/WEB-INF/commande/vueCommande.jsp").forward(request, response);
        }
        response.sendRedirect(request.getContextPath() + "/utilisateur/commandes");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
