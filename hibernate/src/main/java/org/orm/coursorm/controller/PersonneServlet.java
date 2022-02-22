package org.orm.coursorm.controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.orm.coursorm.model.Personne;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "personne", value = "/personne")
public class PersonneServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Personne personne = new Personne();

        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");

        personne.setNom(nom);
        personne.setPrenom(prenom);
        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        //session.persist(personne);//insert into
        int id = (Integer) session.save(personne);//insert into et retourne l'id
        transaction.commit();
        session.close();
        sessionFactory.close();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        super.doPost(request, response);
    }
}
