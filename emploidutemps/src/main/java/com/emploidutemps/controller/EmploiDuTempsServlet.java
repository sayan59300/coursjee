package com.emploidutemps.controller;

import com.emplodutemps.model.Creneau;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.ArrayList;

@WebServlet(name = "emploiDuTemps", value = "/emploi-du-temps")
public class EmploiDuTempsServlet extends HttpServlet {
    private static final String FILE_NAME = "C:\\Users\\sayan593\\Documents\\semaine.txt";

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }


    /**
     * recupère le contenu du fichier dans une liste
     *
     * @return ArrayList<Creneau>
     */
    private ArrayList<Creneau> getAncienneListe() {
        ArrayList<Creneau> ancienneliste = new ArrayList<Creneau>();
        try {
            FileInputStream oldFile = new FileInputStream(FILE_NAME);
            ObjectInputStream oldObject = new ObjectInputStream(oldFile);
            ancienneliste = (ArrayList<Creneau>) oldObject.readObject();
            oldObject.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ancienneliste;
    }

    /**
     * serialize la nouvelle liste
     */
    private void serializeNouvelleListe(ArrayList<Creneau> nouvelleListe) {
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