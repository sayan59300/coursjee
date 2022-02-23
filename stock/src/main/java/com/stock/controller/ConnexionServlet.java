package com.stock.controller;

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

/**
 * Servlet implementation class ConnexionServlet
 */
@WebServlet(name = "connexion", value = "/connexion")
public class ConnexionServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/").
                forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        Utilisateur user = new Utilisateur();
        int id = Integer.parseInt(request.getParameter("login"));
        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session bddSession = sessionFactory.openSession();
        Transaction transaction = bddSession.beginTransaction();
        user = (Utilisateur) bddSession.get(Utilisateur.class, id);
        transaction.commit();
        bddSession.close();
        sessionFactory.close();

        int userid = user.getId();
        String userPseudo = user.getPseudo();

        session.setAttribute("userid", userid);
        session.setAttribute("userpseudo", userPseudo);

        Utilisateur connectedUser = new Utilisateur(userid, userPseudo);

        session.setAttribute("user", connectedUser);
        this.getServletContext().getRequestDispatcher("/WEB-INF/produit/menuProduit.jsp").
                forward(request, response);
    }
}
