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

        String operation = request.getParameter("operation");
        ArrayList<Personne> liste = new ArrayList<Personne>();
        Personne p = new Personne();

        liste = getAncienneListe();

        //traitement en fonction de l'opération
        if (operation.equals("menu")) {
            this.getServletContext().getRequestDispatcher("/WEB-INF/personne/menuPersonne.jsp").forward(request, response);
        } else if (operation.equals("ajout")) {
            this.getServletContext().getRequestDispatcher("/WEB-INF/personne/ajoutPersonne.jsp").forward(request, response);
        } else if (operation.equals("modification")) {
            for (Personne personne : liste) {
                if (personne.getNum() == Integer.parseInt(request.getParameter("numero"))){
                    request.setAttribute("personne", personne);
                }
            }
            this.getServletContext().getRequestDispatcher("/WEB-INF/personne/modifPersonne.jsp").forward(request, response);
        } else if (operation.equals("suppression")) {
            liste.removeIf(personne -> personne.getNum() == Integer.parseInt(request.getParameter("numero")));
            this.getServletContext().getRequestDispatcher("/WEB-INF/personne/menuPersonne.jsp").forward(request, response);
        } else if (operation.equals("lister")){
            try {
                FileInputStream fis = new FileInputStream(FILE_NAME);
                ObjectInputStream ois = new ObjectInputStream(fis);
                liste = (ArrayList<Personne>) ois.readObject();
                request.setAttribute("liste", liste);
                this.getServletContext().getRequestDispatcher("/WEB-INF/personne/listePersonnes.jsp").forward(request, response);
                ois.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        //sérialiser la nouvelle liste
        serializeNouvelleListe(liste);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String operation = request.getParameter("operation");
        ArrayList<Personne> liste = new ArrayList<Personne>();
        Personne p = new Personne();

        liste = getAncienneListe();

        //traitement en fonction de l'opération
        if (operation.equals("ajout")) {
            p.setNom((String) request.getParameter("nom"));
            p.setPrenom((String) request.getParameter("prenom"));
            p.setNum(Integer.parseInt(request.getParameter("numero")));
            liste.add(p);
            serializeNouvelleListe(liste);
            this.getServletContext().getRequestDispatcher("/WEB-INF/personne/menuPersonne.jsp").forward(request, response);
        }else if (operation.equals("modifier")) {
            p.setNom((String) request.getParameter("nom"));
            p.setPrenom((String) request.getParameter("prenom"));
            p.setNum(Integer.parseInt(request.getParameter("numero")));
            for (Personne personne : liste) {
                if(personne.getNum() == p.getNum()) {
                    personne.setNum(p.getNum());
                    personne.setNom(p.getNom());
                    personne.setPrenom(p.getPrenom());
                }
            }
            serializeNouvelleListe(liste);
            this.getServletContext().getRequestDispatcher("/WEB-INF/personne/menuPersonne.jsp").forward(request, response);
        }

    }

    /**
     * recupère le contenu du fichier dans une liste
     * @return ArrayList<Personne>
     */
    private ArrayList<Personne> getAncienneListe() {
        ArrayList<Personne> ancienneliste = new ArrayList<Personne>();
        try {
            FileInputStream oldFile = new FileInputStream(FILE_NAME);
            ObjectInputStream oldObject = new ObjectInputStream(oldFile);
            ancienneliste = (ArrayList<Personne>) oldObject.readObject();
            oldObject.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ancienneliste;
    }

    /**
     * serialize la nouvelle liste
     */
    private void serializeNouvelleListe(ArrayList<Personne> nouvelleListe) {
        try {
            FileOutputStream file = new FileOutputStream(FILE_NAME);
            ObjectOutputStream object = new ObjectOutputStream(file);
            object.writeObject(nouvelleListe);
            object.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
