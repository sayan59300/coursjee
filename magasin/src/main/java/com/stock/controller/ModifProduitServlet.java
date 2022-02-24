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

@WebServlet(name = "ModifProduitServlet", value = "/produit/modifier")
public class ModifProduitServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Produit produit = new Produit();
        int id = Integer.parseInt(request.getParameter("id"));
        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        produit = (Produit) session.get(Produit.class, id);
        transaction.commit();
        session.close();
        sessionFactory.close();
        request.setAttribute("produit", produit);
        this.getServletContext().getRequestDispatcher("/WEB-INF/produit/modifProduit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String libelle = request.getParameter("libelle");
        double prix = Double.parseDouble(request.getParameter("prix"));
        String reference = request.getParameter("reference");

        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        Produit produit = session.get(Produit.class, id);
        produit.setLibelle(libelle).setPrix(prix).setReference(reference);
        session.flush();
        transaction.commit();
        session.close();
        sessionFactory.close();
        this.getServletContext().getRequestDispatcher("/WEB-INF/produit/menuProduit.jsp").forward(request, response);
    }
}
