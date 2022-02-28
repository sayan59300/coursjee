package com.stock.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class Produit {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String libelle;
    private double prix;
    private String reference;
    @OneToMany(cascade = {CascadeType.PERSIST, CascadeType.REMOVE}, mappedBy = "produit", fetch = FetchType.EAGER)
    private List<ProduitCommande> produitsCommande = new ArrayList<ProduitCommande>();

    public Produit() {
    }

    public Produit(int id, String libelle, double prix, String reference, List<ProduitCommande> produitsCommande) {
        this.id = id;
        this.libelle = libelle;
        this.prix = prix;
        this.reference = reference;
        this.produitsCommande = produitsCommande;
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

    public String getReference() {
        return reference;
    }

    public void setReference(String reference) {
        this.reference = reference;
    }

    public List<ProduitCommande> getProduitsCommande() {
        return produitsCommande;
    }

    public Produit withId(int id) {
        this.id = id;
        return this;
    }

    public Produit withLibelle(String libelle) {
        this.libelle = libelle;
        return this;
    }

    public Produit withPrix(double prix) {
        this.prix = prix;
        return this;
    }

    public Produit withReference(String reference) {
        this.reference = reference;
        return this;
    }
}
