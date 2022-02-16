package com.session.model;

import java.io.*;
import java.util.ArrayList;

/**
 * Model Produit
 */
public class Produit implements Serializable {
    private static final String PATH = "C:\\Users\\sayaj\\Documents\\image-session\\";
    private static final String FILE_NAME = "C:\\Users\\sayaj\\Documents\\produits.txt";
    private int id;
    private String libelle;
    private double prix;
    private String image;

    public Produit() {
    }

    public Produit(int id, String libelle, double prix, String image) {
        this.id = id;
        this.libelle = libelle;
        this.prix = prix;
        this.image = PATH + image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLibelle() {
        return libelle;
    }

    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }

    public double getPrix() {
        return prix;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = PATH + image;
    }

    /**
     * Retourne la liste des produits stockés dans le fichier
     *
     * @return
     */
    public ArrayList<Produit> getProduits() {
        return getListe();
    }

    /**
     * Ajoute un produit à la liste
     */
    public void ajouterProduit() {
        ArrayList<Produit> liste = getListe();
        liste.add(this);
        serializeNouvelleListe(liste);
    }

    /**
     * Recupère le contenu du fichier dans une liste
     *
     * @return ArrayList<Produit>
     */
    private ArrayList<Produit> getListe() {
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
    private void serializeNouvelleListe(ArrayList<Produit> nouvelleListe) {
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
