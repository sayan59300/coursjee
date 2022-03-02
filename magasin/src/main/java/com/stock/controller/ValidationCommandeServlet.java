package com.stock.controller;

import com.stock.model.Commande;
import com.stock.model.Panier;
import com.stock.model.ProduitCommande;
import com.stock.model.Utilisateur;
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
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@WebServlet(name = "ValidationCommandeServlet", value = "/commande/validation")
public class ValidationCommandeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession requestSession = request.getSession();
        List<Panier> paniers = (ArrayList<Panier>) requestSession.getAttribute("paniers");
        Utilisateur utilisateur = (Utilisateur) requestSession.getAttribute("user");
        Commande commande = new Commande();
        commande.withUtilisateur(utilisateur).withDateCommande(new Date());

        for (Panier panier : paniers) {
            ProduitCommande produitCommande = new ProduitCommande();
            produitCommande.withCommande(commande).withProduit(panier.getProduit()).setQuantite(panier.getQuantite());
            produitCommande.setPrixTotal();
            commande.addProduitsCommande(produitCommande);
        }

        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.persist(commande);
        transaction.commit();
        session.close();
        sessionFactory.close();

        requestSession.removeAttribute("paniers");

        response.sendRedirect(request.getContextPath() + "/produit/liste");
    }
}
