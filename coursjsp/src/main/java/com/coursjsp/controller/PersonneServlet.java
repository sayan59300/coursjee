package com.coursjsp.controller;

import com.coursjsp.model.Personne;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;
import java.util.ArrayList;

@WebServlet(name = "PersonneServlet", value = "/personne")
public class PersonneServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private static final String FILE_NAME = "C:\\Users\\sayaj\\Documents\\personne.txt";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/personne/personnes.jsp").forward(request, response);

        /*String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        int numero = Integer.parseInt(request.getParameter("numero"));
        String operation = request.getParameter("operation");
        ArrayList<Personne> liste = new ArrayList<Personne>();

        Personne p = new Personne();

        try {
            FileInputStream oldFile = new FileInputStream(FILE_NAME);
            ObjectInputStream oldObject = new ObjectInputStream(oldFile);
            liste = (ArrayList<Personne>) oldObject.readObject();
            oldObject.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        //traitement en fonction de l'opération
        if (operation.equals("ajout")) {
            p.setNom(nom);
            p.setPrenom(prenom);
            p.setNum(numero);
            liste.add(p);
        } else if (operation.equals("modif")) {
            for (Personne personne : liste) {
                if (personne.getNum() == numero) {
                    personne.setPrenom(nom);
                    personne.setPrenom(prenom);
                }
            }
        } else if (operation.equals("suppr")) {
            liste.removeIf(personne -> personne.getNum() == numero);
        } else if (operation.equals("recherche")) {
            boolean trouve = false;
            for (Personne personne : liste) {
                if (personne.getNum() == numero) {
                    trouve = true;
                }
            }
            response.getWriter().print(trouve ? "Personne trouvée" : "Personne non trouvée");
        }

        //sérialiser la nouvelle liste
        try {
            FileOutputStream file = new FileOutputStream(FILE_NAME);
            ObjectOutputStream object = new ObjectOutputStream(file);
            object.writeObject(liste);
            object.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        //affichage
        try {
            FileInputStream fis = new FileInputStream(FILE_NAME);
            ObjectInputStream ois = new ObjectInputStream(fis);
            liste = (ArrayList<Personne>) ois.readObject();
            String affiche = "";
            for (Personne personne : liste) {
                affiche += "\n" + personne.getNom() + " " + personne.getPrenom() + " " + personne.getNum();
            }
            response.getWriter().print(affiche);
            ois.close();
        } catch (Exception e) {
            e.printStackTrace();
        }*/
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
