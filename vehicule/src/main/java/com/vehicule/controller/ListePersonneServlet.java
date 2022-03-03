package com.vehicule.controller;

import com.vehicule.model.Personne;
import org.hibernate.Criteria;
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

@WebServlet(name = "ListePersonneServlet", value = "/personne/liste")
public class ListePersonneServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        Criteria criteria = session.createCriteria(Personne.class);
        List<Personne> personne = (List<Personne>) criteria.list();
        transaction.commit();
        session.close();
        sessionFactory.close();
        request.setAttribute("liste", personne);
        this.getServletContext().getRequestDispatcher("/WEB-INF/personne/liste.jsp").forward(request, response);

    }
}
