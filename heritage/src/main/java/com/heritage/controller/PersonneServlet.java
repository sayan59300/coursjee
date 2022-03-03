package com.heritage.controller;

import com.heritage.model.Enseignant;
import com.heritage.model.Etudiant;
import com.heritage.model.Personne;
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
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "PersonneServlet", value = "/personne/liste")
public class PersonneServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        Criteria criteria = session.createCriteria(Personne.class);
        List<Personne> datas = (List<Personne>) criteria.list();
        List<Personne> personnes = new ArrayList<>();
        List<Personne> etudiants = new ArrayList<>();
        List<Personne> enseignants = new ArrayList<>();
        for (Personne p : datas) {
            if (p.getClass() == Personne.class) {
                personnes.add(p);
            } else if (p.getClass() == Etudiant.class) {
                etudiants.add(p);
            } else if (p.getClass() == Enseignant.class) {
                enseignants.add(p);
            } else {
                break;
            }
        }
        transaction.commit();
        session.close();
        sessionFactory.close();
        request.setAttribute("personnes", personnes);
        request.setAttribute("etudiants", etudiants);
        request.setAttribute("enseignants", enseignants);
        this.getServletContext().getRequestDispatcher("/WEB-INF/personne/listePersonne.jsp").forward(request, response);
    }

    public void destroy() {
    }
}