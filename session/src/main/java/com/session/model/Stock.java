package com.session.model;

import java.io.*;
import java.util.ArrayList;

public class Stock implements Serializable {
    private static final long serialVersionUID = 5169338465992335603L;
    private static final String FILE_NAME = "C:\\Users\\sayan593\\Documents\\produits.txt";

    /**
     * Ajoute un produit à la liste
     */
    public static void ajouterProduit(Produit produit) {
        ArrayList<Produit> liste = getListe();
        liste.add(produit);
        serializeNouvelleListe(liste);
    }

    /**
     * Retourne la liste des produits stockés dans le fichier
     *
     * @return
     */
    public static ArrayList<Produit> getProduits() {
        return getListe();
    }

    /**
     * Recupère le contenu du fichier dans une liste
     *
     * @return ArrayList<Produit>
     */
    private static ArrayList<Produit> getListe() {
        ArrayList<Produit> liste = new ArrayList<Produit>();
        try {
            FileInputStream oldFile = new FileInputStream(FILE_NAME);
            ObjectInputStream oldObject = new ObjectInputStream(oldFile);
            liste = (ArrayList<Produit>) oldObject.readObject();
            oldObject.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return liste;
    }

    /**
     * serialize la nouvelle liste
     */
    private static void serializeNouvelleListe(ArrayList<Produit> nouvelleListe) {
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
