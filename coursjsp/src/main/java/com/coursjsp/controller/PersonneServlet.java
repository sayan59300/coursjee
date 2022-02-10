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
        if (operation.equals("ajout")) {
            this.getServletContext().getRequestDispatcher("/WEB-INF/personne/ajoutPersonne.jsp").forward(request, response);
        } else if (operation.equals("modif")) {
            p.setNom((String) request.getAttribute("nom"));
            p.setPrenom((String) request.getAttribute("prenom"));
            p.setNum((int) request.getAttribute("numero"));
            for (Personne personne : liste) {
                if (personne.getNum() == (int) request.getAttribute("numero")) {
                    personne.setPrenom((String) request.getAttribute("nom"));
                    personne.setPrenom((String) request.getAttribute("prenom"));
                }
            }
        } else if (operation.equals("suppr")) {
            liste.removeIf(personne -> personne.getNum() == (int) request.getAttribute("numero"));
        }

        //sérialiser la nouvelle liste
        serializeNouvelleListe(liste);

        //affichage
        if (operation.equals("lister")){
            try {
                FileInputStream fis = new FileInputStream(FILE_NAME);
                ObjectInputStream ois = new ObjectInputStream(fis);
                liste = (ArrayList<Personne>) ois.readObject();
                String affiche = "<table>\n" +
                        "    <tr>\n" +
                        "        <th>Numéro</th>\n" +
                        "        <th>Nom</th>\n" +
                        "        <th>Prénom</th>\n" +
                        "    </tr>";
                for (Personne personne : liste) {
                    affiche += "<tr>\n" +
                            "        <td>" + personne.getNum() + "</td>\n"+
                            "        <td>" + personne.getNom() + "</td>\n" +
                            "        <td>" + personne.getPrenom() + "</td>\n" +
                            "    </tr>";
                }
                affiche += "\n" +
                        "</table>";
                System.out.print(affiche);
                request.setAttribute("tableau", affiche);
                this.getServletContext().getRequestDispatcher("/WEB-INF/personne/listePersonnes.jsp").forward(request, response);
                ois.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String operation = request.getParameter("operation");
        ArrayList<Personne> liste = new ArrayList<Personne>();
        Personne p = new Personne();

        liste = getAncienneListe();

        //traitement en fonction de l'opération
        if (request.getParameter("enregistrer").equals("envoyer")) {
            p.setNom((String) request.getParameter("nom"));
            p.setPrenom((String) request.getParameter("prenom"));
            p.setNum(Integer.parseInt(request.getParameter("numero")));
            liste.add(p);
            serializeNouvelleListe(liste);
            this.getServletContext().getRequestDispatcher("/WEB-INF/personne/listePersonnes.jsp").forward(request, response);
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
