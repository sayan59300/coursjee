package com.stock.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Produit {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String libelle;
    private double prix;
    private String reference;

    public Produit() {
    }

    public Produit(int id, String libelle, double prix, String image) {
        this.id = id;
        this.libelle = libelle;
        this.prix = prix;
        this.reference = image;
    }

    public int getId() {
        return id;
    }

    public Produit setId(int id) {
        this.id = id;
        return this;
    }

    public String getLibelle() {
        return libelle;
    }

    public Produit setLibelle(String libelle) {
        this.libelle = libelle;
        return this;
    }

    public double getPrix() {
        return prix;
    }

    public Produit setPrix(double prix) {
        this.prix = prix;
        return this;
    }

    public String getReference() {
        return reference;
    }

    public Produit setReference(String reference) {
        this.reference = reference;
        return this;
    }
}
