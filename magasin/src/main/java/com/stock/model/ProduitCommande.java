package com.stock.model;

import javax.persistence.*;

@Entity
public class ProduitCommande {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @ManyToOne
    private Commande commande;
    @ManyToOne
    private Produit produit;
    private int quantite;
    private double prixTotal;

    public ProduitCommande() {
    }

    public ProduitCommande(int id, Commande commande, Produit produit, int quantite, double prixTotal) {
        this.id = id;
        this.commande = commande;
        this.produit = produit;
        this.quantite = quantite;
        this.prixTotal = prixTotal;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Commande getCommande() {
        return commande;
    }

    public void setCommande(Commande commande) {
        this.commande = commande;
    }

    public Produit getProduit() {
        return produit;
    }

    public void setProduit(Produit produit) {
        this.produit = produit;
    }

    public int getQuantite() {
        return quantite;
    }

    public void setQuantite(int quantite) {
        this.quantite = quantite;
    }

    public double getPrixTotal() {
        return prixTotal;
    }

    public void setPrixTotal() {
        prixTotal = this.produit.getPrix() * this.quantite;
    }

    public ProduitCommande withId(int id) {
        this.id = id;
        return this;
    }

    public ProduitCommande withCommande(Commande commande) {
        this.commande = commande;
        return this;
    }

    public ProduitCommande withProduit(Produit produit) {
        this.produit = produit;
        return this;
    }

    public ProduitCommande withQuantite(int quantite) {
        this.quantite = quantite;
        return this;
    }

    public ProduitCommande withPrixTotal(double prixTotal) {
        this.prixTotal = prixTotal;
        return this;
    }
}
