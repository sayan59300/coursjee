package com.stock.controller;

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
import java.io.IOException;

@WebServlet(name = "ProduitServlet", value = "/produit/ajouter")
public class AjoutProduitServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/produit/ajoutProduit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String libelle = request.getParameter("libelle");
        double prix = Double.parseDouble(request.getParameter("prix"));
        String reference = request.getParameter("reference");

        Produit produit = new Produit();
        produit.setLibelle(libelle).setPrix(prix).setReference(reference);
        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.persist(produit);
        transaction.commit();
        session.close();
        sessionFactory.close();
        this.getServletContext().getRequestDispatcher("/").forward(request, response);
    }
}
