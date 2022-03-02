package com.stock.controller;

import com.stock.model.Panier;
import com.stock.model.PanierClient;
import com.stock.model.Produit;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "PanierServlet", value = "/panier")
public class PanierServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/panier/panierClient.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        int quantite = Integer.parseInt(request.getParameter("quantite"));
        HttpSession requestSession = request.getSession();
        Panier panier = new Panier();
        PanierClient panierClient = new PanierClient(requestSession);

        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        Produit produit = (Produit) session.get(Produit.class, id);
        transaction.commit();
        session.close();
        sessionFactory.close();
        panier.setProduit(produit).setQuantite(quantite);
        panierClient.ajouterPanier(panier);
        response.sendRedirect(request.getContextPath() + "/produit/liste");
    }
}
