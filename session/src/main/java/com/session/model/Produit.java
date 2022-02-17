package com.session.model;

import java.io.Serializable;

/**
 * Model Produit
 */
public class Produit implements Serializable {
    private static final long serialVersionUID = 3088361603638804314L;
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
        this.image = image;
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
        this.image = image;
    }

}
